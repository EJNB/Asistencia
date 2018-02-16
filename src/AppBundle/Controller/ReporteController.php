<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Reporte;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Validator\Constraints\DateTime;
use PhpImap\Mailbox as ImapMailbox;
use PhpImap\IncomingMail;
use PhpImap\IncomingMailAttachment;

/**
 * Reporte controller.
 *
 * @Route("reporte")
 */
class ReporteController extends Controller
{
    /**
     * Lists all reporte entities
     *
     * @Route("/", options={"expose"=true}, name="reporte_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
        //lo primero seria crear todos los reportes q esten en inbox de asistencia@cubanacan.tur.cu
        $em = $this->getDoctrine()->getManager();

        $repositoy = $em->getRepository('AppBundle:Reporte');
        $query = $repositoy->createQueryBuilder('r')
            ->orderBy('r.fechaCreacion','DESC')
            ->getQuery();
        $reportes = $query->getResult();

        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $reportes, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            10/*limit per page*/
        );

        return $this->render('reporte/index.html.twig', array(
            'pagination' => $pagination
        ));
    }

    /**
     * Lista de reportes pendientes
     *
     * @Route("/pendientes", options={"expose"=true}, name="reportes_pendientes")
     * @Method("GET")
     */
    public function reportesPendienteAction(Request $request)
    {
        //lo primero seria crear todos los reportes q esten en inbox de asistencia@cubanacan.tur.cu
        $em = $this->getDoctrine()->getManager();

        $mailbox = new ImapMailbox('{10.104.190.5:995/pop3/ssl/novalidate-cert}','asistencia@cubanacan.tur.cu','Cubanacan123');

        $mailsIds = $mailbox->searchMailbox('ALL');

        for($i=0;$i<$mailbox->countMails();$i++){
            $mail = $mailbox->getMail($mailsIds[$i]);
            //si no viene de everyone@cubanacan.tur.cu
            if(strpos($mail->subject,"Everyone")==false){//si no es un everyone
                $reporte = new Reporte();
                $reporte->setFechaCreacion(new \DateTime($mail->date));
                $reporte->setEstado('Pendiente');
                $reporte->setEncabezado($mail->subject);
                $reporte->setDescripcion(strip_tags($mail->textPlain,'<br>'));
                $reporte->setRemitente($mail->fromName."\n ".$mail->fromAddress);
                $em->persist($reporte);
                $em->flush();
                $mailbox->deleteMail($mail->id);//lo marco para luego eliminarlo
    //            var_dump($mail->fromName);
    //            echo "\n\n\n\n\n";
    //        var_dump($mail->getAttachments());
            }else{//si es un everyone
                $mailbox->deleteMail($mail->id);
            }
        }
        $mailbox->expungeDeletedMails();

        $reportes = $em->getRepository('AppBundle:Reporte')->findBy(
            array('estado' => 'Pendiente'),
            array('fechaCreacion' => 'DESC')
            );

        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $reportes, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            10/*limit per page*/
        );

        return $this->render('reporte/reportes_pendientes.html.twig', array(
            'pagination' => $pagination,
        ));
    }

    /**
     * Lista de reportes pendientes
     *
     * @Route("/resueltos", options={"expose"=true}, name="reportes_resueltos")
     * @Method("GET")
     */
    public function reportesResuestosAction(Request $request)
    {
        //lo primero seria crear todos los reportes q esten en inbox de asistencia@cubanacan.tur.cu
        $em = $this->getDoctrine()->getManager();
        $reportes = $em->getRepository('AppBundle:Reporte')->findBy(
            array('estado' => 'Resuelto'),
            array('fechaCreacion' => 'DESC')//orden seria de los recientes hasta los mas antiguos
        );

        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $reportes, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            10/*limit per page*/
        );

        return $this->render('reporte/reportes_resueltos.html.twig', array(
            'pagination' => $pagination,
        ));
    }

    /**
     * Lists all reporte entities
     *
     * @Route("/{id}/resolver", name="reporte_resolver")
     * @Method({"GET", "POST"})
     */
    public function resolverAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $reporte = $em->getRepository('AppBundle:Reporte')->find($id);
        $reporte->setEstado('Resuelto');
        $reporte->setFechaRealizacion(new \DateTime('now'));
        $user = $this->get('security.token_storage')->getToken()->getUser()->getId();
        $user = $em->getRepository('AppBundle:Usuario')->find($user);
        $reporte->setUsuario($user);
        $em->flush();
        return $this->redirectToRoute('reportes_pendientes');
    }


    /**
     * Creates a new reporte entity.
     *
     * @Route("/new", name="reporte_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $reporte = new Reporte();
        $form = $this->createForm('AppBundle\Form\ReporteType', $reporte);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($reporte);
            $em->flush();

            return $this->redirectToRoute('reporte_index');
        }

        return $this->render('reporte/new.html.twig', array(
            'reporte' => $reporte,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a reporte entity.
     *
     * @Route("/{id}", name="reporte_show")
     * @Method("GET")
     */
    public function showAction(Reporte $reporte)
    {
        return $this->render('reporte/show.html.twig', array(
            'reporte' => $reporte,
        ));
    }
}

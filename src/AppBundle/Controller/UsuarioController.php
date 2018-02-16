<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Usuario;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

/**
 * Usuario controller.
 *
 * @Route("usuario")
 */
class UsuarioController extends Controller
{
    /**
     * Lists all usuario entities.
     *
     * @Route("/", name="usuario_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $usuarios = $em->getRepository('AppBundle:Usuario')->findAll();

        return $this->render('usuario/index.html.twig', array(
            'usuarios' => $usuarios,
        ));
    }

    /**
     * Creates a new usuario entity.
     *
     * @Route("/new", name="usuario_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $usuario = new Usuario();
        $form = $this->createForm('AppBundle\Form\UsuarioType', $usuario);
        $form->add('password','password',array('label'=>'Contraseña'));
        $form->add('password','repeated',array(
            'type' => 'password',
            'invalid_message' => 'Los campos deben coincidir',
            'options' => array('attr' => array('class' => 'password-field')),
            'required' => true,
            'first_options' => array('label' => 'Contraseña'),
            'second_options' => array('label' => 'Repetir Contraseña'),
        ));

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $password = $form->get('password')->getData();
            $encoder = $this->container->get('security.password_encoder');//obtengo el servicio
            $encoded = $encoder->encodePassword($usuario, $password);
            $usuario->setPassword($encoded);
            $em->persist($usuario);
            $em->flush();

            return $this->redirectToRoute('usuario_index');
        }

        return $this->render('usuario/new.html.twig', array(
            'usuario' => $usuario,
            'form' => $form->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing usuario entity.
     *
     * @Route("/{id}/edit", name="usuario_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Usuario $usuario)
    {
//        $deleteForm = $this->createDeleteForm($usuario);
        $editForm = $this->createForm('AppBundle\Form\UsuarioType', $usuario);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('usuario_index');
        }

        return $this->render('usuario/edit.html.twig', array(
            'usuario' => $usuario,
            'edit_form' => $editForm->createView(),
//            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a usuario entity.
     *
     * @Route("/{id}", name="usuario_delete")
     */
    public function deleteAction(Request $request, Usuario $usuario)
    {
        $em = $this->getDoctrine()->getManager();
        $em->remove($usuario);
        $em->flush();
        return $this->redirectToRoute('usuario_index');
    }

    /**
     * Change pass a usuario entity.
     *
     * @Route("/change_password/{id}/", name="change_password")
     * @Method("POST")
     */
    public function changePassAction(Request $request,$id){

        $em = $this->getDoctrine()->getManager();
        $user = $em->getRepository('AppBundle:Usuario')->find($id);

        $encoder = $this->container->get('security.password_encoder');//obtengo el servicio
        $encoded = $encoder->encodePassword($user, $request->request->get('second_password'));
        $user->setPassword($encoded);
        $em->flush();
        return $this->redirect($request->request->get('url'));
    }

    //este metodo tomara todos los reportes echos por el usuario logueado
    public function misreportesAction(Request $request){
        $em = $this->getDoctrine()->getManager();
        $user = $em->getRepository('AppBundle:Usuario')->find($this->get('security.token_storage')->getToken()->getUser()->getId());
        $mis_reportes = $em->getRepository('AppBundle:Reporte')->findBy(array(
            'usuario' => $user->getId(),
        ));

        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $mis_reportes, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            10/*limit per page*/
        );

        return $this->render('reporte/index.html.twig',array(
            'pagination' => $pagination
        ));
    }
}
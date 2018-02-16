<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UsuarioType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name','text',array(
                'label' => 'Nombre y Apellidos'
            ))
            ->add('email')
            ->add('username','text',array(
                'label' => 'Usuario'
            ))
//            ->add('password')
            ->add('isActive','checkbox',array(
                'label' => 'Activo',
                'required' => false,
                'attr' => array('class'=> 'switch')
            ))
            ->add('roles','entity',array(
                'class' => 'AppBundle\Entity\Role',
                'label' => 'Seleccionar roles',
                'multiple' => true,
                'expanded' => true,
                'attr' => array('required' => true, 'class'=> 'switch')
            ));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Usuario'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_usuario';
    }


}

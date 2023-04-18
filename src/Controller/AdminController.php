<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Categories;
use App\Form\CategoriesType;
use App\Form\EditProfileType;

/**
 * @Route("/user", name="user_")
 * @package App\Controller
 */
class AdminController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(Request $request): Response
    {
        $user = $this->getUser();

        $form = $this->createForm(EditProfileType::class);
        $form->handlerequest($request);

        return $this->render('admin/index.html.twig', [
            'controller_name' => 'AdminController',
        ]);
    }

    /**
     * @Route("/categories/add", name="categories_add")
     */
    public function addCategorie(Request $request): Response
    {
        $categorie = new Categories;
        $form = $this->createForm(CategoriesType::class, $categorie);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($categorie);
            $em->flush();
            $this->addFlash('message', 'Catégorie bien ajouté !');
            return $this->redirectToRoute('admin_home');
        }

        return $this->render('admin/categories/add.html.twig', [
            'form' => $form->createView()
        ]);
    }
}

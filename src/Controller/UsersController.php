<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\Tricks;
use App\Entity\Images;
use App\Form\TricksType;
use App\Form\EditProfileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EntityType;

/**
 * @Route("/users", name="users_")
 */
class UsersController extends AbstractController
{
	/**
	 * @Route("/profile", name="home")
	 */
	public function index(): Response
	{
		return $this->render('users/index.html.twig', []);
	}


	/**
	 * @Route("/tricks/add", name="tricks_add")
	 */
	public function addTricks(Request $request): Response
	{
		$trick = new Tricks;

		$form = $this->createForm(TricksType::class, $trick);

		$form->handleRequest($request);
		if ($form->isSubmitted() && $form->isValid()) {
			$trick->setUser($this->getUser());

			$em = $this->getDoctrine()->getManager();
			$em->persist($trick);
			$em->flush();
			$this->addFlash('message', 'Trick ajouter à la bibliothèque !');
			return $this->redirectToRoute('app_home');
		}

		return $this->render('users/tricks/add.html.twig', [
			'form' => $form->createView(),
		]);
	}

	/**
	 * @Route("/profile/edit", name="profile_edit")
	 */
	public function editProfile(Request $request): Response
	{
		$user = $this->getUser();
		$form = $this->createForm(EditProfileType::class, $user);

		$form->handleRequest($request);
		if ($form->isSubmitted() && $form->isValid()) {

			$em = $this->getDoctrine()->getManager();
			$em->persist($user);
			$em->flush();
			$this->addFlash('message', 'Profil mis à jour');
			return $this->redirectToRoute('users');
		}

		return $this->render('users/users/editprofile.html.twig', [
			'form' => $form->createView(),
		]);
	}
}

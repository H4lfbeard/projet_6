<?php

namespace App\Controller;

use App\Entity\Tricks;
use App\Entity\Images;
use App\Entity\Messages;
use App\Entity\Users;
use App\Entity\Videos;
use App\Entity\Categories;
use App\Form\TricksType;
use App\Form\MessagesType;
use App\Form\VideosType;
use App\Repository\TricksRepository;
use App\Repository\MessagesRepository;
use App\Repository\UsersRepository;
use App\Repository\VideosRepository;
use App\Repository\CategoriesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Validator\Constraints\DateTime;

/**
 * @Route("/tricks")
 */
class TricksController extends AbstractController
{
    /**
     * @Route("/", name="app_tricks_index", methods={"GET"})
     */
    public function index(TricksRepository $tricksRepository, Request $request): Response
    {

        return $this->render('main/index.html.twig', [
            'tricks' => $tricksRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="app_tricks_new", methods={"GET", "POST"})
     */
    public function new(Request $request, TricksRepository $tricksRepository): Response
    {
        // Get the currently logged in user
        $user = $this->getUser();

        $trick = new Tricks();
        $video = new Videos();

        // Set the user ID
        $trick->setUser($this->getUser());

        $form = $this->createForm(TricksType::class, $trick);
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {
            //On récupère les images transmises
            $images = $form->get('images')->getData();

            // On boucle sur les images
            foreach ($images as $image) {
                // On génère un nouveau nom de fichier
                $file = md5(uniqid()) . '.' . $image->guessExtension();

                // On copie le fichier dans le dossier uploads
                $image->move(
                    $this->getParameter('images_directory'),
                    $file
                );

                // On stocke l'image (son nom) dans la BDD
                $img = new Images();
                $img->setTitle($file);
                $trick->addImage($img);

                // // Set the user ID
                // $trick->setUser($this->getUser());
            }

            //On récupère les videos transmises
            $videos = $form->get('videos')->getData();
            foreach ($videos as $video) {
                $video->setTrick($trick);

                $trick->getVideos()->add($video);
            }

            $tricksRepository->add($trick, true);

            $this->addFlash('success', 'Nouveau trick ajouté à la liste !');
            return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('tricks/new.html.twig', [
            'trick' => $trick,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{slug}-{id}", name="app_tricks_show", methods={"GET", "POST"}, requirements={"slug": "[a-z0-9\-]*"})
     * @return void
     */
    public function show(Request $request, Tricks $trick, MessagesRepository $messagesRepository): Response
    {
        $user = $this->getUser();

        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $form->handlerequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $message->setTrick($trick);
            $message->setUser($user);

            $em = $this->getDoctrine()->getManager();
            $em->persist($message);
            $em->flush();

            $limit = 10;
            $page = (int)$request->query->get("page", 1);
            $messages = $messagesRepository->getPaginatedMessages($page, $limit, $trick);
            $total = $messagesRepository->getTotalMessages($trick);

            $this->addFlash('message', 'Votre commentaire à été bien enregistré');
            return $this->render('tricks/show.html.twig', [
                'trick' => $trick,
                'messages' => $messages,
                'page' => $page,
                'limit' => $limit,
                'total' => $total,
                'form' => $form->createView(),
            ]);
        }

        $limit = 10;
        $page = (int)$request->query->get("page", 1);
        $messages = $messagesRepository->getPaginatedMessages($page, $limit, $trick);
        $total = $messagesRepository->getTotalMessages($trick);


        return $this->render('tricks/show.html.twig', [
            'trick' => $trick,
            'messages' => $messages,
            'page' => $page,
            'limit' => $limit,
            'total' => $total,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{slug}-{id}/edit", name="app_tricks_edit", methods={"GET", "POST"}, requirements={"slug":
     *     "[a-z0-9\-]*"})
     */
    public function edit(Request $request, Tricks $trick, TricksRepository $tricksRepository): Response
    {
        $form = $this->createForm(TricksType::class, $trick);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $images = $form->get('images')->getData();

            foreach ($images as $image) {
                $file = md5(uniqid()) . '.' . $image->guessExtension();
                $image->move(
                    $this->getParameter('images_directory'),
                    $file
                );

                $img = new Images();
                $img->setTitle($file);
                $trick->addImage($img);
            }

            $tricksRepository->add($trick, true);

            $this->addFlash('success', 'Le trick à été mis à jour !');
            return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('tricks/edit.html.twig', [
            'trick' => $trick,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/delete/{id}", name="app_tricks_delete", methods={"POST", "DELETE"})
     */
    public function delete(Request $request, Tricks $trick, TricksRepository $tricksRepository): Response
    {

        if ($this->isCsrfTokenValid('delete' . $trick->getId(), $request->request->get('_token'))) {
            $tricksRepository->remove($trick, true);
        }

        return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
    }

    /**
     * @Route("/delete/image/{id}", name="app_tricks_delete_image", methods={"DELETE"})
     */
    public function deleteImage(Images $image, Request $request): Response
    {
        $data = json_decode($request->getContent(), true);

        $nom = $image->getTitle();
        unlink($this->getParameter('images_directory') . '/' . $nom);

        $em = $this->getDoctrine()->getManager();
        $em->remove($image);
        $em->flush();

        return new JsonResponse(['success' => 1]);
    }
}

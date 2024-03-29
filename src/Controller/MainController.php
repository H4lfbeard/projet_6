<?php

namespace App\Controller;

use App\Entity\Tricks;
use App\Entity\Categories;
use App\Entity\Images;
use App\Form\TricksType;
use App\Form\CategoriesType;
use App\Repository\TricksRepository;
use App\Repository\CategoriesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class MainController extends AbstractController
{
    /**
     * @Route("/", name="app_home")
     */
    public function index(
        TricksRepository $tricksRepository,
        CategoriesRepository $categoriesRepository,
        Request $request
    ): Response {

        $limit = 10;
        $page = (int)$request->query->get("page", 1);
        $tricks = $tricksRepository->getPaginatedTricks($page, $limit);
        $total = $tricksRepository->getTotalTricks();

        return $this->render('main/index.html.twig', compact('tricks', 'total', 'limit', 'page'));
    }
}

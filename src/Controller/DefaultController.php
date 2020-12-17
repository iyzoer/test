<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class DefaultController
 * @package App\Controller
 *
 * @Route("/api")
 */
class DefaultController
{
    /**
     * @Route("/ping")
     *
     * @return Response
     */
    public function index(): Response
    {
        return new Response('pong');
    }
}

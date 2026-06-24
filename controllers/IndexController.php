<?php


class IndexController
{
    public function index()
    {
        $title = "Welcome";

        require __DIR__ . '/../views/home.php';
    }
}
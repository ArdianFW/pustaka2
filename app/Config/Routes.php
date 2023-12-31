<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'LandingPageController::index');

$routes->group('admin', function ($routes) {
    $routes->get('dashboard', 'BukuController::index');
    $routes->get('buku', 'BukuController::index');
    $routes->get('detail_buku/(:segment)', 'DetailBukuController::index/$1');
    $routes->get('rating_buku', 'RatingBukuController::index');
});
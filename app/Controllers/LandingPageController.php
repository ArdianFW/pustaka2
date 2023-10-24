<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\LandingPageModel;

class LandingPageController extends BaseController
{
    public function index()
    {
        $model = new LandingPageModel();
        $data = [
            'title' => 'Your Landing Page Title',
            'content' => 'Welcome to your landing page content!',
        ];

        return view('landing_page/index', $data);
    }
}
<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\RatingBukuModel;

class RatingBukuController extends BaseController
{
    public function index()
    {
        // Mengambil data rating buku
        $ratingBukuModel = new RatingBukuModel();
        $ratings = $ratingBukuModel->findAll();

        // Kirim data ke view
        $data = [
            'page' => 'rating_buku/index',
            'ratings' => $ratings,
        ];

        return view('rating_buku/index', $data);
    }
}
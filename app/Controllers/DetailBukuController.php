<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\BukuModel;
use App\Models\KomentarBukuModel;
use App\Models\RatingBukuModel;
use App\Models\RatingKomentarModel;


class DetailBukuController extends BaseController
{
    public function index($isbn)
    {
        // Buat instance model buku dan rating komentar
        $bukuModel = new BukuModel();
        $ratingKomentarModel = new RatingKomentarModel();

        // Ambil data buku berdasarkan ISBN
        $buku = $bukuModel->getBookByISBN($isbn);

        // Ambil rating buku
        $ratingBuku = $ratingKomentarModel->getRatingByISBN($isbn);

        // Ambil komentar buku
        $komentarBuku = $ratingKomentarModel->getKomentarByISBN($isbn);

        // Kirim data ke view
        $data = [
            'buku' => $buku,
            'ratingBuku' => $ratingBuku,
            'komentarBuku' => $komentarBuku,
        ];

        return view('detail_buku/index', $data);
    }
}
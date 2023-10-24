<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\BukuModel;
use App\Models\RatingBukuModel;
use App\Models\KomentarBukuModel;

class BukuController extends BaseController
{
    public function index()
    {
        $bukuModel = new BukuModel();
        $data = [
            'page' => 'user/index',
            'buku' => $bukuModel->getBukuWithKategori(),
        ];
        return view('buku/index', $data);
    }

    public function search()
    {
        $bukuModel = new BukuModel();
        $keyword = $this->request->getVar('keyword');
        $data = [
            'page' => 'user/index',
            'buku' => $bukuModel->searchBuku($keyword),
        ];
        return view('buku/index', $data);
    }

    public function detail_buku($isbn) // Ganti nama method menjadi detail_buku
    {
        $bukuModel = new BukuModel();
        $ratingBukuModel = new RatingBukuModel();
        $komentarBukuModel = new KomentarBukuModel();

        $book = $bukuModel->getBookByISBN($isbn); // Ganti nama method menjadi getBookByISBN

        if (empty($book)) {
            // Handle the case where the book is not found.
            return redirect()->to(base_url('buku'));
        }

        // Fetch book's ratings and comments
        $ratings = $ratingBukuModel->getRatingsByISBN($isbn); // Ganti nama method menjadi getRatingsByISBN
        $comments = $komentarBukuModel->getCommentsByISBN($isbn); // Ganti nama method menjadi getCommentsByISBN

        $data = [
            'book' => $book,
            'ratings' => $ratings,
            'comments' => $comments,
        ];

        return view('detail_buku/index', $data);
    }
}
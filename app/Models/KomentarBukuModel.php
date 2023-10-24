<?php

namespace App\Models;

use CodeIgniter\Model;

class KomentarBukuModel extends Model
{
    protected $table = 'komentar_buku'; // Sesuaikan dengan nama tabel komentar buku di database Anda
    protected $primaryKey = 'ID_Rating'; // Sesuaikan dengan kunci utama yang sesuai
    protected $allowedFields = ['noktp', 'ISBN', 'Rating', 'Komentar'];

    // Buat method untuk mengambil rating berdasarkan ISBN buku
    public function getRatingByISBN($isbn)
    {
        return $this->where('ISBN', $isbn)->findAll();
    }

    // Buat method untuk mengambil komentar berdasarkan ISBN buku
    public function getKomentarByISBN($isbn)
    {
        return $this->select('Komentar')->where('ISBN', $isbn)->findAll();
    }
}
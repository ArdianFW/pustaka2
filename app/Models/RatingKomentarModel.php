<?php

namespace App\Models;

use CodeIgniter\Model;

class RatingKomentarModel extends Model
{
    protected $table = 'komentar_buku'; // Sesuaikan dengan nama tabel rating dan komentar di database Anda
    protected $primaryKey = 'id'; // Sesuaikan dengan kunci utama yang sesuai

    // Method untuk mendapatkan rating berdasarkan ISBN buku
    public function getRatingByISBN($isbn)
    {
        return $this->where('isbn', $isbn)->findAll();
    }

    // Method untuk mendapatkan komentar berdasarkan ISBN buku
    public function getKomentarByISBN($isbn)
    {
        return $this->select('komentar')->where('isbn', $isbn)->findAll();
    }
}
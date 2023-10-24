<?php

namespace App\Models;

use CodeIgniter\Model;

class RatingBukuModel extends Model
{
    protected $table = 'rating_buku'; // Adjust the table name according to your database
    protected $primaryKey = 'idbuku'; // Adjust if your primary key is different

    protected $allowedFields = ['idbuku', 'noktp', 'skor_rating', 'tgl_rating'];

    // You can add validation rules for the fields if needed
    protected $validationRules = [
        'idbuku' => 'required',
        'noktp' => 'required',
        'skor_rating' => 'required',
        'tgl_rating' => 'required',
    ];

    public function getRatingByISBN($isbn)
    {
    return $this->where('idbuku', $isbn)->findAll();
    }

    // public function calculateAverageRating($isbn)
    // {
    //     return $this->where('isbn', $isbn)->selectSum('skor_rating', 'total_rating')->get()->getRowArray();
    // }
    
    
    

}
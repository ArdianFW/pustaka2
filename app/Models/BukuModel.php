<?php

namespace App\Models;

use CodeIgniter\Model;

class BukuModel extends Model
{
    protected $table = 'buku'; // Name of the 'buku' table
    protected $primaryKey = 'isbn'; // Assuming ISBN is the primary key
    protected $allowedFields = ['isbn', 'judul', 'kategori','idkategori', 'pengarang', 'penerbit', 'tahun', 'stok', 'stok_tersedia'];



    public function getBukuWithKategori()
    {
        $builder = $this->db->table($this->table);
        $builder->select('buku.*, kategori.nama as kategori');
        $builder->join('kategori', 'kategori.idkategori = buku.idkategori');
        return $builder->get()->getResultArray();
    }

    public function searchBuku($keyword)
    {
        $builder = $this->db->table($this->table);
        $builder->select('buku.*, kategori.nama as kategori');
        $builder->join('kategori', 'kategori.idkategori = buku.idkategori');
        $builder->like('buku.judul', $keyword);
        $builder->orLike('buku.pengarang', $keyword);
        $builder->orLike('buku.penerbit', $keyword);
        $builder->orLike('buku.tahun', $keyword);
        $builder->orLike('buku.isbn', $keyword);
        return $builder->get()->getResultArray();
    }

    public function getBookByISBN($isbn)
    {
        $this->select('buku.*, kategori.nama as kategori');
        $this->join('kategori', 'kategori.idkategori = buku.idkategori');
        $result = $this->where('isbn', $isbn)->first();
        return $result;
    }


    public function getRatingKomentar($idBuku)
    {
        return $this->where('idbuku', $idBuku)->findAll();
    }

    public function getRatingByISBN($isbn)
    {
        return $this->where('idbuku', $isbn)->findAll();
    }
    
}
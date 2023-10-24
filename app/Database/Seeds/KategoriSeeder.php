<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class KategoriSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'nama' => 'Fiksi',
            ],
            [
                'nama' => 'Non-Fiksi',
            ],
            [
                'nama' => 'Sains',
            ],
            // Tambahkan data kategori lainnya sesuai kebutuhan
        ];

        // Insert data kategori ke tabel 'kategori'
        $this->db->table('kategori')->insertBatch($data);
    }
}
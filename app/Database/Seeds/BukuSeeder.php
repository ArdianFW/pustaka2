<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class BukuSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 100; $i++) { // Sesuaikan jumlah data yang Anda inginkan
            $data = [
                'isbn' => $faker->isbn13,
                'pengarang' => $faker->name,
                'judul' => $faker->sentence(5),
                'idkategori' => $faker->numberBetween(1, 10),
                'penerbit' => $faker->company,
                'kota_terbit' => $faker->city,
                'editor' => $faker->name,
                'file_gambar' => $faker->imageUrl(),
                'tgl_insert' => $faker->dateTimeThisYear()->format('Y-m-d H:i:s'),
                'tgl_update' => $faker->dateTimeThisYear()->format('Y-m-d H:i:s'),
                'stok' => $faker->numberBetween(1, 100),
                'stok_tersedia' => $faker->numberBetween(1, 100),
            ];

            $this->db->table('buku')->insert($data);
        }
    }
}
<?php

namespace App\Models;

use CodeIgniter\Model;

class LandingPageModel extends Model
{
    protected $table = ''; // Add the name of your table if needed
    protected $primaryKey = 'id'; // Your primary key field, e.g., 'id'
    protected $returnType = 'array';
    protected $useTimestamps = true;
    protected $allowedFields = ['title', 'content', 'created_at', 'updated_at'];
}
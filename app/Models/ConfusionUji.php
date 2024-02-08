<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConfusionUji extends Model
{
    use HasFactory;
    protected $table = 'confusionuji';
    protected $fillable = ['akurasi', 'prodi'];
}

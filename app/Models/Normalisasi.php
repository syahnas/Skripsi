<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Normalisasi extends Model
{
    use HasFactory;
    protected $table = 'normalisasi';
    protected $fillable = ['id', 'nama', 'mtk', 'bindo', 'bing', 'ipa',  'senbud', 'psikotes', 'minat', 'prodi'];
    protected $guarded = [];
}

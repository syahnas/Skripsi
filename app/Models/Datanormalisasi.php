<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Normalisasi extends Model
{
    use HasFactory;
    protected $table = "normalisasi";
    protected $primaryKey = "id";
    protected $fillable = ['id', 'nama', 'mtk', 'bindo', 'bing', 'ipa', 'psikotes', 'minat', 'prodi', 'senbud'];

    public $incrementing = false;
    protected $keyType = 'string';
}

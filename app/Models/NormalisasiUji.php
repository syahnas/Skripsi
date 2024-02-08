<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NormalisasiUji extends Model
{
    use HasFactory;
    protected $table = 'normalisasiuji';
    protected $primaryKey = "nrm";
    protected $fillable = ['nama', 'mtk', 'bindo', 'bing', 'ipa', 'senbud', 'psikotes', 'prodi'];
}

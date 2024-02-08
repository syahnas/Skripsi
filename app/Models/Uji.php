<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Uji extends Model
{
    use HasFactory;
    protected $table = 'uji';
    protected $primaryKey = "nrm";
    protected $fillable = ['nama', 'mtk', 'bindo', 'bing', 'ipa', 'senbud', 'psikotes', 'prodi'];
}

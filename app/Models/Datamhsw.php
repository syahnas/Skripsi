<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Datamhsw extends Model
{
    use HasFactory;
    protected $table = 'datamhsw';
    protected $fillable = ['no_pnd', 'nama', 'mtk', 'bindo', 'bing', 'ipa','senbud', 'psikotes', 'minat', 'jurusan'];
    protected $guarded = [];
}

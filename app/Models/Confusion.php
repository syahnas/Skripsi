<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Confusion extends Model
{
    use HasFactory;
    protected $table = "confusion";
    protected $primaryKey = "prodi";
    protected $fillable = ['akurasi'];

    public $incrementing = false;
    protected $keyType = 'string';
}

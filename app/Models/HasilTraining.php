<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HasilTraining extends Model
{
    use HasFactory;
    protected $table = "hasiltraining";
    protected $primaryKey = "nrm";
    protected $fillable = ['nrm', 'nama', 'prodi'];

    public $incrementing = false;
    protected $keyType = 'string';
}

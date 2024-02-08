<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HasilUji extends Model
{
    use HasFactory;
    protected $table = 'hasiluji';
    protected $primaryKey = "nrm";
    protected $fillable = ['nama', 'prodi'];
}

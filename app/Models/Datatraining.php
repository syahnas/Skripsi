<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Datatraining extends Model
{
    use HasFactory;
    protected $table = "datatraining";
    protected $primaryKey = "nrm";
    protected $fillable = ['nrm', 'nama', 'mtk', 'bindo', 'bing', 'ipa', 'senbud', 'psikotes', 'prodi'];

    public $incrementing = false;
    protected $keyType = 'string';
}

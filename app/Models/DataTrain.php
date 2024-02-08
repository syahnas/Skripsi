<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataTrain extends Model
{
    use HasFactory;
    protected $table = "datatrain";
    protected $primaryKey = "nrm";
    protected $fillable = ['nrm', 'nama', 'mtk', 'bindo', 'bing', 'ipa', 'psikotes', 'prodi', 'senbud'];

    public $incrementing = false;
    protected $keyType = 'string';
}

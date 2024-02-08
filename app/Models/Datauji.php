<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Hasil;


class Datauji extends Model
{
    use HasFactory;
    protected $table = "datauji";
    protected $primaryKey = "id";
    protected $fillable = ['id', 'nama', 'mtk', 'bindo', 'bing', 'ipa', 'senbud', 'psikotes'];

    public function hasil()
    {
        return $this->hasMany(Hasil::class);
    }
}

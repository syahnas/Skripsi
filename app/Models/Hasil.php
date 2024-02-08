<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hasil extends Model
{
    use HasFactory;
    protected $table = 'hasil';
    protected $primaryKey = "id_hasil";
    protected $fillable = ['id_datauji', 'hasil_prodi'];
    protected $guarded = [];

    public function datauji()
    {
        return $this->belongsTo(Datauji::class);
    }
}

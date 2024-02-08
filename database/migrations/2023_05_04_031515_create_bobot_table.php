<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('bobot', function (Blueprint $table) {
            $table->id();
            $table->string('jurusan');
            $table->integer('bobot');
            $table->timestamps();
        });

        DB::table('bobot')->insert([
            ['jurusan'=>'S1 Teknik Sipil', 'bobot'=>0],
            ['jurusan'=>'S1 Informatika', 'bobot'=>1],
            ['jurusan'=>'S1 Arsitektur', 'bobot'=>2],
            ['jurusan'=>'S1 Perencanaan Wilayah dan Kota', 'bobot'=>3],
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bobot');
    }
};

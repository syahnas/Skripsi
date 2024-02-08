<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('atribut', function (Blueprint $table) {
            $table->id();
            $table->string('kode');
            $table->string('nama');
            $table->timestamps();
        });

        DB::table('atribut')->insert([
            ['kode'=>'A1', 'nama'=>'Nilai Matematika'],
            ['kode'=>'A2', 'nama'=>'Nilai Bahasa Indonesia'],
            ['kode'=>'A3', 'nama'=>'Nilai Bahasa Inggris'],
            ['kode'=>'A4', 'nama'=>'Nilai Ilmu Pengetahuan Alam'],
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('atribut');
    }
};

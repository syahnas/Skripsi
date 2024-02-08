<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('normalisasi', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->float('mtk');
            $table->float('bindo');
            $table->float('bing');
            $table->float('ipa');
            $table->float('normalized_mtk');
            $table->float('normalized_bindo');
            $table->float('normalized_bing');
            $table->float('normalized_ipa');
            $table->string('minat');
            $table->string('jurusan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('normalisasi');
    }
};

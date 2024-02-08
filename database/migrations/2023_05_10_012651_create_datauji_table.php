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
        Schema::create('datauji', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->integer('mtk');
            $table->integer('bindo');
            $table->integer('bing');
            $table->integer('ipa');
            $table->string('minat');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('datauji');
    }
};
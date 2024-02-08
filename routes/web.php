<?php

use App\Http\Controllers\DatamhswController;
use App\Http\Controllers\DatatrainingController;
use App\Http\Controllers\DataujiController;
use App\Http\Controllers\HasilController;
use App\Http\Controllers\DatanormalisasiController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\TransdataController;
use App\Http\Controllers\NormalisasiController;
use App\Models\Datatraining;
use App\Models\Datanormalisasi;
use App\Models\Datauji;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('layouts.master');
});

Route::get('/formulir', function () {
    return view('user.formulir');
});

Route::get('/datamhsw', function () {
    return view('admin.datamhsw');
});

Route::get('/rekap', function () {
    return view('admin.rekap');
});

Route::get('/form', function () {
    return view('mahasiswa.form');
});

Route::get('/hasil', function () {
    return view('admin.hasil');
});

Route::get('/normalization', function () {
    return view('perhitungan.normalization');
});

//ADMIN.ATRIBUT//
Route::get('/atribut', function(){$atribut = DB::table('atribut')->get();
    return view('admin.atribut', ['atribut' => $atribut]);
});

Route::get('/datatrain', function(){$datatrain = DB::table('datatrain')->get();
    return view('admin.datatrain', ['datatrain' => $datatrain]);
});


// DATA-TRANSFORMASI //
// Route::get('/trans-data',[TransdataController::class,'index'])->name('trans-data');
// Route::get('/createdata',[TransdataController::class,'create'])->name('createdata');
// Route::post('/simpandata',[TransdataController::class,'store'])->name('simpandata');
// Route::get('/delete/{id}',[TransdataController::class,'delete'])->name('delete');
// Route::get('/edittrans/{id}',[TransdataController::class,'edit'])->name('edittrans');
// Route::post('/updatetrans/{id}', [TransdataController::class,'update'])->name('updatetrans');

// DATA-MAHASISWA //
Route::get('/datamhsw',[DatamhswController::class, 'index'])->name('datamhsw');
Route::get('/createdm',[DatamhswController::class,'create'])->name('createdm');
Route::post('/simpandm',[DatamhswController::class,'store'])->name('simpandm');
Route::get('/editdm/{id}',[DatamhswController::class,'edit'])->name('editdm');
Route::post('/updatedm/{id}', [DatamhswController::class,'update'])->name('updatedm');
Route::get('/delete/{id}',[DatamhswController::class,'delete'])->name('delete');

// LOGIN-LOGOUT //
Route::get('/login',[LoginController::class, 'login'])->name('login');
Route::get('/logout',[LoginController::class, 'logout'])->name('logout');
Route::post('/postlogin',[LoginController::class, 'postlogin'])->name('postlogin');
Route::get('/tampilanregister',[LoginController::class, 'tampilanregister'])->name('tampilanregister');
Route::post('/register',[LoginController::class, 'register'])->name('register');

// PERHITUNGAN //
//data training//
Route::get('/datatraining',[DatatrainingController::class, 'index'])->name('datatraining');
Route::get('/create-datatraining',[DatatrainingController::class,'create'])->name('create-datatraining');
Route::post('/simpandtrain',[DatatrainingController::class,'store'])->name('simpandtrain');
Route::get('/edit-datatraining/{id}',[DatatrainingController::class,'edit'])->name('edit-datatraining');
Route::post('/updatedtrain/{id}', [DatatrainingController::class,'update'])->name('updatedtrain');
Route::get('/deletetraining/{id}',[DatatrainingController::class,'delete'])->name('delete');

//data uji//
Route::get('/tampil-datauji',[DataujiController::class, 'tampil'])->name('tampil-datauji');
Route::get('/riwayat-datauji/{id_datauji}',[DataujiController::class, 'riwayat'])->name('riwayat-datauji');
Route::get('/datauji',[DataujiController::class, 'index'])->name('datauji');
Route::get('/create-datauji',[DataujiController::class,'create'])->name('create-datauji');
Route::post('/simpandu',[DataujiController::class,'store'])->name('simpandu');
Route::get('/edit-datauji/{id}',[DataujiController::class,'edit'])->name('edit-datauji');
Route::post('/updatedu/{id}', [DataujiController::class,'update'])->name('updatedu');
Route::get('/delete/{id}',[DataujiController::class,'delete'])->name('delete');

Route::get('/hasil',[HasilController::class, 'index'])->name('hasil');


//data normalisasi//
Route::get('/normalisasi',[NormalisasiController::class, 'index'])->name('normalisasi');
Route::get('/createnor',[NormalisasiController::class,'create'])->name('createnor');
Route::post('/simpannor',[NormalisasiController::class,'store'])->name('simpannor');

Route::get('/pengaturan',[NormalisasiController::class, 'pengaturan'])->name('pengaturan');
Route::post('/updatepengaturan/{id}', [NormalisasiController::class,'updatepengaturan'])->name('updatepengaturan');

<?php

namespace App\Http\Controllers;

use App\Models\Normalisasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NormalisasiController extends Controller
{
    public function index(){
        $normalisasi=Normalisasi::all();
        return view('perhitungan.normalisasi', compact('normalisasi'));
    }
    public function create(){
        return view('perhitungan.createnor');
    }
    public function pengaturan() {
        $settings = DB::table('settings')
        ->selectRaw("*")
        ->limit(1)
        ->first();
        return view('admin.pengaturan', compact('settings'));
    }
    public function updatepengaturan(Request $request, $id){

        $payload = $request->only(['id', 'keterangan']);
        $settings = DB::table("settings")
        ->where("id", "=", $id)
        ->update($payload);
        return redirect('pengaturan')->with('toast_success', 'Data Berhasil Diupdate');
    }
    public function store(Request $request){
        $request->validate([
            'nama'=> 'required|string|max:255',
            'mtk'=>'required|numeric|min:0|max:100',
            'bindo'=>'required|numeric|min:0|max:100',
            'bing'=>'required|numeric|min:0|max:100',
            'ipa'=>'required|numeric|min:0|max:100',
            'psikotes'=>'required|numeric|min:0|max:100',
            'minat'=> 'required|string|max:255',
        ]);
        $normalisasi = new Normalisasi();
        $normalisasi->nama = $request->nama;
        $normalisasi->mtk = $request->mtk;
        $normalisasi->bindo = $request->bindo;
        $normalisasi->bing = $request->bing;
        $normalisasi->ipa = $request->ipa;
        $normalisasi->psikotes = $request->psikotes;
        $normalisasi->save();
    }
}

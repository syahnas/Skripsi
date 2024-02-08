<?php

namespace App\Http\Controllers;

use App\Models\Normalisasi;
use App\Models\Datatraining;
use Illuminate\Http\Request;

class NormalisasiController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
        $datanormalisasi = Normalisasi::where('nama','LIKE','%' .$request->search.'%')->paginate(10);
        }else{
            $datanormalisasi = Normalisasi::paginate(10);
        }
        return view('admin.datanormalisasi', compact('datanormalisasi'));
    }
    public function create(){
        return view('admin.create-datanormalisasi');
    }
    public function tampil(){
        $normalisasi = Datatraining::paginate();
        $datanormalisasi = Normalisasi::paginate();
        $normalisasi_asc = Datatraining::orderBy('mtk', 'asc')
        ->offset(0)
        ->limit(1)
        ->get();
        $normalisasi_desc = Datatraining::orderBy('mtk', 'desc')
        ->offset(0)
        ->limit(1)
        ->get();


        
        $datanormalisasi = Normalisasi::orderBy('id', 'desc')
        ->offset(0)
        ->limit(1)
        ->get();
        return view('admin.tampil-datanormalisasi', compact('datanormalisasi'), compact('normalisasi'), compact('datanormalisasi'), compact('normalisasi_asc'), compact('normalisasi_desc'));

    }
    public function store(Request $request){
        Normalisasi::create([
            'id'=>$request->id,
            'nama'=>$request->nama,
            'mtk'=>$request->mtk,
            'bindo'=>$request->bindo,
            'bing'=>$request->bing,
            'ipa'=>$request->ipa,
            'psikotes'=>$request->psikotes,
            'minat'=>$request->minat
        ]);
        return redirect('tampil-datanormalisasi')->with('toast_success', 'Data Berhasil Disimpan');
    }
    public function edit($id){
        $datanormalisasi=Normalisasi::find($id);
        return view('admin.edit-datanormalisasi', compact('datanormalisasi'));
    }
    public function update(Request $request, $id){
        $datanormalisasi = Normalisasi::find($id);
        $datanormalisasi->update($request->all());
        return redirect('datanormalisasi')->with('toast_success', 'Data Berhasil Diupdate');
    }
    public function delete($id){
        $datanormalisasi = Normalisasi::find($id);
        $datanormalisasi->delete();
        return redirect('datanormalisasi')->with('toast_success', 'Data Berhasil Dihapus');
    }
}

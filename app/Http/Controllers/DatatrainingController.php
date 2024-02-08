<?php

namespace App\Http\Controllers;

use App\Models\Datatraining;
use Illuminate\Http\Request;

class DatatrainingController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
        $datatraining = Datatraining::where('nama','LIKE','%' .$request->search.'%')->paginate(10);
        }else{
            $datatraining = Datatraining::paginate(10);
        }
        return view('admin.datatraining', compact('datatraining'));
    }
    public function create(){
        return view('admin.create-datatraining');
    }
    public function store(Request $request){
        Datatraining::create([
            'nrm'=>$request->nrm,
            'nama'=>$request->nama,
            'mtk'=>$request->mtk,
            'bindo'=>$request->bindo,
            'bing'=>$request->bing,
            'ipa'=>$request->ipa,
            'senbud'=>$request->senbud,
            'psikotes'=>$request->psikotes,
            'prodi'=>$request->prodi
        ]);
        return redirect('datatraining')->with('toast_success', 'Data Berhasil Disimpan');
    }
    public function edit($id){
        $datatraining=Datatraining::find($id);
        return view('admin.edit-datatraining', compact('datatraining'));
    }
    public function update(Request $request, $id){
        $datatraining = Datatraining::find($id);
        $datatraining->update($request->all());
        return redirect('datatraining')->with('toast_success', 'Data Berhasil Diupdate');
    }
    public function delete($id){
        $datatraining = Datatraining::find($id);
        $datatraining->delete();
        return redirect('datatraining')->with('toast_success', 'Data Berhasil Dihapus');
    }
}

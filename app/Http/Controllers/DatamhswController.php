<?php

namespace App\Http\Controllers;

use App\Models\Datamhsw;
use Illuminate\Http\Request;

class DatamhswController extends Controller
{
    public function index(){
        $datamhsw = Datamhsw::all();
        return view('admin.datamhsw',compact('datamhsw'));
    }
    public function create(){
        return view('admin.createdm');
    }
    public function store(Request $request){
        Datamhsw::create([
            'no_pnd'=>$request->no_pnd,
            'nama'=>$request->nama,
            'mtk'=>$request->mtk,
            'bindo'=>$request->bindo,
            'bing'=>$request->bing,
            'ipa'=>$request->ipa,
            'psikotes'=>$request->psikotes,
            'minat'=>$request->minat,
            'jurusan'=>$request->jurusan
        ]);
        return redirect('datamhsw')->with('toast_success', 'Data Berhasil Disimpan');
    }
    public function edit($id){
        $datamhsw=Datamhsw::find($id);
        return view('admin.editdm', compact('datamhsw'));
    }
    public function update(Request $request, $id){
        $datamhsw = Datamhsw::find($id);
        $datamhsw->update($request->all());
        return redirect('datamhsw')->with('toast_success', 'Data Berhasil Diupdate');
    }
    public function delete($id){
        $datamhsw = Datamhsw::find($id);
        $datamhsw->delete();
        return redirect('datamhsw')->with('toast_success', 'Data Berhasil Dihapus');
    }
}

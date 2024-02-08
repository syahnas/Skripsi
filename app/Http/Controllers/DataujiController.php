<?php

namespace App\Http\Controllers;

use App\Models\Datauji;
use App\Models\Datatraining;
use App\Models\Normalisasi;
use App\Models\DataTrain;
use App\Models\NormalisasiData;
use App\Models\HasilTraining;
use App\Models\Confusion;
use App\Models\Hasil;
use App\Models\Uji;
use App\Models\NormalisasiUji;
use App\Models\HasilUji;
use App\Models\ConfusionUji;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class DataujiController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
        $datauji = Datauji::where('nama','LIKE','%' .$request->search.'%')->paginate(10);
        }else{
            $datauji = Datauji::paginate(10);
        }
        return view('admin.datauji', compact('datauji'));
    }
    public function create(){

        return view('admin.create-datauji');
    }
    public function total(){
        $tot = DB::table('datauji')->get();

        return view('layouts.master',['tot' => $tot] );
        // $tot = datauji::count();

        // return view('layouts.master', compact('tot'));
        // return view('admin.create-datauji');
    }
    public function tampil(){
        $datatraining = Datatraining::paginate();
        $normalisasi = Normalisasi::paginate();
        $datatraining_asc = Datatraining::orderBy('mtk', 'asc')
        ->offset(0)
        ->limit(1)
        ->get();
        $datatraining_desc = Datatraining::orderBy('mtk', 'desc')
        ->offset(0)
        ->limit(1)
        ->get();


        
        $datauji = Datauji::orderBy('id', 'desc')
        ->offset(0)
        ->limit(1)
        ->get();
        return view('admin.tampil-datauji')->with('datauji', $datauji)->with('datatraining', $datatraining)->with('normalisasi', $normalisasi);
        // return view('admin.tampil-datauji', compact('datauji'), compact('datatraining'), compact('normalisasi'), compact('datatraining_asc'), compact('datatraining_desc'));

    }
    public function riwayat($id_datauji){
        $datatraining = Datatraining::get();
        $normalisasi = Normalisasi::get();
        $datatrain = DataTrain::get();
        $normalisasidata = NormalisasiData::get();
        $hasiltraining = HasilTraining::get();
        $confusion = Confusion::get();
        $uji = Uji::get();
        $normalisasiuji = NormalisasiUji::get();
        $hasiluji = HasilUji::get();
        $confusionuji = ConfusionUji::get();
        

        // $riw_datauji = Hasil::find($id_datauji);
        // $riw_datauji->delete();

        // $datauji1 = Hasil::find($id_datauji);
        // $datauji1->delete();
        // $hasil = Hasil::find($id_datauji);
        // $hasil->delete();
        Hasil::where('id_datauji',$id_datauji)->delete();
        $datauji=Datauji::find($id_datauji);
        return view('admin.riwayat-datauji', compact('datauji', 'datatraining', 'normalisasi', 'datatrain', 'normalisasidata', 'hasiltraining', 'confusion', 'confusionuji', 'hasiluji', 'normalisasiuji', 'uji'));
        // return view('admin.tampil-datauji', compact('datauji'), compact('datatraining'), compact('normalisasi'), compact('datatraining_asc'), compact('datatraining_desc'));

    }
    public function store(Request $request){

        // $messages = [
        //     'required'=> ':attribute tidak boleh kosong',
        //     'max'=> ':attribute maximal :max karakter',
        //     'min'=> ':attribute minimal :min karakter'
        // ];
        // $request->validate([
        //     'psikotes'=> 'required|min:90|max:100'
        // ], $messages);

        $messages = [
            'required'=> ':attribute tidak boleh kosong',
            'min'=> ':attribute minimal :min '
        ];

        $request->validate([
            'psikotes'=> 'required|numeric'
        ], $messages);
        //     $this->validate($request,[
        //        'psikotes' => 'required|min:90|max:100'
        //     ]);
        // return view('tampil-datauji',['data' => $request]);

        Datauji::create([
            'nama'=>$request->nama,
            'mtk'=>$request->mtk,
            'bindo'=>$request->bindo,
            'bing'=>$request->bing,
            'ipa'=>$request->ipa,
            'senbud'=>$request->senbud,
            'psikotes'=>$request->psikotes
        ]);


        return redirect('tampil-datauji')->with('toast_success', 'Data Berhasil Disimpan');
    }
    public function edit($id){
        $datauji=Datauji::find($id);
        return view('admin.edit-datauji', compact('datauji'));
    }
    public function update(Request $request, $id){
        $datauji = Datauji::find($id);
        $datauji->update($request->all());
        return redirect('datauji')->with('toast_success', 'Data Berhasil Diupdate');
    }
    public function delete($id){
        $datauji = Datauji::find($id);
        $datauji->delete();
        return redirect('datauji')->with('toast_success', 'Data Berhasil Dihapus');
    }
}

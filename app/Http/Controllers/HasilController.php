<?php

namespace App\Http\Controllers;

use App\Models\Hasil;
use App\Models\Datauji;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HasilController extends Controller
{
    public function index(){
        // $hasil = Hasil::with('datauji')->paginate();
        // // $hasil = Hasil::all();
        // return view('admin.hasil',compact('hasil'));

        // $hasil = Hasil::all();
        // $dataujis = DB::table('dataujis')->paginate(3);
        // $dataujian = DB::table('dataujian')->paginate(3);

        // return view('dashboard.index', [
        //     'hasil'         =>          $hasil,
        //     'dataujis'           =>          $dataujis,
        //     'dataujian'             =>          $dataujian,
        // ]);

        if (session()->get('level')=='admin') {
        $hasil = DB::table('hasil')
        ->join('datauji', 'datauji.id', '=', 'hasil.id_datauji')
        // ->join('users', 'users.id', '=', 'hasil.id_user')
        ->get();
        }else{
            $hasil = DB::table('hasil')
            ->selectRaw("*, datauji.nama as nama_datauji")
            ->leftJoin('datauji', 'datauji.id', '=', 'hasil.id_datauji')
            ->leftJoin('users', 'users.id', '=', 'hasil.id_user')
            ->get();
        }

        //tampilkan view barang dan kirim datanya ke view tersebut
        return view('admin.hasil')->with('hasil', $hasil);
    }
    public function delete($id){
        $hasil = Hasil::find($id);
        $hasil->delete();
        return redirect('hasil')->with('toast_success', 'Data Berhasil Dihapus');
    }
}

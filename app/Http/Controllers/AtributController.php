<?php

namespace App\Http\Controllers;

use App\Models\Atribut;
use Illuminate\Http\Request;

class AtributController extends Controller
{
    public function index(){
        $atribut = Atribut::all();
        return view('admin.atribut', compact('atribut'));
    }
    public function show($id){
        $atribut = Atribut::find($id);
        return view('admin.atribut', compact('atribut'));
    }
}

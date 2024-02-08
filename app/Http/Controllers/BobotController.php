<?php

namespace App\Http\Controllers;

use App\Models\Bobot;
use Illuminate\Http\Request;

class BobotController extends Controller
{
    public function index(){
        $bobot = Bobot::all();
        return view('admin.bobot', compact('bobot'));
    }
    public function show($id){
        $bobot = Bobot::find($id);
        return view('admin.bobot', compact('bobot'));
    }
}

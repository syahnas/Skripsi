<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

// use Session;
class LoginController extends Controller
{
    public function login(){
        return view('users.login');
    }

    public function postlogin(Request $request){
        // if (Auth::attempt($request->only('email','password'))){
        //     return redirect('/')->with('toast_success', 'Berhasil masuk');
        // }
        // return redirect('login')->with('toast_success', 'Periksa kembali email dan password');

        // $data = [
        //     'email' => $request->input('email'),
        //     'password' => $request->input('password')
        // ];z
        $email = $request->email;
        $password = $request->password;
        $data = User::where('email',$email)->first();
        if($data){ //apakah email tersebut ada atau tidak
            if(Hash::check($password,$data->password) && $data->level == "admin"){
                Session::put('id',$data->id);
                Session::put('nama',$data->nama);
                Session::put('level',$data->level);
                Session::put('email',$data->email);
                Session::put('login',TRUE);
                return redirect('/');
            }
            else{
                return redirect('login')->with('alert','Password atau Email, Salah !');
            }
        }
        else{
            return redirect('login')->with('alert','Password atau Email, Salah!');
        }
        // if (Auth::Attempt($data)) {
            // Session::flash('email', $request->email);
            // $request->session()->put('email', $request->email);
            // Session::put('email', $request->email);
            // Session::put('password', $request->password);
            // Session::put('level', $request->level);
            // $login = User::where('email','LIKE','%' .$request->email.'%')->paginate();
            // Session::put('level', $login['level']);
            // Session::put('login',TRUE);
            // return redirect('/');
            // return 'suk';
        // }else{
            // return 'gagl';
        //     return redirect('login')->with('toast_success', 'Periksa kembali email dan password');
        // }
    }

    public function logout(){
        Session::flush();
        return redirect('/')->with('alert','Kamu sudah logout');
    }

    public function tampilanregister(){
        return view('users.register');
    }

    public function register(Request $request){
        User::create([
            'nama' => $request->nama,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'level' => $request->level,
            'remember_token' => Str::random(60),
        ]);
        return view('users.login');
    }
}

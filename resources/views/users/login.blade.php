<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rekomendasi Program Studi</title>

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
    <link rel="stylesheet" href="{{asset('AdminLTE/plugins/fontawesome-free/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('AdminLTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/adminlte.min.css?v=3.2.0')}}">
    <script src="/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0JTIyJTNBJTIyQWRtaW5MVEUlMjAzJTIwJTdDJTIwTG9nJTIwaW4lMjAodjIpJTIyJTJDJTIyeCUyMiUzQTAuMDMzMjY4ODE1NDU2MDYzMTk0JTJDJTIydyUyMiUzQTEzNjYlMkMlMjJoJTIyJTNBNzY4JTJDJTIyaiUyMiUzQTY0OSUyQyUyMmUlMjIlM0ExMzY2JTJDJTIybCUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGYWRtaW5sdGUuaW8lMkZ0aGVtZXMlMkZ2MyUyRnBhZ2VzJTJGZXhhbXBsZXMlMkZsb2dpbi12Mi5odG1sJTIyJTJDJTIyciUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGYWRtaW5sdGUuaW8lMkZ0aGVtZXMlMkZ2MyUyRiUyMiUyQyUyMmslMjIlM0EyNCUyQyUyMm4lMjIlM0ElMjJVVEYtOCUyMiUyQyUyMm8lMjIlM0EtNDgwJTJDJTIycSUyMiUzQSU1QiU1RCU3RA==">
    </script>
    <script nonce="8dce964a-396c-40b4-8f37-b22f520b1cf0">
        (function(w,d){!function(dk,dl,dm,dn){dk[dm]=dk[dm]||{};dk[dm].executed=[];dk.zaraz={deferred:[],listeners:[]};dk.zaraz.q=[];dk.zaraz._f=function(dp){return function(){var dq=Array.prototype.slice.call(arguments);dk.zaraz.q.push({m:dp,a:dq})}};for(const dr of["track","set","debug"])dk.zaraz[dr]=dk.zaraz._f(dr);dk.zaraz.init=()=>{var ds=dl.getElementsByTagName(dn)[0],dt=dl.createElement(dn),du=dl.getElementsByTagName("title")[0];du&&(dk[dm].t=dl.getElementsByTagName("title")[0].text);dk[dm].x=Math.random();dk[dm].w=dk.screen.width;dk[dm].h=dk.screen.height;dk[dm].j=dk.innerHeight;dk[dm].e=dk.innerWidth;dk[dm].l=dk.location.href;dk[dm].r=dl.referrer;dk[dm].k=dk.screen.colorDepth;dk[dm].n=dl.characterSet;dk[dm].o=(new Date).getTimezoneOffset();if(dk.dataLayer)for(const dy of Object.entries(Object.entries(dataLayer).reduce(((dz,dA)=>({...dz[1],...dA[1]})))))zaraz.set(dy[0],dy[1],{scope:"page"});dk[dm].q=[];for(;dk.zaraz.q.length;){const dB=dk.zaraz.q.shift();dk[dm].q.push(dB)}dt.defer=!0;for(const dC of[localStorage,sessionStorage])Object.keys(dC||{}).filter((dE=>dE.startsWith("_zaraz_"))).forEach((dD=>{try{dk[dm]["z_"+dD.slice(7)]=JSON.parse(dC.getItem(dD))}catch{dk[dm]["z_"+dD.slice(7)]=dC.getItem(dD)}}));dt.referrerPolicy="origin";dt.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(dk[dm])));ds.parentNode.insertBefore(dt,ds)};["complete","interactive"].includes(dl.readyState)?zaraz.init():dk.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);
    </script>
    <style>
    body{
    background-image: url("../Foto/umb.png") !important;
    background-repeat: no-repeat;
    background-size: cover;
    }
    .Login-box{
    }
</style>
</head>

<body class="login-page" style="min-height: 466px;">
    <div class="login-box">
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <a href="#" class="h1"><b>REKOMENDASI PROGRAM STUDI</a>
            </div>
            <div class="card-body">
                <p class="login-box-msg">Masuk untuk memulai sesi Anda</p>

                <form action="/postlogin" method="POST">
                    {{csrf_field()}}
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" name="email" placeholder="Email">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <i class="fas fa-envelope"></i>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" name="password" placeholder="Password">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <i class="fas fa-lock"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                            </div>
                        </div>

                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block">Masuk</button>
                        </div>
                    </div>
                </form>
                <p class="mb-0" style="display: none;">
                    <a href="/tampilanregister" class="text-center">Daftar Akun Baru</a>
                </p>
            </div>
        </div>
    </div>
    <script src="{{asset('AdminLTE/plugins/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <script src="{{asset('AdminLTE/dist/js/adminlte.min.js?v=3.2.0')}}"></script>


</body>

</html>

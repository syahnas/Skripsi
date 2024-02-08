<?php

namespace App\Http\Middleware;

Use Closure;
Use Illuminate\Http\Request;

class Ceklevel
{
    public function handle($request, Closure $next, ...$levels)
    {
        if(in_array($request->user()->level,$levels)){
            return $next($request);
        }
        return redirect('/');
    }
}

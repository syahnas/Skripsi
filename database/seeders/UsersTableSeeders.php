<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class UsersTableSeeders extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([ 
            'nama'=>'admin',
            'email'=>'admin@gmail.com',
            'password'=> Hash::make('admin'),
            'level'=>'admin',
            ]);
    }
}

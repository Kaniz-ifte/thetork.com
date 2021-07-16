<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }


    public function Index(Request $req){

         \Artisan::call('storage:link');

        $page_title = 'Dashboard';
        $page_description = 'This is the base Admin Panel of Tork';

        return view('admin.dashboard.index',compact('page_title', 'page_description'));

    }

    public function Profile($id){
        return view('admin.profile.index');
    }

}

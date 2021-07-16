<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\User;
use DB;
use \stdClass;


class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {

         $this->key_word='Profile';
         $this->key_word_plural='Profiles';
    }

    public function index()
    {
         $page_title = $this->key_word;
         $info=new stdClass();
         return view('admin.profile.index',compact('page_title','info'));
    }


}

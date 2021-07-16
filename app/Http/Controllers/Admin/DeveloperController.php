<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Admin;
use DB;
use Log;
use \stdClass;


class DeveloperController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {

    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function columns(Request $request)
    {
         // return dd($this);
        $page_title = "Columns";
        $info=new stdClass();
        $info->search = $request->search;
        $info->title = "Columns";


        $row=Admin::orderBy('id','DESC')->first();


        $info->table_columns=[
             [
                  "title"=> 'Serial',
                  "index"=> 'serial',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Actions',
                  "show-route"=> 'admin.profile',
                  "edit-route"=> 'admin.profile',
                  "destroy-route"=> 'admin.profile',
                  "design"=> '2',
             ],
             [
                  "title"=> 'Name & Email',
                  "index"=> 'name',
                  "index_1"=> 'email',
                  "max_char"=>10,
                  "max_char_1"=>10,
                  "design"=> '3'
             ],
             [
                  "title"=> 'Date Time',
                  "datetime"=> 'created_at',
                  "datetime_format"=> 'h:i A, d M Y',
                  "design"=> '4'
             ],
             [
                  "title"=> 'Date',
                  "datetime"=> 'created_at',
                  "datetime_format"=> 'h:i A, d M Y',
                  "design"=> '4_1'
             ],
             [
                  "title"=> 'Active/InActive',
                  "index"=> 'is_active',
                  "true_text"=> 'Active',
                  "false_text"=> 'Inactive',
                  "design"=> '5'
             ],
             [
                  "title"=> 'Paid/Due',
                  "index"=> 'is_active',
                  "true_text"=> 'Paid',
                  "false_text"=> 'Due',
                  "design"=> '5_1'
             ],
             [
                  "title"=> 'Status/Order',
                  "index"=> 'is_active',
                  "index_1"=> 'is_active',
                  "true_text"=> 'Active',
                  "false_text"=> 'Inactive',
                  "design"=> '5_2'
             ],
             [
                  "title"=> 'Image & 2 Strings',
                  "image"=> 'avatar',
                  "index"=> 'name',
                  "index_1"=> 'id',
                  "max_char"=>10,
                  "max_char_1"=>10,
                  "design"=> '6'
             ],
             [
                  "title"=> 'Email',
                  "index"=> 'email',
                  "max_char"=>10,
                  "design"=> '7'
             ],
             [
                  "title"=> 'Text & Date',
                  "index"=> 'name',
                  "max_char"=>10,
                  "datetime"=> 'created_at',
                  "datetime_format"=> 'h:i, d M Y',
                  "design"=> '9'
             ],
             [
                  "title"=> 'Single Image',
                  "image"=> 'avatar',
                  "design"=> '11'
             ],
             [
                  "title"=> 'Service',
                  "index"=> 'title',
                  "model"=> 'App\Service',
                  "array_index"=> 'service_id',
                  "separator"=> ',',
                  "max_char"=>60,
                  "design"=> '13'
             ],

        ];


        return view('admin.developer.columns',compact('page_title','row','info'));


    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function inputs()
    {

         $page_title = "Inputs";


        $info=new stdClass();

        $info->form_inputs=[
             [
                  "title"=> 'Space:',
                  "label-class"=> 'col-md-2',
                  "div-class"=> 'col-md-3',
                  "design"=> '0'
             ],
             [
                  "title"=> 'Name:',
                  "placeholder"=> 'Enter Name',
                  "name"=> 'name',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Phone:',
                  "placeholder"=> 'Enter Phone',
                  "name"=> 'phone',
                  "type"=> 'number',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Email:',
                  "placeholder"=> 'Enter Email',
                  "name"=> 'email',
                  "type"=> 'email',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Color:',
                  "placeholder"=> 'Enter Color',
                  "name"=> 'color',
                  "type"=> 'color',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Range:',
                  "placeholder"=> 'Enter Range',
                  "name"=> 'range',
                  "type"=> 'range',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Password:',
                  "placeholder"=> 'Enter Password',
                  "name"=> 'password',
                  "type"=> 'password',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Not Set:',
                  "placeholder"=> 'Enter',
                  "name"=> 'not set',
                  "required"=> '',
                  "design"=> '2'
             ],
             [
                  "title"=> 'Image:',
                  "id"=> 'image_1',
                  "sample_image"=> 'media/sample/avatar.jpg',
                  "sample_image_width"=> '120px',
                  "sample_image_height"=> '120px',
                  "name"=> 'image',
                  "required"=> '',
                  "design"=> '3'
             ],
             [
                  "title"=> 'Description:',
                  "placeholder"=> '',
                  "rows"=> '3',
                  "cols"=> '80',
                  "name"=> 'description',
                  "id"=> 'description',
                  "autosize"=> '',
                  "design"=> '4'
             ],
             [
                  "title"=> 'Is Active:',
                  "name"=> 'is_active',
                  "checked"=> '',
                  "design"=> '5'
             ],
             [
                  "title"=> 'Role:',
                  "name"=> 'role_id',
                  "index"=> 'name',
                  "data"=>Roles(),
                  "required"=> '',
                  "design"=> '6'
             ],
             [
                  "title"=> 'Date & Time:',
                  "value"=>date('Y-m-d H:i'),
                  "name"=> 'date_time',
                  "id"=> 'date_time',
                  "design"=> '7'
             ],
             [
                  "title"=> 'Date:',
                  "id"=> 'date',
                  "name"=> 'date',
                  "value"=>date('Y-m-d'),
                  "design"=> '8'
             ],
             [
                  "title"=> 'Question:',
                  "id"=> 'question',
                  "name"=> 'question',
                  "required"=> '',
                  "design"=> '9'
             ],
             [
                  "title"=> 'Question With Math:',
                  "id"=> 'question_math',
                  "name"=> 'question_math',
                  "required"=> '',
                  "math"=> '',
                  "design"=> '9'
             ],

        ];
        return view('admin.developer.inputs',compact('page_title','info'));
    }

    public function databaseQueryLog(){

         return dd(file(storage_path('logs/query.log'), FILE_IGNORE_NEW_LINES) );

    }


}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use File;
use DB;
use Auth;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;


class FileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function AjaxSaveImage(Request $request){

       if(isset($request->image))
       {
         $file = $request->image;

         $image_array_1 = explode(";", $file);

         $image_array_2 = explode(",", $image_array_1[1]);

         $file = base64_decode($image_array_2[1]);

         $path = 'admin/assets/images/admin_logo.'. $request->extension;

       $this->SaveImage($file,$path);

         echo '/'.$path;
       }


    }




    static function SaveFile($file,$file_name,$directory,$disk)
    {


        $file_name=$file_name.'.'.$file->extension();
        $disk=($disk='' ? 'public':$disk);

        if($file!=''){

             // return $file->storeAs($directory, $file_name,$disk);

             return Storage::disk($disk)->putFileAs(
                  $directory,
                  $file,
                  $file_name
             );
        }else{
             return "fail";
        }

    }

    static function ResizeImage($file,$path,$width,$height)
    {
        $img = Image::make($file);
        $img->resize($width, $height);
        $img->save($path);
        return $path;

    }

    static function DeleteFile($path)
    {
       if(File::exists($path)){

            File::delete($path);
       }
       return $path;
    }



}

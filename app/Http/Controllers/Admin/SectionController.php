<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DB;
use \stdClass;


class SectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:section-view|section-create|section-update|section-delete', ['only' => ['index']]);
         $this->middleware('permission:section-create', ['only' => ['create','store']]);
         $this->middleware('permission:section-update', ['only' => ['edit','update']]);
         $this->middleware('permission:section-delete', ['only' => ['destroy']]);
         $this->model='App\Section';
         $this->key_word='Section';
         $this->key_word_plural='Sections';
         $this->route_index='admin.sections.index';
         $this->route_create='admin.sections.create';
         $this->route_edit='admin.sections.edit';
         $this->route_update='admin.sections.update';
         $this->route_destroy='admin.sections.destroy';
         $this->route_store='admin.sections.store';

         $this->input_password=[];
         $this->update_input_password=[];
         $this->input_image=['image'];
         $this->update_input_image=['image'];
         $this->except_columns=['_token','image'];
         $this->update_except_columns=['_token','image'];

         $this->validation_rules=[
            'key' => 'required',
        ];
         $this->update_validation_rules=[
              'key' => 'required',
        ];
         $this->update_validation_rules_for_unique=[];

         $this->form_inputs=[
             [
                  "title"=> 'Title:',
                  "placeholder"=> 'Enter Title',
                  "name"=> 'title',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Banner:',
                  "id"=> 'image_1',
                  "sample_image"=> 'media/sample/section.jpg',
                  "sample_image_width"=> '120px',
                  "sample_image_height"=> '120px',
                  "name"=> 'image',
                  "design"=> '3'
             ],
             [
                  "title"=> 'Order:',
                  "placeholder"=> 'Enter Order',
                  "name"=> 'order',
                  "type"=> 'number',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Is Active:',
                  "name"=> 'is_active',
                  "checked"=> '',
                  "design"=> '5'
             ],

        ];

        $this->update_form_inputs=[
             [
                  "title"=> 'Title:',
                  "placeholder"=> 'Enter Title',
                  "name"=> 'title',
                  "required"=> '',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Banner:',
                  "id"=> 'image_1',
                  "sample_image"=> 'media/sample/section.jpg',
                  "sample_image_width"=> '120px',
                  "sample_image_height"=> '120px',
                  "name"=> 'image',
                  "update"=> '',
                  "design"=> '3'
             ],
             [
                  "title"=> 'Order:',
                  "placeholder"=> 'Enter Order',
                  "name"=> 'order',
                  "type"=> 'number',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Is Active:',
                  "name"=> 'is_active',
                  "checked"=> '',
                  "update"=> '',
                  "design"=> '5'
             ],

       ];
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
         // return dd($this);
        $page_title = $this->key_word;
        $info=new stdClass();
        $info->title = $this->key_word_plural;
        $info->first_button_title = 'Add '.$this->key_word;
        $info->first_button_route = $this->route_create;
        $info->description = 'These  all are '.$this->key_word_plural;

        $perPage = request('perPage', 20);

        $data = app($this->model)->orderBy('id','DESC')->paginate($perPage);

        return view('admin._cruds._index_6',compact('page_title','data','info'))->with('i', ($request->input('page', 1) - 1) * $perPage);


    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $page_title = $this->key_word;
        $info=new stdClass();
        $info->title = $this->key_word_plural;
        $info->first_button_title = 'All '.$this->key_word;
        $info->first_button_route = $this->route_index;
        $info->form_route = $this->route_store;

        $info->form_inputs=$this->form_inputs;
        return view('admin._cruds._create',compact('page_title','info'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, $this->validation_rules);

        $row = app($this->model)->create($request->except($this->except_columns));

        foreach ($this->input_password as $input) {
             $row->{$input}=Hash::make($request->{$input});
        }

        foreach ($this->input_image as $input) {

             $file_input=$input;
             $id=app($this->model)->max('id') + 1;
             $file=$request->file($file_input);
             $file_name=$file_input.'_'.$id;
             $directory=$this->key_word_plural;
             $disk=env('APP_DISK');

             if($file!=''){
                 $row->{$file_input}= app('App\Http\Controllers\FileController')
                 ->SaveFile($file,$file_name,$directory,$disk);

             }else{
                  if($request->{'old_'.$file_input}!=''){
                       $row->{$file_input}=$request->{'old_'.$file_input};
                  }
             }

        }




        $row->save();

        return redirect()->route($this->route_index)
                        ->with('success',$this->key_word.' created successfully');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect()->route($this->route_index);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

          $page_title = $this->key_word;
          $info=new stdClass();
          $info->title = $this->key_word_plural;
          $info->first_button_title = 'Add '.$this->key_word;
          $info->first_button_route = $this->route_create;
          $info->second_button_title = 'All '.$this->key_word;
          $info->second_button_route = $this->route_index;
          $info->form_route = $this->route_update;

          $data=app($this->model)->where('id',$id)->first();

          $info->form_inputs=$this->update_form_inputs;

          return view('admin._cruds._edit',compact('page_title','info','data'))->with('id',$id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

         $update_validation_rules=$this->update_validation_rules;

         foreach ($this->update_validation_rules_for_unique as $key => $value) {
             array_merge($update_validation_rules, array($key => $value.','.$id));
         }


         $this->validate($request, $update_validation_rules);


        $row = app($this->model)->find($id);
        $row->fill($request->except($this->update_except_columns));


        foreach ($this->update_input_password as $input) {
             $row->{$input}=Hash::make($request->{$input});
        }

        foreach ($this->update_input_image as $input) {

             $file_input=$input;
             $file=$request->file($file_input);
             $file_name=$file_input.'_'.$id;
             $directory=$this->key_word_plural;
             $disk=env('APP_DISK');

             if($file!=''){
                 $row->{$file_input}= app('App\Http\Controllers\FileController')
                 ->SaveFile($file,$file_name,$directory,$disk);

             }else{
                  if($request->{'old_'.$file_input}!=''){
                       $row->{$file_input}=$request->{'old_'.$file_input};
                  }
             }

        }


        $row->save();


        return redirect()->route($this->route_index)
                        ->with('success',$this->key_word.' updated successfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

         app($this->model)->where('id',$id)->delete();
         return redirect()->route($this->route_index)
                        ->with('success',$this->key_word.' deleted successfully');
    }
}

<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DB;
use \stdClass;


class TestimonialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:testimonial-view|testimonial-create|testimonial-update|testimonial-delete', ['only' => ['index']]);
         $this->middleware('permission:testimonial-create', ['only' => ['create','store']]);
         $this->middleware('permission:testimonial-update', ['only' => ['edit','update']]);
         $this->middleware('permission:testimonial-delete', ['only' => ['destroy']]);
         $this->model='App\Testimonial';
         $this->key_word='Testimonial';
         $this->key_word_plural='Testimonials';
         $this->route_index='admin.testimonials.index';
         $this->route_create='admin.testimonials.create';
         $this->route_edit='admin.testimonials.edit';
         $this->route_update='admin.testimonials.update';
         $this->route_destroy='admin.testimonials.destroy';
         $this->route_store='admin.testimonials.store';

         $this->input_password=[];
         $this->update_input_password=[];
         $this->input_image=['avatar'];
         $this->update_input_image=['avatar'];
         $this->except_columns=['_token','avatar'];
         $this->update_except_columns=['_token','avatar'];

         $this->validation_rules=[
            'name' => 'required',
        ];
         $this->update_validation_rules=[
              'name' => 'required',
        ];
         $this->update_validation_rules_for_unique=[];

         $this->table_columns=[
             [
                  "title"=> 'Serial',
                  "index"=> 'serial',
                  "design"=> '1'
             ],
             [
                  "title"=> 'avatar',
                  "image"=> 'avatar',
                  "design"=> '11'
             ],
             [
                  "title"=> 'Name/Rank',
                  "index"=> 'name',
                  "index_1"=> 'designation',
                  "max_char"=>30,
                  "max_char_1"=>30,
                  "design"=> '3'
             ],
             [
                  "title"=> 'Quote',
                  "index"=> 'quote',
                  "design"=> '7'
             ],
             [
                  "title"=> 'Rating',
                  "index"=> 'name',
                  "design"=> '7'
             ],
             [
                  "title"=> 'Order',
                  "index"=> 'order',
                  "design"=> '7'
             ],
             [
                  "title"=> 'Is Active',
                  "index"=> 'is_active',
                  "design"=> '5'
             ],
             [
                  "title"=> 'Actions',
                  "design"=> '2',
                  "show-route"=>$this->route_index,
                  "edit-route"=>$this->route_edit,
                  "destroy-route"=>$this->route_destroy,
             ],
        ];

         $this->form_inputs=[
             [
                  "title"=> 'Name:',
                  "placeholder"=> 'Enter Name',
                  "name"=> 'name',
                  "required"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'avatar:',
                  "id"=> 'image_1',
                  "sample_image"=> 'media/sample/testimonial.jpg',
                  "sample_image_width"=> '120px',
                  "sample_image_height"=> '120px',
                  "name"=> 'avatar',
                  "design"=> '3'
             ],
             [
                  "title"=> 'Designation:',
                  "placeholder"=> 'Enter Designation',
                  "name"=> 'designation',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Quote:',
                  "placeholder"=> 'Enter Quote',
                  "name"=> 'quote',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Rating:',
                  "placeholder"=> 'Enter Rating',
                  "name"=> 'rating',
                  "type"=> 'number',
                  "design"=> '1'
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
                  "checked"=> '1',
                  "design"=> '5'
             ],

        ];

        $this->update_form_inputs=[
             [
                  "title"=> 'Name:',
                  "placeholder"=> 'Enter Name',
                  "name"=> 'name',
                  "required"=> '',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'avatar:',
                  "id"=> 'image_1',
                  "sample_image"=> 'media/sample/testimonial.jpg',
                  "sample_image_width"=> '120px',
                  "sample_image_height"=> '120px',
                  "name"=> 'avatar',
                  "update"=> '',
                  "design"=> '3'
             ],[
                  "title"=> 'Designation:',
                  "placeholder"=> 'Enter Designation',
                  "name"=> 'designation',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Quote:',
                  "placeholder"=> 'Enter Quote',
                  "name"=> 'quote',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Rating:',
                  "placeholder"=> 'Enter Rating',
                  "name"=> 'rating',
                  "type"=> 'number',
                  "update"=> '',
                  "design"=> '1'
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
                  "checked"=> '1',
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


        $info->table_columns=$this->table_columns;

        return view('admin._cruds._index',compact('page_title','data','info'))->with('i', ($request->input('page', 1) - 1) * $perPage);


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

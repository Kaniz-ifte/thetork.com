<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DB;
use \stdClass;


class SocialMediaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:social-media-view|social-media-create|social-media-update|social-media-delete', ['only' => ['index']]);
         $this->middleware('permission:social-media-create', ['only' => ['create','store']]);
         $this->middleware('permission:social-media-update', ['only' => ['edit','update']]);
         $this->middleware('permission:social-media-delete', ['only' => ['destroy']]);
         $this->model='App\SocialMedia';
         $this->key_word='Social Media';
         $this->key_word_plural='Social Media';
         $this->route_index='admin.social-media.index';
         $this->route_create='admin.social-media.create';
         $this->route_edit='admin.social-media.edit';
         $this->route_update='admin.social-media.update';
         $this->route_destroy='admin.social-media.destroy';
         $this->route_store='admin.social-media.store';

         $this->input_password=[];
         $this->update_input_password=[];
         $this->input_image=[];
         $this->update_input_image=[];
         $this->except_columns=['_token'];
         $this->update_except_columns=['_token'];

         $this->validation_rules=[
            'title' => 'required',
        ];
         $this->update_validation_rules=[
              'title' => 'required',
        ];
         $this->update_validation_rules_for_unique=[];

         $this->table_columns=[
             [
                  "title"=> 'Serial',
                  "index"=> 'serial',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Title',
                  "image"=> 'icon',
                  "index"=> 'title',
                  "index_1"=> 'icon_class',
                  "max_char"=>20,
                  "max_char_1"=>20,
                  "design"=> '6'
             ],
             [
                  "title"=> 'Color/Background',
                  "index"=> 'color',
                  "index_1"=> 'background_color',
                  "max_char"=> 20,
                  "max_char_1"=> 20,
                  "design"=> '3',
             ],
             [
                  "title"=> 'Url/Type',
                  "index"=> 'url',
                  "index_1"=> 'social_media_type',
                  "max_char"=>40,
                  "max_char_1"=>40,
                  "design"=> '3'
             ],
             [
                  "title"=> 'Status',
                  "index"=> 'is_active',
                  "index_1"=> 'order',
                  "design"=> '5_2'
             ],
             [
                  "title"=> 'Actions',
                  "show-route"=> $this->route_index,
                  "edit-route"=> $this->route_edit,
                  "destroy-route"=> $this->route_destroy,
                  "design"=> '2',
             ],
        ];

         $this->form_inputs=[
             [
                  "title"=> 'Title:',
                  "placeholder"=> 'Enter Title',
                  "name"=> 'title',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Type:',
                  "name"=> 'social_media_type_id',
                  "index"=> 'title',
                  "data"=>ModelData('App\SocialMediaType'),
                  "required"=> '',
                  "design"=> '6',
             ],
             [
                  "title"=> 'Icon Class:',
                  "placeholder"=> 'Enter Icon Class',
                  "name"=> 'icon_class',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Icon:',
                  "id"=> 'icon',
                  "sample_image"=> 'media/sample/social_media_icon.jpg',
                  "sample_image_width"=> '120px',
                  "sample_image_height"=> '120px',
                  "name"=> 'icon',
                  "design"=> '3'
             ],
             [
                  "title"=> 'Url:',
                  "placeholder"=> 'Enter Url',
                  "name"=> 'url',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Color:',
                  "placeholder"=> 'Enter Color',
                  "type"=> 'color',
                  "name"=> 'color',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Background Color:',
                  "placeholder"=> 'Enter Background Color',
                  "type"=> 'color',
                  "name"=> 'background_color',
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
                  "checked"=> '',
                  "design"=> '5'
             ],

        ];

        $this->update_form_inputs=[
             [
                  "title"=> 'Title:',
                  "placeholder"=> 'Enter Title',
                  "name"=> 'title',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Type:',
                  "name"=> 'social_media_type_id',
                  "index"=> 'title',
                  "data"=>ModelData('App\SocialMediaType'),
                  "required"=> '',
                  "update"=> '',
                  "design"=> '6',
             ],
             [
                  "title"=> 'Icon Class:',
                  "placeholder"=> 'Enter Icon Class',
                  "name"=> 'icon_class',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Icon:',
                  "id"=> 'icon',
                  "sample_image"=> 'media/sample/social_media_icon.jpg',
                  "sample_image_width"=> '120px',
                  "sample_image_height"=> '120px',
                  "name"=> 'icon',
                  "update"=> '',
                  "design"=> '3'
             ],
             [
                  "title"=> 'Url:',
                  "placeholder"=> 'Enter Url',
                  "name"=> 'url',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Color:',
                  "placeholder"=> 'Enter Color',
                  "type"=> 'color',
                  "name"=> 'color',
                  "update"=> '',
                  "design"=> '1'
             ],
             [
                  "title"=> 'Background Color:',
                  "placeholder"=> 'Enter Background Color',
                  "type"=> 'color',
                  "name"=> 'background_color',
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

        $data = app($this->model)->join('social_media_types','social_media.social_media_type_id','social_media_types.id')->select('social_media.*','social_media_types.title as social_media_type')->orderBy('id','DESC')->paginate($perPage);


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

<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DB;
use \stdClass;


class AdminMenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
        $this->model='App\AdminMenu';
        $this->key_word='Admin Menu';
        $this->key_word_plural='Admin Menus';
        $this->route_index='admin.admin-menus.index';
        $this->route_create='admin.admin-menus.create';
        $this->route_edit='admin.admin-menus.edit';
        $this->route_update='admin.admin-menus.update';
        $this->route_destroy='admin.admin-menus.destroy';
        $this->route_store='admin.admin-menus.store';

        $this->form_inputs=[
            [
                 "title"=> 'Title:',
                 "placeholder"=> 'Enter Title',
                 "name"=> 'title',
                 "required"=> '',
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

    }

    public function index(Request $request)
    {

        $page_title = $this->key_word;
        $info=new stdClass();
        $info->title = $this->key_word_plural;
        $info->first_button_title = 'Add '.$this->key_word;
        $info->first_button_route = $this->route_create;
        $info->description = 'These  all are '.$this->key_word_plural;
        $info->menus=app($this->model)->orderBy('order','ASC')->get()->groupBy('parent_id');
        // return dd($info->menus[""]);


         return view('admin.admin-menus.index',compact('page_title','info'));
    }

    public function saveNestedMenus(Request $request){
        $simplified_list = [];
        $this->recur1($request->nested_menus_array, $simplified_list);

        foreach($simplified_list as $k => $v){
                $menu = app($this->model)->find($v['menu_id']);
                $menu->fill([
                    "parent_id" => $v['parent_id'],
                    "order" => $v['order'],
                ]);

                $menu->save();
            }
        return "success";
    }

    public function recur1($nested_array=[], &$simplified_list=[]){

        static $counter = 0;

        foreach($nested_array as $k => $v){

            $order = $k+1;
            $simplified_list[] = [
                "menu_id" => $v['id'],
                "parent_id" => 0,
                "order" => $order
            ];

            if(!empty($v["children"])){
                $counter+=1;
                $this->recur2($v['children'], $simplified_list, $v['id']);
            }

        }
    }

    public function recur2($sub_nested_array=[], &$simplified_list=[], $parent_id = NULL){

        static $counter = 0;

        foreach($sub_nested_array as $k => $v){

            $order = $k+1;
            $simplified_list[] = [
                "menu_id" => $v['id'],
                "parent_id" => $parent_id,
                "order" => $order
            ];

            if(!empty($v["children"])){
                $counter+=1;
                return $this->recur2($v['children'], $simplified_list, $v['id']);
            }
        }
    }

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
    public function show()
    {
    }
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

         $data=app($this->model)->leftJoin('cruds','admin_menus.crud_id','cruds.id')->where('admin_menus.id',$id)->first();

         if ($data->crud_id!='') {
             return redirect()->route('admin.create-crud',$data->crud_id);
         }

         return view('admin.admin-menus.edit',compact('page_title','info','data'))->with('id',$id);
    }
    public function update(Request $request, $id)
    {
         // return $request->all();
         $row = app($this->model)->find($id);
         $row->fill($request->all());
         $row->save();
         $crud = app('App\Crud')->findOrNew($row->crud_id);
         $crud->fill($request->all());
         $crud->save();
         return redirect()->route($this->route_index)
                        ->with('success',$this->key_word.' updated successfully');
    }
    public function destroy($id)
    {
    }
}

<?php



        namespace App\Http\Controllers\Admin;



        use Illuminate\Http\Request;

        use App\Http\Controllers\Controller;

        use Illuminate\Support\Facades\Hash;

        use Illuminate\Support\Facades\Storage;

        use DB;

        use \stdClass;



        class TestController.old extends Controller

        {


            function __construct()

            {

                 $this->middleware('permission:test-view|test-create|test-update|test-delete', ['only' => ['index']]);

                 $this->middleware('permission:test-create', ['only' => ['create','store']]);

                 $this->middleware('permission:test-update', ['only' => ['edit','update']]);

                 $this->middleware('permission:test-delete', ['only' => ['destroy']]);

                 $this->model='App\Test';

                 $this->key_word='Test';

                 $this->key_word_plural='Tests';

                 $this->route_index='admin.tests.index';

                 $this->route_create='admin.tests.create';

                 $this->route_edit='admin.tests.edit';

                 $this->route_update='admin.tests.update';

                 $this->route_destroy='admin.tests.destroy';

                 $this->route_store='admin.tests.store';


                 $this->input_password=[];

                 $this->update_input_password=[];

                 $this->input_image=['banner'];

                 $this->update_input_image=['banner'];

                 $this->except_columns=['_token','banner'];

                 $this->update_except_columns=['_token','banner'];


                 $this->validation_rules=[

                    'title' => 'required',

                ];

                 $this->update_validation_rules=[

                      'title' => 'required',

                ];

                 $this->update_validation_rules_for_unique=[];


                 $this->table_columns=[];

                 $this->form_inputs= [{"id":1,"crud_id":1,"title":"Image","design":3,"data":null,"type":null,"sample_image_height":null,"sample_image_width":null,"name":"image","label_class":null,"placeholder":null,"div_class":null,"input_id":null,"autosize":null,"required":null,"checked":null,"cols":null,"disable":null,"rows":null,"sample_image":null,"value_index":null,"view_index":null,"create":null,"update":null,"math":null,"order":null,"is_active":null,"created_at":"2020-10-06 06:26:18","updated_at":null,"deleted_at":null},{"id":2,"crud_id":1,"title":"Order","design":1,"data":null,"type":"number","sample_image_height":null,"sample_image_width":null,"name":"order","label_class":null,"placeholder":"Enter Order","div_class":null,"input_id":"","autosize":null,"required":null,"checked":null,"cols":null,"disable":null,"rows":null,"sample_image":null,"value_index":null,"view_index":null,"create":null,"update":null,"math":null,"order":null,"is_active":null,"created_at":"2020-10-06 06:26:18","updated_at":null,"deleted_at":null},{"id":3,"crud_id":1,"title":"Is Featured","design":5,"data":null,"type":null,"sample_image_height":null,"sample_image_width":null,"name":"is_featured","label_class":null,"placeholder":null,"div_class":null,"input_id":"","autosize":null,"required":null,"checked":null,"cols":null,"disable":null,"rows":null,"sample_image":null,"value_index":null,"view_index":null,"create":null,"update":null,"math":null,"order":null,"is_active":null,"created_at":"2020-10-06 06:26:18","updated_at":null,"deleted_at":null},{"id":4,"crud_id":1,"title":"Is Active","design":5,"data":null,"type":null,"sample_image_height":null,"sample_image_width":null,"name":"is_active","label_class":null,"placeholder":null,"div_class":null,"input_id":"","autosize":null,"required":null,"checked":1,"cols":null,"disable":null,"rows":null,"sample_image":null,"value_index":null,"view_index":null,"create":null,"update":null,"math":null,"order":null,"is_active":null,"created_at":"2020-10-06 06:26:18","updated_at":null,"deleted_at":null}];


                $this->update_form_inputs=[];
            }


            public function index(Request $request)

            {

                $data = app($this->model)->orderBy('id','DESC');

                \n
        $page_title = $this->key_word;
        $info=new stdClass();
        $info->title = $this->key_word_plural;
        $info->first_button_title = 'Add '.$this->key_word;
        $info->first_button_route = $this->route_create;
        $info->description = 'These  all are '.$this->key_word_plural;

        $perPage = request('perPage', 20);
        $data = $data->paginate($perPage);

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

<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DB;
use \stdClass;


class CrudController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->key_word="Crud";
    }
    public function create($id)
    {
         $this_crud=DB::table('cruds')->where('id',$id)->first();
         $form_inputs=DB::table('crud_inputs')->join('crud_columns','crud_columns.id','crud_inputs.crud_column_id')->where('can_add',1)->where('is_active',1)->where('crud_inputs.crud_id',$id)->select('value','key','crud_column_id','is_active')->get()->groupBy('crud_column_id');
         $inputs='[
              ';
         foreach ($form_inputs as $data) {
              $inputs=$inputs.'     [
                   ';
              foreach ($data as $row) {
                   $inputs=$inputs.'"'.$row->key.'" => "'.$row->value.'",
                   ';
             }
             $inputs=$inputs.'],
             ';
         }
         $inputs=$inputs.']';
         $this->form_inputs=$inputs;

         // $input=(object) array_filter((array) $input, fn($value) => !is_null($value) && $value !== '');
         $form_inputs=DB::table('crud_inputs')->join('crud_columns','crud_columns.id','crud_inputs.crud_column_id')->where('can_edit',1)->where('is_active',1)->where('crud_inputs.crud_id',$id)->select('value','key','crud_column_id','is_active')->get()->groupBy('crud_column_id');

         $inputs='[
              ';
         foreach ($form_inputs as $data) {
              $inputs=$inputs.'     [
                   ';
              foreach ($data as $row) {
                   $inputs=$inputs.'"'.$row->key.'" => "'.$row->value.'",
                   ';
             }
             $inputs=$inputs.'"update" => "1",
             ';
             $inputs=$inputs.'],
             ';
         }
         $inputs=$inputs.']';
         $this->update_form_inputs=$inputs;


         $table_columns=DB::table('crud_view_columns')->join('crud_view_designs','crud_view_columns.id','crud_view_designs.crud_view_column_id')->where('crud_view_columns.is_active',1)->where('crud_view_columns.crud_id',$id)->select('value','key','crud_view_column_id')->get()->groupBy('crud_view_column_id');
         $columns='[
              ';
         foreach ($table_columns as $data) {
              $columns=$columns.'     [
                   ';
              foreach ($data as $row) {
                   $columns=$columns.'"'.$row->key.'" => "'.$row->value.'",
                   ';
             }
             $columns=$columns.'],
             ';
         }
         $columns=$columns.']';
         $this->table_columns=$columns;




         $this_crud_file = "../app/Http/Controllers/Admin/_Cruds/BaseController.php";
        $file = "../app/Http/Controllers/Admin/".$this_crud->controller.".php";

        copy($this_crud_file,$file);

        $append_text = "<?php


        namespace App\Http\Controllers\Admin;


        use Illuminate\Http\Request;
        use App\Http\Controllers\Controller;
        use Illuminate\Support\Facades\Hash;
        use Illuminate\Support\Facades\Storage;
        use DB;
        use \stdClass;


        class ".$this_crud->controller." extends Controller
        {

            function __construct()
            {
                 \$this->middleware('permission:".$this_crud->permission."-view|".$this_crud->permission."-create|".$this_crud->permission."-update|".$this_crud->permission."-delete', ['only' => ['index']]);
                 \$this->middleware('permission:".$this_crud->permission."-create', ['only' => ['create','store']]);
                 \$this->middleware('permission:".$this_crud->permission."-update', ['only' => ['edit','update']]);
                 \$this->middleware('permission:".$this_crud->permission."-delete', ['only' => ['destroy']]);
                 \$this->model='App\\".$this_crud->model."';
                 \$this->key_word='".$this_crud->crud_key_word."';
                 \$this->key_word_plural='".$this_crud->crud_key_word_plural."';
                 \$this->route_index='admin.".$this_crud->resource_path.".index';
                 \$this->route_create='admin.".$this_crud->resource_path.".create';
                 \$this->route_edit='admin.".$this_crud->resource_path.".edit';
                 \$this->route_update='admin.".$this_crud->resource_path.".update';
                 \$this->route_destroy='admin.".$this_crud->resource_path.".destroy';
                 \$this->route_store='admin.".$this_crud->resource_path.".store';

                 \$this->input_password=[];
                 \$this->update_input_password=[];
                 \$this->input_image=['banner'];
                 \$this->update_input_image=[];
                 \$this->except_columns=['_token'];
                 \$this->update_except_columns=['_token'];

                 \$this->validation_rules=[];
                 \$this->update_validation_rules=[];
                 \$this->update_validation_rules_for_unique=[];

                 \$this->table_columns=".$this->table_columns.";

                 \$this->form_inputs=".$this->form_inputs.";

                \$this->update_form_inputs=".$this->update_form_inputs.";
            }


            public function index(Request \$request)
            {
                \$data = app(\$this->model)->orderBy('id','DESC');";


          $file_text=$append_text.file_get_contents($this_crud_file);
          file_put_contents($file, $file_text);

          $model_file_text="";
          $model_columns=DB::table('crud_columns')->where('crud_id',$id)->pluck('column');
          // return $model_columns;

          $model_file_text="<?php

          namespace App;

          use Illuminate\Database\Eloquent\Model;

          class ".$this_crud->model." extends Model
          {
               protected \$fillable = ".$model_columns.";
          }

     ?>
";


          $model_file = "../app/".$this_crud->model.".php";
          file_put_contents($model_file, $model_file_text);
          $route_file_text="";
          $route_file_text="<?php

          Route::group(['as'=>'admin.', 'prefix' => 'admin', 'middleware' => 'auth:admin' ], function(){
               ";
               $resources_route="";
          $cruds=DB::table('cruds')->select('resource_path','controller')->get();
          foreach ($cruds as $crud) {
               $resources_route=$resources_route."Route::resource('".$crud->resource_path."','Admin\\".$crud->controller."');";
          }
          $route_file_text=$route_file_text.$resources_route."
          });
";

          $route_file = "../routes/crud.php";
          file_put_contents($route_file, $route_file_text);

          $permission=Permission::firstOrCreate(['name' => $this_crud->permission.'-view','guard_name' => 'admin']);
          $permission->assignRole('Developer');

          $permission=Permission::firstOrCreate(['name' => $this_crud->permission.'-create','guard_name' => 'admin']);
          $permission->assignRole('Developer');

          $permission=Permission::firstOrCreate(['name' => $this_crud->permission.'-update','guard_name' => 'admin']);
          $permission->assignRole('Developer');

          $permission=Permission::firstOrCreate(['name' => $this_crud->permission.'-delete','guard_name' => 'admin']);
          $permission->assignRole('Developer');

          return redirect()->route('admin.admin-menus.index')
                        ->with('success',$this->key_word.' updated successfully');




    }
}

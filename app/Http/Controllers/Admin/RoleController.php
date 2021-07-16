<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use DB;


class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:role-view|role-create|role-update|role-delete', ['only' => ['index']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-update', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $page_title = 'Roles';
        $permissions = Permission::all();
        $permissions=$permissions->GroupBy('guard_name');
        $roles = Role::orderBy('id','DESC')->paginate(5);
        return view('admin.roles.index',compact('roles','page_title','permissions'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return 0;
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return 0;
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
         return 0;

    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return 0;
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
        $this->validate($request, [
            'guard_name' => 'required',
       ]);

       $role = Role::find($id);

       foreach ($request->except(['_token','_method','guard_name']) as $index => $value) {
            $permission_id='';

            $permission=Permission::where('name',$index)->where('guard_name',$request->guard_name)->first();
            if ($permission!='') {
                 $permission_id=$permission->id;
            }else{
                 $permission = Permission::create(['guard_name' => $request->guard_name, 'name' => $index]);
                 $permission_id=$permission->id;

            }

            if ($value==1) {

                 DB::table('role_has_permissions')
                 ->insertOrIgnore(
                      ['role_id' => $id, 'permission_id' => $permission_id],
                      ['role_id' => $id, 'permission_id' => $permission_id]
                 );


                 $role->givePermissionTo($permission);

            }else{

                 DB::table("role_has_permissions")->where('role_id',$id)->where('permission_id',$permission_id)->delete();

                 $role->revokePermissionTo($permission);

            }

       }



        return redirect()->route('admin.roles.index')
                        ->with('success','Role updated successfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table("roles")->where('id',$id)->delete();
        return redirect()->route('admin.roles.index')
                        ->with('success','Role deleted successfully');
    }
}

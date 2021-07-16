<?php
function PermissionsByRole($role_id)
     {

          $permissions=\DB::table('role_has_permissions')->join('permissions','permissions.id','role_has_permissions.permission_id')->select('permissions.name')->where('role_has_permissions.role_id',$role_id)->get()->toArray();
          return $permissions;

     }

function ExportData($columns, $indexes, $rows, $format){
     $data=array();
     array_push($data,$columns);

     foreach($rows as $row)
    {

          $item=array();

          for($i=0;$i<count($columns);$i++){
               $item[$columns[$i]]=$row->{$indexes[$i]};

          }

          array_push($data,$item);

    }

    // return dd($data);

    return \Excel::download(new \App\CollectionExport($data), date("Y-m-d h:i:s").'_result.'.$format);


}


function Roles()
{
     return \Spatie\Permission\Models\Role::orderby('id', 'DESC')->get();
}



function ArrayToColumns($model,$ids,$column_index)

{
     return $model_values =  app($model)->select('id',$column_index)->whereIn('id', $ids)->get();

}



function ModelData($model_name)
{
     return app($model_name)->where('is_active', 1)->orderby('order', 'DESC')->get();
}

function CutString($text, $maxchar, $end='...') {



     if ($maxchar <= 0) {

          $output = $text;

     }elseif (strlen($text) > $maxchar) {
          $words = preg_split('/\s/', $text);
          // return dd($text);
          $output = '';
          $i = 0;
          while (1) {
               $length = strlen($output)+strlen($words[$i]);

               if ($length > $maxchar) {
                    if ($i>0) {
                         break;
                    }else{
                         $output=substr($words[$i], 0, $maxchar);
                         break;
                    }
               }
               else {
                    $output .= " " . $words[$i];
                    ++$i;
               }

          }
          $output .= $end;
     }
     else {
          $output = $text;
     }

     return $output;

}


 function IsActiveSession($user_id,$my_session){

     $user=\App\User::where('id',$user_id)->select('active_session')->first();
     // return dd($user->active_session);
     if ($user!='') {

          if($user->active_session==""||$user->active_session==$my_session){

              return "true";

          }else{

              return "false";

          }


     }else{
          return "false";
     }



}


function UserInfo($user_id)
     {
          return \DB::table('users')
          ->where('id', $user_id)->first();
     }

function User(){

     return Auth::User();

}




function MyAsideMenu()
{

     $base_permissions=array();

     foreach(user()->getAllPermissions() as $row){

          $base_permission = substr($row->name,0,strrpos($row->name, '-', -1));

          if (in_array($base_permission, $base_permissions)){

          }else{
               array_push($base_permissions,$base_permission);
          }

     }

     $menus=array(

          // Dashboard
          [
            'title' => 'Dashboard',
            'root' => true,
            'icon' => 'flaticon2-graphic-1',
            'page' => 'admin/dashboard',
            'new-tab' => false,
          ],

          // Profile
          [
            'title' => 'Profile',
            'root' => true,
            'icon' => 'fas fa-user',
            'page' => 'admin/profile',
            'new-tab' => false,
          ],

          // Client
          [
            'title' => 'Client',
            'root' => true,
            'icon' => 'fas fa-user',
            'page' => 'admin/clients',
            'new-tab' => false,
          ],

          // Testimonial
          [
            'title' => 'Testimonial',
            'root' => true,
            'icon' => 'fas fa-user',
            'page' => 'admin/testimonials',
            'new-tab' => false,
          ],

          // about us
          [
            'title' => 'About us',
            'root' => true,
            'icon' => 'fas fa-user',
            'page' => 'admin/abouts',
            'new-tab' => false,
          ],

          // categories
          [
            'title' => 'Categories',
            'root' => true,
            'icon' => 'fas fa-user',
            'page' => 'admin/categories',
            'new-tab' => false,
          ],

          // projects
          [
            'title' => 'Projects',
            'root' => true,
            'icon' => 'fas fa-user',
            'page' => 'admin/projects',
            'new-tab' => false,
          ],

          // teams
          [
            'title' => 'Our Team',
            'root' => true,
            'icon' => 'fas fa-user',
            'page' => 'admin/teams',
            'new-tab' => false,
          ],
     );

     if (in_array('slider', $base_permissions)){
          $menu=[

               'title' => 'Sliders',
               'root' => true,
               'icon' => 'far fa-user',
               'page' => 'admin/sliders',
               'new-tab' => false,
          ];
          array_push($menus,$menu);
     }


     if (in_array('gallery', $base_permissions)){
          $menu=[
               'title' => 'Gallery',
               'root' => true,
               'icon' => 'flaticon2-graphic-1',
               'page' => 'admin/gallery',
               'new-tab' => false,
          ];
          array_push($menus,$menu);
     }

     if (in_array('testimonial', $base_permissions)){
          $menu=[

               'title' => 'Testimonials',
               'root' => true,
               'icon' => 'flaticon2-graphic-1',
               'page' => 'admin/testimonials',
               'new-tab' => false,
          ];
          array_push($menus,$menu);
     }


     if (in_array('subscription', $base_permissions)){
          $menu=[

               'title' => 'Subscriptios',
               'root' => true,
               'icon' => 'far fa-user',
               'page' => 'admin/subscriptions',
               'new-tab' => false,
          ];
          array_push($menus,$menu);
     }

     if (in_array('contact-us', $base_permissions)){
          $menu=[

               'title' => 'Contact Us',
               'root' => true,
               'icon' => 'flaticon2-graphic-1',
               'page' => 'admin/contact-us',
               'new-tab' => false,
          ];
          array_push($menus,$menu);
     }

     $submenus=array();

     if (in_array('blog', $base_permissions)){
          $submenu=[
               'title' => 'Blogs',
               'bullet' => 'dot',
               'page' => 'admin/blogs',
          ];
          array_push($submenus,$submenu);
     }

     if (in_array('faq', $base_permissions)){
          $submenu=[
               'title' => 'Faqs',
               'bullet' => 'dot',
               'page' => 'admin/faqs',
          ];
          array_push($submenus,$submenu);
     }

     if (in_array('terms-conditions', $base_permissions)){
          $submenu=[
               'title' => 'Terms Conditions',
               'bullet' => 'dot',
               'page' => 'admin/terms-conditions',
          ];
          array_push($submenus,$submenu);
     }

     if (in_array('privacy-policy', $base_permissions)){
          $submenu=[
               'title' => 'Privacy Policy',
               'bullet' => 'dot',
               'page' => 'admin/privacy-policy',
          ];
          array_push($submenus,$submenu);
     }

     if(count($submenus)>0){

          $menu=[
               'title' => 'Pages',
               'icon' => 'media/svg/icons/Layout/Layout-4-blocks.svg',
               'bullet' => 'dot', //you also can use 'line'
               'root' => true,
               'submenu' =>$submenus,
          ];
          array_push($menus,$menu);

     }

     if (in_array('social-media', $base_permissions)){
          $menu=[

               'title' => 'Social Media',
               'root' => true,
               'icon' => 'far fa-user',
               'page' => 'admin/social-media',
               'new-tab' => false,
          ];
          array_push($menus,$menu);
     }

     $menu_group=array();

     if (in_array('user', $base_permissions)){
          $menu=[
               'title' => 'Users',
               'root' => true,
               'icon' => 'far fa-user',
               'page' => 'admin/users',
               'new-tab' => false,
          ];
          array_push($menu_group,$menu);
     }

     if(count($menu_group)>0){

          $menu=[
               'section' => 'Admin Controls',
          ];

          array_push($menus,$menu);
          array_push($menus,$menu_group);

     }



     $menu_group=array();

     if (in_array('admin', $base_permissions)){
          $menu=[

               'title' => 'Admin',
               'root' => true,
               'icon' => 'flaticon2-user-1',
               'page' => 'admin/admins',
               'new-tab' => false,
          ];
          array_push($menu_group,$menu);
     }

     if (in_array('role', $base_permissions)){
          $menu=[

               'title' => 'Role',
               'root' => true,
               'icon' => 'flaticon2-protected',
               'page' => 'admin/roles',
               'new-tab' => false,
          ];
          array_push($menu_group,$menu);
     }

     if (in_array('setting', $base_permissions)){
          $menu=[

               'title' => 'Setting',
               'root' => true,
               'icon' => 'flaticon2-gear',
               'page' => 'admin/settings',
               'new-tab' => false,
          ];
          array_push($menu_group,$menu);
     }

     if(count($menu_group)>0){

          $menu=[
               'section' => 'Super Admin Controls',
          ];

          array_push($menus,$menu);
          array_push($menus,$menu_group);

     }



     if (in_array('developer', $base_permissions)){

          $menu=[
               'section' => 'Developer Controls',
          ];
          array_push($menus,$menu);

          $menu=[
               'title' => 'Developer',
               'icon' => 'media/svg/icons/Layout/Layout-4-blocks.svg',
               'bullet' => 'dot', //you also can use 'line'
               'root' => true,
               'submenu' => [
                    [
                        'title' => 'Admin Menus',
                        'bullet' => 'dot',
                        'page' => "admin/admin-menus"
                    ],
                    [
                        'title' => 'Inputs',
                        'bullet' => 'dot',
                        'page' => "admin/developer/inputs"
                    ],
                    [
                        'title' => 'Columns',
                        'bullet' => 'dot',
                        'page' => "admin/developer/columns"
                    ],
                    [
                        'title' => 'Database Queries',
                        'bullet' => 'dot',
                        'page' => "admin/developer/database-queries"
                    ],
               ]
          ];
          array_push($menus,$menu);

     }
     // Custom






     $menu=[
          'title' => 'Logout',
          'root' => true,
          'icon' => 'fas fa-sign-out-alt',
          'page' => 'admin/logout',
          'new-tab' => false,
     ];

     array_push($menus,$menu);

     return $menus;

          // [
          //   'title' => 'Menu',
          //   'icon' => 'media/svg/icons/Layout/Layout-4-blocks.svg',
          //   'bullet' => 'dot', //you also can use 'line'
          //   'root' => true,
          //   'submenu' => [
          //       [
          //           'title' => 'Submenu 1',
          //           'bullet' => 'dot',
          //           'submenu' => [
          //               [
          //                   'title' => 'Sub Submenu 1',
          //                   'page' => 'menu/submenu-1/sub-submenu-1',
          //               ],
          //               [
          //                    'title' => 'Sub Submenu 2',
          //                    'page' => 'menu/submenu-1/sub-submenu-2',
          //               ],
          //           ]
          //       ],
          //       [
          //           'title' => 'Sub Menu 2',
          //           'bullet' => 'dot',
          //           'submenu' => [
          //               [
          //                   'title' => 'Sub Submenu 3',
          //                   'bullet' => 'line',
          //                   'submenu' => [
          //                        [
          //                           'title' => 'Sub Sub Submenu 1',
          //                           'page' => 'menu/submenu-2/sub-submenu-3/sub-sub-submenu-1',
          //                       ],
          //                       [
          //                            'title' => 'Sub Submenu 4',
          //                            'page' => 'menu/submenu-2/sub-submenu-3/sub-sub-submenu-2',
          //                       ]
          //                   ]
          //               ],
          //               [
          //                   'title' => 'Sub Submenu 4',
          //                   'page' => 'custom/apps/profile/profile-2'
          //               ]
          //           ]
          //       ]
          //   ]
          // ],

}




?>

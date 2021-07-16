<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminMenu extends Model
{
     protected $fillable = [
        'title','url','crud_id','is_newtab','icon','bullet','parent_id', 'order','is_active'
    ];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Base extends Model
{
     protected $fillable = [
        'title','banner', 'order','is_active'
    ];
}

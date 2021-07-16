<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
     protected $fillable = [
        'title','banner', 'url','order','is_active'
    ];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
     protected $fillable = [
        'title','short_description','description','banner','publish_at','writer', 'order','is_featured','is_active'
    ];
}

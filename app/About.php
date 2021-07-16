<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
     protected $fillable = [
        'video_url','description', 'url','banner', 'order','is_active'
    ];
}

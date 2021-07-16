<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Crud extends Model
{
     protected $fillable = [
        'resource_path', 'controller','model','data_table','permission','crud_key_word','crud_key_word_plural','order','is_active'
    ];
}

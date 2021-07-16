<?php

          Route::group(['as'=>'admin.', 'prefix' => 'admin', 'middleware' => 'auth:admin' ], function(){
               Route::resource('orders','Admin\OrderController');
          });

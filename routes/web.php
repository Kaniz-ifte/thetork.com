<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', 'PagesController@index')->name('index');
Route::get('/home', 'HomeController@index')->name('home');



Route::get('/users/logout', 'Auth\LoginController@userLogout')->name('user.logout');
Route::get('/logout', 'Auth\LoginController@userLogout')->name('logout');

Route::prefix('admin')->group(function() {
  Route::get('/login', 'Admin\Auth\LoginController@showLoginForm')->name('admin.login');
  Route::post('/login', 'Admin\Auth\LoginController@login')->name('admin.login.submit');
  Route::get('/', 'Admin\Auth\LoginController@showLoginForm')->name('admin');
  Route::get('/dashboard', 'Admin\DashboardController@Index')->name('admin.dashboard');
  Route::get('/logout', 'Admin\Auth\LoginController@logout')->name('admin.logout');

  // Password reset routes
  Route::post('/password/email', 'Admin\Auth\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
  Route::get('/password/reset', 'Admin\Auth\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
  Route::post('/password/reset', 'Admin\Auth\ResetPasswordController@reset');
  Route::get('/password/reset/{token}', 'Admin\Auth\ResetPasswordController@showResetForm')->name('admin.password.reset');
});

Route::group(['middleware' => ['auth:admin']], function() {


Route::get('/dashboard', function () {
    return redirect('/admin/dashboard');
});

Route::get('/language/{locale}', function ($locale) {
     Session::put('locale',$locale);
    return redirect()->back();
});

});

Route::get('/login/{provider}', 'Auth\LoginController@redirectToProvider')->name('login.social-media');
Route::get('/login/{provider}/callback', 'Auth\LoginController@handleProviderCallback');



// Admin Group
Route::group(['as'=>'admin.', 'prefix' => 'admin', 'middleware' => 'auth:admin' ], function(){

    Route::resource('users','Admin\UserController');
    Route::resource('roles','Admin\RoleController');
    Route::resource('admins','Admin\AdminController');
    Route::resource('settings','Admin\SettingController');
    Route::resource('sliders','Admin\SliderController');
    Route::resource('gallery','Admin\GalleryController');
    Route::resource('admin-menus','Admin\AdminMenuController');
    Route::resource('subscriptions','Admin\SubscriptionController');
    Route::resource('blogs','Admin\BlogController');
    Route::resource('terms-conditions','Admin\TermsConditionController');
    Route::resource('faqs','Admin\FaqController');
    Route::resource('privacy-policy','Admin\PrivacyPolicyController');
    Route::resource('social-media','Admin\SocialMediaController');
    Route::resource('testimonials','Admin\TestimonialController');
    Route::resource('clients','Admin\ClientController');
    Route::resource('categories','Admin\CategoryController');
    Route::resource('abouts','Admin\AboutController');
    Route::resource('projects','Admin\ProjectController');
    Route::resource('teams','Admin\TeamController');

    Route::get('profile', 'Admin\ProfileController@index')
    ->name('profile');
    Route::get('developer/inputs', 'Admin\DeveloperController@inputs')
    ->name('developer.inputs');
    Route::get('developer/columns','Admin\DeveloperController@columns')
    ->name('developer.columns');
    Route::get('developer/database-queries','Admin\DeveloperController@databaseQueryLog')
    ->name('developer.database-queries');
    Route::get('save-nested-admin-menus','Admin\AdminMenuController@saveNestedMenus')
    ->name('save-nested-admin-menus');
    Route::get('/create-crud/{id}', 'Admin\CrudController@create')->name('create-crud');

});


// Route::post('/pay', 'SslCommerzPaymentController@index');


Route::post('/pay-via-ajax', 'SslCommerzPaymentController@payViaAjax')->name('pay-via-ajax');

Route::post('/success', 'SslCommerzPaymentController@success');
Route::post('/fail', 'SslCommerzPaymentController@fail');
Route::post('/cancel', 'SslCommerzPaymentController@cancel');

Route::post('/ipn', 'SslCommerzPaymentController@ipn');

Auth::routes();

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

//Route::get('/', function () {
//    return view('welcome');
//});

Auth::routes();



Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {
    Route::get('/dashboard', 'HomeController@index')->name('home');
    // Post Routes
    Route::get('/post/index', 'PostsController@index')->name('post.index');
    Route::get('/post/create', 'PostsController@create')->name('post.create');
    Route::post('/post/store', 'PostsController@store')->name('post.store');
    Route::get('/post/edit/{id}', 'PostsController@edit')->name('post.edit');
    Route::post('/post/update/{id}', 'PostsController@update')->name('post.update');
    Route::get('/post/delete/{id}', 'PostsController@destroy')->name('post.delete');
    Route::get('/post/trashed', 'PostsController@trashed')->name('post.trashed');
    Route::get('/post/kill/{id}', 'PostsController@kill')->name('post.kill');
    Route::get('/post/restore/{id}', 'PostsController@restore')->name('post.restore');
    // Category Routes
    Route::get('/category/index', 'CategoriesController@index')->name('category.index');
    Route::get('/category/create', 'CategoriesController@create')->name('category.create');
    Route::post('/category/store', 'CategoriesController@store')->name('category.store');
    Route::get('/category/edit/{id}', 'CategoriesController@edit')->name('category.edit');
    Route::post('/category/update/{id}', 'CategoriesController@update')->name('category.update');
    Route::get('/category/delete/{id}', 'CategoriesController@destroy')->name('category.delete');
    // Tags Routes
    Route::get('/tag/index', 'TagsController@index')->name('tag.index');
    Route::get('/tag/create', 'TagsController@create')->name('tag.create');
    Route::post('/tag/store', 'TagsController@store')->name('tag.store');
    Route::get('/tag/edit/{id}', 'TagsController@edit')->name('tag.edit');
    Route::post('/tag/update/{id}', 'TagsController@update')->name('tag.update');
    Route::get('/tag/delete/{id}', 'TagsController@destroy')->name('tag.delete');
    // Users Routes
    Route::get('/user/index', 'UsersController@index')->name('user.index');
    Route::get('/user/create', 'UsersController@create')->name('user.create');

    Route::post('/user/store', 'UsersController@store')->name('user.store');
    Route::get('/user/admin/{id}', 'UsersController@admin')->name('user.admin');
    Route::get('/user/notAdmin/{id}', 'UsersController@notAdmin')->name('user.notAdmin');
    Route::get('/user/delete/{id}', 'UsersController@destroy')->name('user.delete');
    Route::get('/user/profile', 'ProfilesController@index')->name('user.profile');
    Route::post('/user/profile/update/', 'ProfilesController@update')->name('user.profile.update');
    // Settings Routes
    Route::get('/settings', 'SettingsController@index')->name('settings');
    Route::post('/settings/update', 'SettingsController@update')->name('settings.update');

});

// Frontend Routes
Route::get('/', 'FrontEndController@index')->name('index');
Route::get('/{slug}', 'FrontEndController@singlePost')->name('post.single');
Route::get('/category/{id}', 'FrontEndController@category')->name('category.single');
Route::get('/tag/{id}', 'FrontEndController@tag')->name('tag.single');
// Search function
Route::get('/results/', 'FrontEndController@search')->name('search');
Route::post('/subscribe', function () {
    $email = request()->email;

    Newsletter::subscribe($email);

    Session::flash('subscribed', 'Successfully Subscribed.');
    return redirect()->back();
});


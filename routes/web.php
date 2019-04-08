<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Описание мать его
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('professions', ['uses' => 'MainController@getProf']);
Route::match(['get','post'],'forma',['uses'=>'MainController@forma','as'=>'forma']);
Route::get('prof/{page}', ['uses' => 'MainController@loo', 'as' => 'loo']);
Route::get('/',['uses'=>'MainController@getIndex','as'=>'indexpage']);
Route::get('university', ['uses' => 'MainController@univ', 'as' => 'univ']);
Route::get('univer/{page}', ['uses' => 'MainController@un', 'as' => 'un']);
Route::get('{page}', ['uses' => 'MainController@spets', 'as' => 'spets']);



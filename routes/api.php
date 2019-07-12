 <?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/





Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['role:admin']], function () {
    Route::get('/actions-admin', 'HomeController@actionAdmin');
});


Route::group(['middleware' => ['role:subscriber']], function () {
    Route::get('/actions-subscriber', 'HomeController@actionSubscriber');
    
});

Route::post('/login', 'AuthController@login');
Route::post('/register', 'AuthController@register');


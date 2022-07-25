<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\ProjectController;
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
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/new_register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    // Route::get('/user-profile', [AuthController::class, 'userProfile']);    
});
Route::group(['middleware' => ['jwt.verify'],
'prefix' => 'auth'], function() {
    Route::get('/user-profile2', [AuthController::class, 'userProfile']);
    
    Route::post('/product', [ProductController::class, 'addProduct2']); 
    Route::delete('/product/{id}', [ProductController::class, 'destroy']);

    Route::post('/company', [CompanyController::class, 'addCompany']); 
    Route::delete('/company/{id}', [CompanyController::class, 'destroy']);

    Route::post('/service', [ServiceController::class, 'addService']);
    Route::delete('/service/{id}', [ServiceController::class, 'destroy']);

    Route::post('/project', [ProjectController::class, 'addProject']);
    Route::delete('/project/{id}', [ProjectController::class, 'destroy']);
    
    
Route::get('/company', [CompanyController::class, 'index']);
Route::get('/service', [ServiceController::class, 'index']); 
Route::get('/product', [ProductController::class, 'index']); 
Route::get('/project', [ProjectController::class, 'index']);

});

Route::get('/company', [CompanyController::class, 'index']);
Route::get('/service', [ServiceController::class, 'index']); 
Route::get('/product', [ProductController::class, 'index']);
Route::get('/project', [ProjectController::class, 'index']);

// Route::post('/product1', [ProductController::class, 'addProduct']); 
// Route::post('/product2', [ProductController::class, 'addProduct2']); 
// Route::get('/', function () {
//     return view('welcome');
// });
// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

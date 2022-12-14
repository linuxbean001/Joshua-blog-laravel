<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use  App\Http\Controllers\PostController;
use  App\Http\Controllers\CommentController;
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

Route::get("data",[PostController::class,'list']);
Route::get("blogDetail/{id}",[PostController::class,'byid']);
Route::get("relatedBlog/{by_Category}",[PostController::class,'reletedPost']);
Route::Post("addpost",[PostController::class,'AddPost']);
Route::Post("editBlog",[PostController::class,'editPost']);
Route::Post("deletePost/{id}",[PostController::class,'deletePost']);
Route::Post("addComment",[CommentController::class,'postComment']);
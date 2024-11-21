<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;


Route::get('/', [PostController::class, 'index'])->name('post.index');
// Route::get('post/{id}', [PostController::class, 'show'])->name('post.show');
Route::resource('post', PostController::class);

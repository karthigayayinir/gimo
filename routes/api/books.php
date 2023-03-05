<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'BookController@index')->name('books.search.index');

<?php

namespace App\Http\Controllers\Api;

use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return LengthAwarePaginator|mixed
     */
    public function index(Request $request)
    {
      // print_r($request);
      if ($request->has('q')) {
        return Book::searchBooks($request->input('q'));
      }
      return Book::loadAll();
    }
    
}

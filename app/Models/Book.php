<?php

namespace App\Models;

use Database\Factories\BookFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Book extends Model
{
    // use soft delete instead of permanent delete
    use SoftDeletes;
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'books';

    protected $fillable = ['title', 'author', 'description', 'publication_year', 'published_at'];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['published_at'];

    /**
     * Load all for admin and paginate
     *
     * @return Paginator
     */
    public static function loadAll()
    {
        return static::latest()->get();
    }

    /**
     * load all published with pagination
     *
     * @return Paginator
     */
    public static function searchBooks($term)
    {
      return Book::where('title', 'like', '%' . $term . '%')->orWhere('author', 'like', '%' . $term . '%')->get();
    }

    protected static function newFactory(): BookFactory
    {
        return BookFactory::new();
    }
}

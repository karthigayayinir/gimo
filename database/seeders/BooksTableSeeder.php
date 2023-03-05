<?php

namespace Database\Seeders;

use App\Models\Book;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;

class BooksTableSeeder extends Seeder
{
    /**
     * Run the database seeders.
     *
     * @return void
     */
    public function run()
    {
      Book::factory(50)->create();
    }
}

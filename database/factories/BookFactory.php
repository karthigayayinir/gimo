<?php


namespace Database\Factories;


use App\Models\Book;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookFactory extends Factory
{
    protected $model = Book::class;

    public function definition()
    {
        $title = $this->faker->sentence;

        return [
            'title' => $title,
            'author' => Str::slug($title),
            'description' => $this->faker->sentence(15),
            'publication_year' => Carbon::now()->format('Y'),
        ];
    }
}

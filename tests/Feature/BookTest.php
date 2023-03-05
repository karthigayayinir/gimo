<?php

namespace Tests\Feature;

use App\Models\User;
use App\Models\Book;
use Carbon\Carbon;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Support\Str;

class BookTest extends TestCase
{
    use DatabaseTransactions;

    public $user;

    public function setUp(): void
    {
        parent::setUp();
    }

    
}

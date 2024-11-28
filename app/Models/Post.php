<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Post extends Model {

    use HasFactory;

    protected $table = 'post';

    protected $fillable = ['titulo', 'entrada', 'texto'];

    // de post a comment: de 1 a muchos
    public function comments(): HasMany {
        return $this->HasMany(Comment::class, 'post_id'); // si tiene algun otro nombre que no sea post_id, se debe especificar
    }
    
}

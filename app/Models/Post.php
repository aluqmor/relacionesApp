<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model {

    protected $table = 'post';

    protected $fillable = ['titulo', 'entrada', 'texto'];

    // de post a comment: de 1 a muchos
    public function comments(): HasMany {
        return $this->HasMany(Comment::class, 'post_id');
    }
    
}

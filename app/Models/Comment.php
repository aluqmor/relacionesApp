<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model {

    protected $table = 'comment';

    protected $fillable = ['apodo', 'correo', 'post_id', 'texto'];

    // de comment a post: de muchos a 1
    public function post(): BelongsTo {
        return $this->belongsTo(Post::class, 'post_id');
    }

}

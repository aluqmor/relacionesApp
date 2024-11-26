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

    public static function boot() {
        parent::boot();

        static::creating(function ($comment) {
            $lastComment = Comment::where('correo', $comment->correo)
                ->orderBy('created_at', 'desc')
                ->first();

            if ($lastComment && $lastComment->created_at->diffInMinutes(now()) < 30) {
                throw new \Exception('Solo puedes enviar un comentario cada 30 minutos.');
            }
        });
    }

}

<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Post;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) {
        $validated = $request->validate([
            'correo' => 'required|email|min:6|max:100',
            'texto' => 'required|min:20',
        ]);
    
        $comment = new Comment();
        $comment->correo = $request->correo;
        $comment->texto = $request->texto;
        $comment->post_id = $request->post_id;
    
        try {
            $comment->save();
            return redirect()->route('post.show', $comment->post_id)->with('message', 'El comentario se ha enviado');
        } catch (\Exception $e) {
            return back()->withInput()->withErrors(['correo' => $e->getMessage()]);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Comment $comment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Comment $comment)
    {
        return view('comment.edit', compact('comment'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Comment $comment)
    {
        $validated = $request->validate([
            'correo' => 'required|min:6|max:100',
            'texto' => 'required|min:20',
        ]);

        if ($request->correo !== $comment->correo) {
            return back()->withErrors(['correo' => 'El correo no coincide con el original.']);
        }

        $comment->texto = $request->texto;

        try {
            $comment->save();
            return redirect()->route('post.show', $comment->post_id)->with('message', 'El comentario se ha actualizado');
        } catch (\Exception $e) {
            return back()->withInput()->withErrors('message', 'El comentario no se ha podido actualizar');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Comment $comment)
    {
        //
    }
}

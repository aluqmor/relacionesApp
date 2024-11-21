<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index() {
        $posts = Post::orderBy('id' , 'desc')->get();
        return view('post.index', [
            'posts' => $posts
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create() {
        return view('post.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) {
        $validated = $request->validate([
            'entrada' => 'required|min:60|max:250|unique:post',
            'texto' => 'required|min:100',
            'titulo' => 'required|min:25|max:60|unique:post',
        ]);
        $post = new Post($request->all()); // rellena todos los campos que tenga puesto fillable
        $post->texto = strip_tags($post->texto, env('PERMITTED_TAGS', ''));//sanitize
        try {
            $post->save();
            return redirect('/')->with('message', 'La noticia se ha insertado');
        }catch(\Exeption $e) {
            return back()->withInput()->withErrors('message', 'La noticia no se ha podido insertar');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post) {
        // retorna view de vista de blade, con datos de un  post
        return view('post.show', ['post' => $post]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {
        // retorna de view de vista blade de un post
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post)
    {
        // validate try catch con update
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        // try catch con delete
    }
}

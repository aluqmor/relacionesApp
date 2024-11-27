@extends('base')


@section('content')
{!! strip_tags($post->texto, env('PERMITTED_TAGS')) !!} <!-- // peligro controlado -->
<div class="d-flex justify-content-end mb-4 mt-4">
    <form action="{{ route('post.destroy', $post->id) }}" method="post" onsubmit="return confirm('¿Estás seguro de que deseas eliminar este artículo?');" class="me-2">
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-danger text-uppercase">Eliminar artículo</button>
    </form>
    <a class="btn btn-primary text-uppercase" href="{{ route('post.edit', $post->id) }}">Editar artículo</a>
</div>

<hr>

@foreach($post->comments as $comment)
<div class="card mb-3">
    <div class="card-body">
        <p class="card-text">{{ $comment->texto }}</p>
        <footer class="blockquote-footer">
            @if($comment->created_at->diffInMinutes(now()) < 10)
                <a href="{{ route('comment.edit', $comment->id) }}">{{ $comment->apodo }}</a>
            @else
                {{ $comment->apodo }}
            @endif
            - {{ $comment->created_at->locale('es')->isoFormat('hh:mm dddd D \d\e MMMM \d\e\l Y') }}
            @if($comment->updated_at != $comment->created_at)
                <br>Editado: {{ $comment->updated_at->locale('es')->isoFormat('hh:mm dddd D \d\e MMMM \d\e\l Y') }}
            @endif
        </footer>
    </div>
</div>
@endforeach

<!-- <hr>

<form action="{{ route('comment.store') }}" method="post">
    @csrf

    <input type="hidden" id="post_id" name="post_id" value="{{ $post->id }}">

    <div class="mb-3">
        <label for="correo" class="form-label">Correo</label>
        <input type="email" class="form-control" id="correo" name="correo"  minlength="6" 
                maxlength="100" required value="{{ old('correo') }}" placeholder="Introduce tu correo">
    </div>
    <div class="mb-3">
        <label for="apodo" class="form-label">Apodo</label>
        <input type="text" class="form-control" id="apodo" name="apodo"  minlength="5"
                maxlength="40" required value="{{ old('apodo') }}" placeholder="Introduce tu apodo">
    </div>

    <div class="mb-3">
        <label for="texto" class="form-label">Comentario</label>
        <textarea class="form-control" id="texto" required minlength="20" name="texto" placeholder="Introduce tu comentario">{{ old('texto') }}</textarea>
    </div>
    <hr>
    <div class="mb-3 float-end">
        <button type="submit" class="btn btn-secondary">Enviar comentario</button>
    </div>
</form> -->

<hr>

<form action="{{ route('post.comment', ['post' => $post->id]) }}" method="post">
    @csrf

    <input type="hidden" id="post_id2" name="post_id" value="{{ $post->id }}">
    
    <div class="mb-3">
        <label for="correo2" class="form-label">Correo</label>
        <input type="email" class="form-control" id="correo2" name="correo"  minlength="6" 
                maxlength="100" required value="{{ old('correo') }}" placeholder="Introduce tu correo">
    </div>
    <div class="mb-3">
        <label for="apodo2" class="form-label">Apodo</label>
        <input type="text" class="form-control" id="apodo2" name="apodo"  minlength="5"
                maxlength="40" required value="{{ old('apodo') }}" placeholder="Introduce tu apodo">
    </div>

    <div class="mb-3">
        <label for="texto2" class="form-label">Comentario</label>
        <textarea class="form-control" id="texto2" required minlength="20" name="texto" placeholder="Introduce tu comentario">{{ old('texto') }}</textarea>
    </div>
    <hr>
    <div class="mb-3 float-end">
        <button type="submit" class="btn btn-secondary">Enviar comentario</button>
    </div>
</form>
@endsection

@section('titulo')
{{ $post->titulo }}
@endsection

@section('entrada')
{{ $post->entrada }}
@endsection

@section('by')
Publicado por
<a href="#">izvserver</a>
el {{ $post->created_at->locale('es')->isoFormat('dddd D \d\e MMMM \d\e\l Y') }}
@endsection
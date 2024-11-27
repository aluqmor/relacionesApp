@extends('base')

@section('content')
<form action="{{ route('post.update', $post->id) }}" method="post">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label for="titulo" class="form-label">Título</label>
        <input type="text" class="form-control" id="titulo" name="titulo" minlength="25" 
                maxlength="60" required value="{{ old('titulo', $post->titulo) }}" placeholder="Introduce el título del artículo">
    </div>
    <div class="mb-3">
        <label for="entrada" class="form-label">Entrada</label>
        <input type="text" class="form-control" id="entrada" name="entrada" minlength="60"
                maxlength="250" required value="{{ old('entrada', $post->entrada) }}" placeholder="Introduce la entrada del artículo">
    </div>

    <div class="mb-3">
        <label for="texto" class="form-label">Texto</label>
        <textarea class="form-control" id="texto" required minlength="100" name="texto" placeholder="Introduce el artículo">{{ old('texto', $post->texto) }}</textarea>
    </div>
    <hr>
    <div class="mb-3 float-end">
        <button type="submit" class="btn btn-secondary">Actualizar</button>
    </div>
</form>
@endsection
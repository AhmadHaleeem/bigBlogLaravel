@extends('layouts.app')

@section('styles')
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
@endsection
@section('content')
    @if(count($errors) > 0)
        <ul class="list-group">
            @foreach($errors->all() as $error)
                <li class="list-group-item text-danger">{{ $error }}</li>
            @endforeach
        </ul>
    @endif

   <div class="panel panel-default">
       <div class="panel-heading">
             Edit post: {{ $post->title }}
       </div>
       <div class="panel-body">
           <form action="{{ route('post.update', ['id' => $post->id]) }}" method="POST" enctype="multipart/form-data">
               {{ csrf_field() }}
               <div class="form-group">
                   <label for="title">Title</label>
                   <input type="text" name="title" value="{{ $post->title }}" class="form-control">
               </div>

               <div class="form-group">
                   <label for="featured">Featured Image</label>
                   <input type="file" name="featured" class="form-control">
               </div>

               <div class="form-group">
                   <label for="category">Select Category</label>
                   <select name="category_id" id="category_id" class="form-control">
                       @foreach($categories as $category)
                           <option value="{{ $category->id}}"
                            @if($post->category->id == $category->id)
                                selected
                            @endif
                           >{{ $category->name }}</option>
                       @endforeach

                   </select>
               </div>

               <div class="form-group">
                   <label for="tags">Select Tags</label>
                   @foreach($tags as $tag)
                       <div class="checkbox">
                           <label>
                               <input type="checkbox" name="tags[]" value="{{ $tag->id }}"
                                @foreach($post->tags as $single_tag)
                                    @if($tag->id == $single_tag->id)
                                        checked
                                    @endif
                                @endforeach
                               > {{ $tag->tag }}
                           </label>
                       </div>
                   @endforeach
               </div>

               <div class="form-group">
                   <label for="content">Content</label>
                   <textarea id="summernote" name="content" class="form-control" >{{ $post->content }}</textarea>
               </div>

               <div class="form-group">
                   <div class="text-center">
                       <input type="submit" class="btn btn-success" value="Store Post">
                   </div>
               </div>

           </form>
       </div>
   </div>
@endsection
@section('scripts')
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
</script>

@endsection
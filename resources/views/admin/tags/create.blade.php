@extends('layouts.app')


@section('content')
    @include('admin.includes.errors')

   <div class="panel panel-default">
       <div class="panel-heading">
             Create a new Tag
       </div>
       <div class="panel-body">
           <form action="{{ route('tag.store') }}" method="POST">
               {{ csrf_field() }}
               <div class="form-group">
                   <label for="tag">Tag</label>
                   <input type="text" name="tag" class="form-control">
               </div>


               <div class="form-group">
                   <div class="text-center">
                       <input type="submit" class="btn btn-success" value="Store Tag">
                   </div>
               </div>

           </form>
       </div>
   </div>


@endsection
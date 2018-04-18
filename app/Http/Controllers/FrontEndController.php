<?php

namespace App\Http\Controllers;

use App\Category;
use App\Setting;
use Illuminate\Http\Request;
use App\Post;
use App\Tag;
class FrontEndController extends Controller
{
    public function index() {
        $settings = Setting::first();
        $categories = Category::take(5)->get();
        return view('index', compact('settings', 'categories'))
            ->with('first_post', Post::orderBy('created_at', 'DESC')->first())
            ->with('second_post', Post::orderBy('created_at', 'DESC')->skip(1)->take(1)->get()->first())
            ->with('third_post', Post::orderBy('created_at', 'DESC')->skip(2)->take(1)->get()->first())
            ->with('tutorials', Category::find(4))
            ->with('laravel_framework', Category::find(2))
            ->with('settings', Setting::first());

    }
    public function singlePost($slug) {

        $post= Post::where('slug', $slug)->first();

            $next_id = Post::where('id', '>', $post->id)->min('id');
            $prev_id = Post::where('id', '<', $post->id)->max('id');



        return view('single')->with('post', $post)
            ->with('title', $post->title)
            ->with('categories', Category::take(5)->get())
            ->with('settings', Setting::first())
            ->with('tags', Tag::all())
            ->with('next', Post::find($next_id))
            ->with('previous', Post::find($prev_id));
    }

    public function category($id) {
        $category = Category::find($id);
        return view('category')->with('category', $category)
                               ->with('title', $category->name)
                                ->with('categories', Category::take(5)->get())
                                ->with('settings', Setting::first())
                                ->with('tags', Tag::all());

    }

    public function tag($id) {
        $tag = Tag::find($id);
        return view('tag')->with('tag', $tag)
            ->with('title', $tag->tag)
            ->with('categories', Category::take(5)->get())
            ->with('settings', Setting::first());
    }

    public function search() {
        $posts = Post::where('title', 'like', '%' . request('query') . '%')->get();
        return view('results')
            ->with('posts', $posts)
            ->with('title', 'Search results : ' . request('query'))
            ->with('settings', Setting::first())
            ->with('categories', Category::take(5)->get())
            ->with('query', request('query'));
    }
}

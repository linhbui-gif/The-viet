<?php

namespace App\Http\Controllers\Enduser;

use App\blog_categories;
use App\blog_posts;
use App\blog_tags;
use App\Introduce;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BlogController extends Controller
{

    public function __construct()
    {
        $_config = \App\Config::find(26);
        return view()->share('_config', $_config);
    }

    public function newDetail($slug)
    {
        $course = blog_posts::where("status", "active")->where('slug', $slug)->first();
        $related = $course->posts()->pluck('related_post_id')->toArray();
        $related_post = DB::table('blog_posts')->whereIn('id', $related)->get();
        $data['new'] = $course;
        $data['related'] = $related_post;
        return view(config("edushop.end-user.pathView") . "blogDetail")->with($data);
    }
    public function introDetail($slug)
    {
        $course = Introduce::where("status", "active")->where('slug', $slug)->first();
//        $related = $course->posts()->pluck('related_post_id')->toArray();
//        $related_post = DB::table('huongdan')->whereIn('id', $related)->get();
        $data['new'] = $course;
//        $data['related'] = $related_post;
        return view(config("edushop.end-user.pathView") . "tutorialDetail")->with($data);
    }

    public function newList()
    {
        return view(config("edushop.end-user.pathView") . "blogList");
    }

    public function blogListByCategory(Request $request, $slug_category)
    {
        $category = Blog_categories::where('slug', $slug_category)->where('status', 'active')->first();

        if (!$category) {
            $category = Blog_categories::where('id', $slug_category)->where('status', 'active')->first();
        }
        if (!$category) {
            return abort(404);
        }

        $products = $category->news()->where('blog_posts.status', 'active')->orderBy('order_no','asc')->latest()->paginate(9);
        $data['blogs'] = $products;
        $data['category'] = $category;
        return view(config("edushop.end-user.pathView") . "postListByCategory")->with($data);
    }

    public function getBlog_ls_tag($slug)
    {
        $data['tag'] = blog_tags::where('slug', $slug)->first();
        $data['news'] = $data['tag']->posts()->paginate(6);
        $data['category'] = blog_categories::select("*")->orderby('id')->get();
        $data['tags'] = blog_tags::select('*')->orderby('id')->get();//query builder
        return view(config("edushop.end-user.pathView"). "blogByTags" )->with($data);
    }


}

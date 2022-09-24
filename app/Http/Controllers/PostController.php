<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\blogpost;
class PostController extends Controller
{
    //
    function getData()
    {
        return ["name"=>"anil"];
    } 

    function list() {
        $blogpost = blogpost::all();
        return $blogpost;
      }
     
    function byid($id) {
        $blogpost = blogpost::find($id);
        return $blogpost;
      }
      
    function reletedPost($by_Category) {
        $blogpost = blogpost::where('by_Category',"=",$by_Category)->take(3)->get();
        return $blogpost;
      }

    function AddPost(Request $req) {
      try{
        $AddPost = new blogpost;
        $AddPost->title = $req->input('title');
        $AddPost->desc = $req->input('desc');
        if($req->hasFile('img_url')){
          $image = $req->file('img_url');
          $image_name = $image->getClientOriginalName();
          $image->move(public_path('/images'),$image_name);
          $image_path = "/images/" . $image_name;
          $AddPost->img_url=$image_path;
        }
        $AddPost->by_Category = $req->input('by_Category');
        $AddPost->by_Author = $req->input('by_Author');
        $AddPost->save();
        return response()->json(['success' => true, 'message' => 'Add Post Successfully'], 200);
    } catch(Exception $e){
        return response()->json([
            "error" => "could_not_register",
            "message" => "Unable to register user"
        ], 400);
    }
      }
   

}

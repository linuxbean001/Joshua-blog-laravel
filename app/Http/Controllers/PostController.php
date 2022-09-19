<?php

namespace App\Http\Controllers;

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
}

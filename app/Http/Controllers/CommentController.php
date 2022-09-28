<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;

class CommentController extends Controller
{
    //
    function postComment(Request $req) 
    {
        $comments = new Comment;
        $comments ->name = $req->input('name');
        $comments ->email = $req->input('email');
        $comments ->message= $req->input('message');
        $result = $comments->save();
        if($result)
        {
          return ["Result"=>"Data has been saved"];
        }
        else 
        {
          return["Result"=>"Process has been failed"];
        }
        
      }
}

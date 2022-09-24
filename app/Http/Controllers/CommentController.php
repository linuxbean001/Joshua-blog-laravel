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
        $comments ->name = $req->name;
        $comments ->id = $req->id;
        $comments ->email = $req->email;
        $comments ->message= $req->message;
        $result = $comments->save ();
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

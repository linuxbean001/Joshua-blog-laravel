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
        return blogpost::all();
      }
}

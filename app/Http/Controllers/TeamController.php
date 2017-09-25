<?php

namespace App\Http\Controllers;

class TeamController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index()
    {
        return response()->json(['data'=>[
            ['img'=>'ashish', 'member_name'=>'Ashish Patel', 'member_title'=>'Web Developer', 'fb_link'=>'https://www.facebook.com/ashishpatel0720'],
            ['img'=>'manohar', 'member_name'=>'Manohar Lakkoju', 'member_title'=>'Web Developer', 'fb_link'=>'https://www.facebook.com/manohar.lakkoju.9'],
        ]],200);
    }

    public function store(){

    }

    //
}

<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{

    public function index()
    {
       $contacts=Contact::all();
        return response()->json(['data'=>
            $contacts
        ],200);
    }

   public function store(Request $request)
    {
        $this->validate($request,[
                'name'=>'required|max:255', //name of contactor
                'email'=>"required|email",
                "contact"=>"max:20",
                "message"=>"required|max:700",
            ]
        );

        $data = $request->all();

        $new_contact=Contact::create($data);
        return response()->json(['data'=>[

            $new_contact
        ]],201);
    }

    //
}

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
                "contact"=>"nullable|max:20",
                "message"=>"required|max:700",
            ]
        );

        $data = $request->all();

        $new_contact = new Contact;
        $new_contact->id=0;//so that it could become first element to be shown
        $new_contact->name = $data['name'];
        $new_contact->email = $data['email'];
        $new_contact->contact = $data['contact'];
        $new_contact->message = $data['message'];
        $new_contact->save();

        return response()->json(['data'=>[
            $new_contact
        ]],201);
    }

    //
}

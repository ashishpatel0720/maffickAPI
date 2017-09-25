<?php

namespace App\Http\Controllers;
use App\Event;
use Illuminate\Http\Request;

class EventController extends Controller
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
        return response()->json(['data'=>Event::all()],200);
    }

    public function show($event_slug){
        $event_details=Event::where("slug",$event_slug)->get();
        if(count($event_details)!=0)
            return response()->json(['data'=>$event_details],200);

        return response()->json(['error'=>[
            'No Event found for this slug'
        ]
        ],204);
    }

    public function store(Request $request)
    {
        $this->validate($request,[
                'name'=>'required|min:6|max:255',
                'slug'=>'required|unique:event|max:255',
                'category'=>'required',
                'problem_statement'=>'required',
                'description'=>'required',
                'name1'=>'required|max:255',
                'email1'=>"required|email",
                "contact1"=>"nullable|max:20",
                "name2"=>"required|max:255",
                "email2"=>"required|email",
                "contact2"=>"nullable|max:20",
                "faculty"=>"nullable",
            ]
        );
        $data = $request->all();

        $event = new Event;

        $event->id=0;//so that it could become first element to be shown
        $event->name = $data['name'];
        $event->slug = str_slug($data['name']);
        $event->category = $data['category'];
        $event->description = $data['description'];
        $event->problem_statement = $data['problem_statement'];
        $event->name1 = $data['name1'];
        $event->email1 = $data['email1'];
        $event->contact1 = $data['contact1'];
        $event->name2 = $data['name2'];
        $event->email2 = $data['email2'];
        $event->contact2 = $data['contact2'];
        $event->faculty = $data['faculty'];
        $event->save();

        return response()->json(['data'=>[
            $event
        ]]);
    }
    //
}

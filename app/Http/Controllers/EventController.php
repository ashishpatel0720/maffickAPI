<?php

namespace App\Http\Controllers;
use App\CollegeEvent;
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
        return response()->json(['data'=>CollegeEvent::all()],200);
    }

    public function show($event_slug){
        $event_details=CollegeEvent::where("slug",$event_slug)->get();
        if(count($event_details)!=0)
            return response()->json(['data'=>$event_details],200);

        return response()->json(['error'=>[
            'No Event found for this slug'
        ]
        ],204);
    }

    public function store(Request $request)
    {
        $request->slug=str_slug($request->name);
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

        $new_event = new CollegeEvent;
        $new_event->id=0;//so that it could become first element to be shown
        $new_event->name = $data['name'];
        $new_event->slug = $data['slug'];
        $new_event->category = $data['category'];
        $new_event->description = $data['description'];
        $new_event->problem_statement = $data['problem_statement'];
        $new_event->name1 = $data['name1'];
        $new_event->email1 = $data['email1'];
        $new_event->contact1 = $data['contact1'];
        $new_event->name2 = $data['name2'];
        $new_event->email2 = $data['email2'];
        $new_event->contact2 = $data['contact2'];
        $new_event->faculty = $data['faculty'];
        $new_event->save();

        return response()->json(['data'=>[
            $new_event
        ]]);
    }
    //
}

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
        ],200);
    }

    public function store(Request $request)
    {
        $request['slug']=str_slug($request['name']); //adding slug from name as it was not passed

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

        $new_event = new Event;
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
        ]],201);
    }
    public function edit(Request $request,$slug)
    {
//        $request->slug=str_slug($request['name']); //adding slug from name as it was not passed
//        dd('hello');
        //name can't be updated only
        $event=Event::where("slug",$slug)->first();

        if(count($event)==0){ //if event for slug not  found
            return response()->json(['error'=>[
                'No Event found for this slug'
            ]
            ],200);
        }


//        dd('done');

        $this->validate($request,[ //all old validations apply here 
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
        ]],200);
    }
    public function destroy($slug)
    {
        $event=Event::where("slug",$slug)->first();

        if(count($event)==0){ //if event for slug not  found
            return response()->json(['error'=>[
                'No Event found for this slug'
            ]
            ],200);
        }
          $temp=clone $event;
          $event->delete();
          return response()->json(['data'=>[
            $event //temperary is being send because original has been dele
        ]],200);
    }



}

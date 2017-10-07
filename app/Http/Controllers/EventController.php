<?php

namespace App\Http\Controllers;
use App\Event;
use App\EventCategory;
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
                'name'=>'required|max:255',
                'slug'=>'required|unique:event|max:255',
                'category'=>'required|in:'.implode(array_column(EventCategory::$categories,'name'),','),
                'problem_statement'=>'required',
                'description'=>'required',
                'name1'=>'required|max:255',
                'email1'=>"required|email",
                "contact1"=>"required|max:20",
                'description1'=>'required',

                //optional fields
                'longitude'=>'',
                'lattitude'=>'',
                'event_datatime'=>'date_format:"Y-m-d H:i:s"', //optional but valid time should be given
                "name2"=>"max:255",
                "email2"=>"email",
                "contact2"=>"max:20",
                'description2'=>'nullable', //not required
                "faculty"=>"max:255",
            ]
        );
        $data = $request->all();
        $new_event=Event::create($data);
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

        $this->validate($request,[ //all old validations apply here 
                'category'=>'required|in:'.implode(array_column(EventCategory::$categories,'name'),','),
                'problem_statement'=>'required',
                'description'=>'required',
                'name1'=>'required|max:255',
                'email1'=>"required|email",
                "contact1"=>"required|max:20",
                'description1'=>'required',

                //optional fields
                'longitude'=>'nullable',
                'lattitude'=>'nullable',
                'event_datatime'=>'date_format:"Y-m-d H:i:s"', //optional but valid time should be given
                "name2"=>"max:255",
                "email2"=>"email",
                "contact2"=>"max:20",
                'description2'=>'nullable', //not required
                "faculty"=>"max:255",
            ]
        );

        //
        $data=$request->all();

        //old will be updated by all new except name and slug
        $event->category = $data['category'];
        $event->description = $data['description'];
        $event->problem_statement = $data['problem_statement'];
        $event->name1 = $data['name1'];
        $event->email1 = $data['email1'];
        $event->contact1 = $data['contact1'];
        $event->description1 = $data['description1'];


        //optional fields may be empty, if they are empty then we have to replace the old ones
        $event->longitude = isset($data['longitude'])? $data['longitude']:null;
        $event->lattitude = isset($data['lattitude'])? $data['lattitude']:null;
        $event->event_datatime = isset($data['event_datatime'])? $data['event_datatime']:null;
        $event->name2 = isset($data['name2'])? $data['name2']:null;
        $event->email2 = isset($data['email2'])? $data['email2']:null;
        $event->contact2 = isset($data['contact2'])? $data['contact2']:null;
        $event->description2 = isset($data['description2'])? $data['description2']:null;
        $event->faculty = isset($data['faculty'])? $data['faculty']:null;
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
        $event->delete(); //delete entry from database
        return response()->json(['data'=>[
            $event
        ]],200);
    }

    public function categories()
    {

        return response()->json(['data'=>EventCategory::$categories],200);

    }

    public function eventByCategory($category)
    {
        $events=Event::where("category",$category)->get();
        if(count($events)!=0)
            return response()->json(['data'=>$events],200);

        return response()->json(['error'=>[
            'No Event found for this category'
        ]
        ],200);
    }
}

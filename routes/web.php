<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->group(['prefix' => 'api'], function () use ($router) {


    $router->get("/",function(){
//        return view("home");
    });
    $router->get('team', 'TeamController@index');
    $router->post("contacts",'ContactController@store');
  //  $router->get('/contacts','ContactController@index');

    //events
    $router->get("events",'EventController@index');
    $router->get("events/{event_slug}",'EventController@show');
    //$router->post("events","EventController@store");
                 //can update every thing except name
   // $router->put("events/{event_slug}/edit","EventController@edit");
    //$router->delete("events/{event_slug}/delete","EventController@destroy");

    //categories
    $router->get('/categories','EventController@categories');
    $router->get("/categories/{category}/events",'EventController@eventByCategory');
});

$router->get("/",function(){
    return redirect("api/");
});

////api for admin api only
//$router->group(['prefix' => 'admin/api'], function () use ($router){
//   //show all contacts
//});

$router->group(['prefix'=>'admin'],function () use ($router){
   $router->get('/',function(){
       //this view will start the vue application
//       return view("admin");
   });
});

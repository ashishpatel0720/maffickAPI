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
    $router->get('team', 'TeamController@index');
    $router->get("events",'EventController@index');
    $router->get("events/{event_slug}",'EventController@show');
    $router->post("events","EventController@store");
});
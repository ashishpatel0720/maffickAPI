<?php
/**
 * Created by PhpStorm.
 * User: ashish
 * Date: 25/9/17
 * Time: 2:41 PM
 */

namespace App;


use Illuminate\Database\Eloquent\Model;

class EventCategory extends Model
{
    public static $categories=[
        ['name'=>'informals','description'=>'lorem ipsum informals','imageurl'=>'imgUrl'],
        ['name'=>'competitions','description'=>'lorem ipsum competitions','imageurl'=>'imgUrl'],
        ['name'=>'workshops','description'=>'lorem ipsum workshops','imageurl'=>'imgUrl'],
        ['name'=>'lectures','description'=>'lorem ipsum lectures','imageurl'=>'imgUrl'],
        ['name'=>'exhibitions','description'=>'lorem ipsum exhibitions','imageurl'=>'imgUrl']
    ];
}
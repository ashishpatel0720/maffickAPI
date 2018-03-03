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
        [
            'name'=>'general',
            'description'=>'The time is almost upon us. The stage is almost set, its now upto us to make use of it. So, Come forward and enjoy your favourite nights with us,fun awaits as promised.',
            'imageurl'=>'imgUrl'
        ],

        [
            'name'=>'fashion',
            'description'=>'The time is almost upon us. The stage is almost set, its now upto us to make use of it. So, Come forward and enjoy your favourite nights with us,fun awaits as promised.',
            'imageurl'=>'imgUrl'
        ],
        [
            'name'=>'music',
            'description'=>'The time is almost upon us. The stage is almost set, its now upto us to make use of it. So, Come forward and enjoy your favourite nights with us,fun awaits as promised.',
            'imageurl'=>'imgUrl'
        ],
        [
            'name'=>'dance',
            'description'=>'The time is almost upon us. The stage is almost set, its now upto us to make use of it. So, Come forward and enjoy your favourite nights with us,fun awaits as promised.',
            'imageurl'=>'imgUrl'
        ],


    ];
}
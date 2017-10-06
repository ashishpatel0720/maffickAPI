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
        ['name'=>'pronites',
            'description'=>'The time is almost upon us. The stage is almost set, its now upto us to make use of it. 
             Come forward and enjoy your favourite nights with us. fun awaits as promised.',
            'imageurl'=>'imgUrl'],

        ['name'=>'competitions',
            'description'=>
        'Technology refers to the practical application of knowledge and also includes the capability and skills required to apply the knowledge.
         Therefore,Techfest presents a series of competitions intended to deepen the understanding of advance solutions in the
         areas of Science and Technology. 
         We invite you all to come forward think hard for  extremely mind bending competitions of this year'
            ,'imageurl'=>'imgUrl'],

//        ['name'=>'informals','description'=>'','imageurl'=>'imgUrl'],
//        ['name'=>'workshops','description'=>'','imageurl'=>'imgUrl'],
//        ['name'=>'lectures','description'=>'','imageurl'=>'imgUrl'],
//        ['name'=>'exhibitions','description'=>'','imageurl'=>'imgUrl']
    ];


}
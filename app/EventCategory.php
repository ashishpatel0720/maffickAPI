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
            'description'=>'The time is almost upon us. The stage is almost set, its now upto us to make use of it. So, Come forward and enjoy your favourite nights with us,fun awaits as promised.',
            'imageurl'=>'imgUrl'],

        ['name'=>'competitions',
            'description'=>
        'Technology refers to the practical application of knowledge and also includes the capability and skills required to apply the knowledge.Therefore,Techfest presents a series of competitions intended to deepen the understanding of advance solutions in the areas of Science and Technology.We invite you all to come forward think hard for  extremely mind bending competitions of this year.'
            ,'imageurl'=>'imgUrl'],

         ['name'=>'lectures',
            'description'=>
        'Step into the shoes of some of the most dynamic and pioneering personalities of Different Feilds, as they give you an insight into their lives and research. Inspiring, Innovative, Revolutionary stories, we\'ve got them all here at Technosearch, MANIT Bhopal.'
        ,'imageurl'=>'imgUrl'],
        ['name'=>'exhibitions',
            'description'=>'Technosearch promises you a unique collection of exhibitions and leave you enchanted and astounded. Exhibitions here are one of those rare avenues where you can see and experience modern science and technology. It provides unparalleled variety and have something for each one to look forward.',
            'imageurl'=>'imgUrl'],

        ['name'=>'workshops',
            'description'=>'Technosearch Provides you unique workshops to make let you gain knowledge about some current flourishing technologies.',
            'imageurl'=>'imgUrl'],
//        ['name'=>'informals','description'=>'','imageurl'=>'imgUrl'],
    ];
}
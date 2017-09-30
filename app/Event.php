<?php
/**
 * Created by PhpStorm.
 * User: ashish
 * Date: 25/9/17
 * Time: 2:41 PM
 */

namespace App;


use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $table = 'event'; //so eloquent could know name of table associated with it
    protected $hidden = [
        'created_at','updated_at'
    ];
    protected $fillable=[
        'name',
        'slug',//will not be passed from post request
        'category',
        'problem_statement',
        'description',
        'event_datatime',
        'longitude',
        'lattitude',
        'name1',
        'email1',
        'contact1',
        'description1',
        'name2',
        'email2',
        'contact2',
        'description2',
        'faculty',
    ];
//   protected $guarded=[
//       'id',
//       'created_at',
//       'updated_at'
//   ];
}
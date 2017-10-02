<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table = 'contact';
    protected $hidden = [
        'updated_at'
    ];
    protected $fillable=[
        'name',
        'email',
        'contact',
        'message'
    ];
}

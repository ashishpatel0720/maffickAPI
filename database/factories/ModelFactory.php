<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\User::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->email,
    ];
});

$factory->define(App\CollegeEvent::class, function (Faker\Generator $faker) {
    return [
        'name' => randomElement(["Event1","Event2","Event4","Event3",]),
        'slug' => $faker->email,
        'category'=>randomElement(["Cat1","Cat2","Cat4","Cat3",]),
        'problem_statement'=>$faker->paragraph(),
        'description'=>$faker->paragraph(),
        'name1'=>$faker->name,
        'email1'=>$faker->email,
        'contact1'=>$faker->address,
        'name2'=>$faker->name,
        'email2'=>$faker->email,
        'contact2'=>$faker->address,
        'faculty'=>$faker->name,
    ];
});

$factory->define(App\Contact::class, function (Faker\Generator $faker) {
    return [
           'name'=>$faker->name,
            'email'=>$faker->email,
            'contact'=>$faker->address,
            'message'=>$faker->paragraph()
    ];
});
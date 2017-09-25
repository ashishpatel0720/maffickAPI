<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
                factory(Event::class,10)->create();

//        $this->call('EventTableSeeder');
//        $this->call('ContactTableSeeder');
    }
}

<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('event', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('slug');
            $table->string('category');
            $table->string('problem_statement'); //problem statement for event
            $table->text('description');
            $table->string('name1'); //cordinator1
            $table->string('email1');
            $table->string('contact1',13);
            $table->string('name2');//cordinator2
            $table->string('email2');
            $table->string('contact2',13);
            $table->string('faculty');//faculty cordinator
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('event');
    }
}

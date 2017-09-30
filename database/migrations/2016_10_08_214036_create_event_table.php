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

            //location
            $table->float('longitude',10,8);
            $table->float('lattitude',10,8);

            //time and date
            $table->timestamp('event_datatime', 0);

            //cordinator
            $table->string('name1'); //cordinator1
            $table->string('email1');
            $table->string('contact1',13);
            $table->string('description1');//description of cordinator1


            //optional
            /*
             * nullable() means if value is not available, null could be stored,
             * we are allowing column to store null in it.
             * However in validation , we might have to say validation to nullable, to allow null value to come
             * which is better than doing nothing, because it represent what we have.
             */
            $table->string('name2')->nullable();//cordinator2
            $table->string('email2')->nullable();
            $table->string('contact2',13)->nullable();
            $table->string('description2')->nullable();
            $table->string('faculty')->nullable();//faculty cordinator
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

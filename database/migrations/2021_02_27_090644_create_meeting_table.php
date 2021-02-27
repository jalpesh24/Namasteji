<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMeetingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meeting', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('name');
            $table->string('email', 255);
            $table->string('description');
            $table->string('type');
            $table->string('address', 255);
            $table->date('date');
            $table->string('phone');
            $table->unsignedInteger('market_category');
            $table->unsignedInteger('product_category');
            $table->unsignedInteger('country_zone');
            $table->unsignedInteger('state_zone');
            $table->unsignedInteger('district_zone');
            $table->string('country', 255);
            $table->string('state', 255);
            $table->string('city', 255);
            $table->boolean('is_active')->nullable()->default(1);
            $table->unsignedInteger('user_id');
            $table->timestamps();
            $table->dateTime('deleted_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('meeting');
    }
}

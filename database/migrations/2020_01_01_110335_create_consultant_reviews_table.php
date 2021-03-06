<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateConsultantReviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('consultant_reviews', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('consultancy_id');
            $table->foreign('consultancy_id')->references('id')->on('consultancies');

            $table->unsignedBigInteger('consultant');
            $table->foreign('consultant')->references('id')->on('users');

            $table->unsignedBigInteger('consumer');
            $table->foreign('consumer')->references('id')->on('users');

            $table->tinyInteger('rating');
            $table->text('review')->nullable();
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
        Schema::dropIfExists('consultant_reviews');
    }
}

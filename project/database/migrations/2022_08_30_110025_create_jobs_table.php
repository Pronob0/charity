<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('slug')->unique();
            $table->text('job_context')->nullable();
            $table->text('job_responsibility')->nullable();
            $table->text('educational_requirement')->nullable();
            $table->text('experience_requirement')->nullable();
            $table->string('position')->nullable();
            $table->string('company_name')->nullable();
            $table->integer('category_id')->unsigned();
            $table->integer('vacancy')->unsigned();
            $table->integer('employment_status')->default(1);
            $table->string('job_location')->nullable();
            $table->text('other_benefits')->nullable();
            $table->text('salary')->nullable();
            $table->text('application_deadline')->nullable();
            $table->tinyInteger('enable_fee')->default(0);
            $table->double('fee_amount', 8, 2)->default(0);
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('jobs');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCampaignsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('campaigns', function (Blueprint $table) {
            $table->id();
            $table->string('campaign_name');
            $table->string('slug');
            $table->integer('category_id');
            $table->string('photo')->nullable();
            $table->string('video_link')->nullable();
            $table->longText('description');
            $table->string('end_date');
            $table->float('goal')->nullable();
            $table->string('preloaded_amount')->nullable();
            $table->string('end_after')->nullable();
            $table->tinyInteger('featured')->default(0);
            $table->float('available_fund') ->default(0);
            $table->string('location')->nullable();
            $table->tinyInteger('status')->default(0);
            $table->tinyInteger('is_pending');
            $table->tinyInteger('user_id')->nullable();
            $table->tinyInteger('emergency')->default(0);
            $table->tinyInteger('reward')->default(0);
            $table->tinyInteger('is_gift')->default(0);
            $table->string('gifts')->nullable();
            $table->string('tags')->nullable();
            $table->string('meta_tag')->nullable();
            $table->text('meta_description')->nullable();
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
        Schema::dropIfExists('campaigns');
    }
}

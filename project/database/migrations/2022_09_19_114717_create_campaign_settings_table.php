<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCampaignSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('campaign_settings', function (Blueprint $table) {
            $table->id();
            $table->text('donation_charge_active_deactive_button');
            $table->text('donation_charge_form');
            $table->text('charge_amount_type');
            $table->integer('charge_amount');
            $table->integer('default_donation_amount');
            $table->integer('minimum_donation_amount');
            $table->text('donation_countdown');
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
        Schema::dropIfExists('campaign_settings');
    }
}

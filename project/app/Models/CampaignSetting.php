<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CampaignSetting extends Model
{
    use HasFactory;
    protected $fillable = [
        'donation_charge_active_deactive_button',
        'donation_charge_form',
        'charge_amount_type',
        'charge_amount',
        'default_donation_amount',
        'minimum_donation_amount',
        'donation_countdown',
    ];
    public $timestamps = false;
}

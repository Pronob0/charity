<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reward extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'goal_from',
        'goal_to',
        'reward_point',
        'reward_amount',
        'status',
        
    ];
}

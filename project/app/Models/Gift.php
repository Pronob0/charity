<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gift extends Model
{
    use HasFactory;
    protected $fillable = ['name','slug','photo','details', 'price', 'delivery_date', 'giftee_name','status', 'status'];

    public function campaigns()
    {
        return $this->hasMany(Campaign::class,'gifts');
    }
}

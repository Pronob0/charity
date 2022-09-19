<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Campaign extends Model
{
    use HasFactory;
    protected $fillable=['campaign_name','slug','category_id','description','end_date','end_after','goal','status','preloaded_amount','meta_tag','tags','photo','video_link','location','status','featured','is_pending','emergency','reward','is_gift','gifts','tags','meta_tag','meta_description','seocheck']; 

    
    public function category(){
        return $this->belongsTo(Category::class)->withDefault([
            'name' => 'Deleted',
        ]);
    }

    public function gift(){
        return $this->belongsTo(Gift::class)->withDefault([
            'name' => 'Deleted',
        ]);
    }
}

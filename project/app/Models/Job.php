<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;
    
    protected $fillable = ['title','slug','job_context','job_responsibility', 'educational_requirement', 'experience_requirement', 'position','company_name', 'category_id','vacancy','employment_status','job_location','salary','application_deadline','enable_fee','fee_amount','meta_tag','status','other_benefits'];
}

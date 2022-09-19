<?php

namespace App\Http\Resources;

use App\Models\Job;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;
use Mews\Purifier\Purifier;

class JobResource 
{
   
    public function store($input)
    {
        $data= new Job();
        $input['slug'] = Str::slug($input['slug']);
       
        if(isset($input['meta_tag'])){
            $input['meta_tag'] = tagFormat($input['meta_tag']);
        }

        if(isset($input['job_context'])){
         $job_context=clean($input['job_context']);
         $input['job_context'] = $job_context;
        }
        if(isset($input['job_responsibility'])){
        $job_responsibility=clean($input['job_responsibility']);
        $input['job_responsibility'] = $job_responsibility;
        }
        if(isset($input['educational_requirement'])){
        $educational_requirement=clean($input['educational_requirement']);
        $input['educational_requirement'] = $educational_requirement;
        }
        if(isset($input['experience_requirement'])){
        $experience_requirement=clean($input['experience_requirement']);
        $input['experience_requirement'] = $experience_requirement;
        }
        if(isset($input['other_benefits'])){
        $other_benefits=clean($input['other_benefits']);
        $input['other_benefits'] = $other_benefits;
        }

      
        $input['is_pending']='approved';
        $input['application_deadline']=Carbon::parse($input['application_deadline']);
        
        $data->create($input);
    }

    public function update(Job $job, $input)
    {
        
        $input['slug'] = Str::slug($input['slug']);
       
        if(isset($input['meta_tag'])){
            $input['meta_tag'] = tagFormat($input['meta_tag']);
        }

        if(isset($input['job_context'])){
         $job_context=clean($input['job_context']);
         $input['job_context'] = $job_context;
        }
        if(isset($input['job_responsibility'])){
        $job_responsibility=clean($input['job_responsibility']);
        $input['job_responsibility'] = $job_responsibility;
        }
        if(isset($input['educational_requirement'])){
        $educational_requirement=clean($input['educational_requirement']);
        $input['educational_requirement'] = $educational_requirement;
        }
        if(isset($input['experience_requirement'])){
        $experience_requirement=clean($input['experience_requirement']);
        $input['experience_requirement'] = $experience_requirement;
        }
        if(isset($input['other_benefits'])){
        $other_benefits=clean($input['other_benefits']);
        $input['other_benefits'] = $other_benefits;
        }

      
        $input['is_pending']='approved';
        $input['application_deadline']=Carbon::parse($input['application_deadline']);
        
        $job->update($input);
    }

    public function destroy(Job $job)
    {
        $job->delete();
    }
}

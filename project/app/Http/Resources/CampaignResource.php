<?php

namespace App\Http\Resources;

use App\Helpers\MediaHelper;
use App\Models\Campaign;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;

class CampaignResource 
{
    public function store($input){

        $data= new Campaign();
        $input['slug'] = Str::slug($input['slug']);
        if(isset($input['tags'])){
            $input['tags'] = tagFormat($input['tags']);
        }
         if(isset($input['preloaded_amount'])){
            $input['preloaded_amount'] = tagFormat($input['preloaded_amount']);
        }
        if(isset($input['meta_tag'])){
            $input['meta_tag'] = tagFormat($input['meta_tag']);
        }

        if($input['photo']){
            $status = MediaHelper::ExtensionValidation($input['photo']);
            if(!$status){
                return ['errors' => [0=>'file format not supported']];
            }
            $input['photo'] = MediaHelper::handleMakeImage($input['photo']);
        }
        $input['is_pending']='approved';
        $input['end_date']=Carbon::parse($input['end_date']);
        
        $data->create($input);

    }

    public function update(Campaign $campaign,$input){
        $input['slug'] = Str::slug($input['slug']);
        if(isset($input['tags'])){
            $input['tags'] = tagFormat($input['tags']);
        }
         if(isset($input['preloaded_amount'])){
            $input['preloaded_amount'] = tagFormat($input['preloaded_amount']);
        }
        if(isset($input['meta_tag'])){
            $input['meta_tag'] = tagFormat($input['meta_tag']);
        }
        if(isset($input['photo'])){
            $status = MediaHelper::ExtensionValidation($input['photo']);
            if(!$status){
                return ['errors' => [0=>'file format not supported']];
            }
            $input['photo'] = MediaHelper::handleMakeImage($input['photo']);
        }
        $input['end_date']=Carbon::parse($input['end_date']);
        $campaign->update($input);
    }

    public function destroy($data){
        MediaHelper::handleDeleteImage($data->photo);
        $data->delete();
    }
}

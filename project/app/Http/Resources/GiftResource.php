<?php

namespace App\Http\Resources;

use App\Helpers\MediaHelper;
use App\Models\Gift;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;

class GiftResource 
{

    public function store($input){

        $data = new Gift();
        $input['slug'] = Str::slug($input['slug']);
        $input['giftee_name'] = tagFormat($input['giftee_name']);

        if($input['photo']){
            $status = MediaHelper::ExtensionValidation($input['photo']);
            if(!$status){
                return ['errors' => [0=>'file format not supported']];
            }
            $input['photo'] = MediaHelper::handleMakeImage($input['photo']);
        }
        $data->create($input);
    }

    public function update($input,$data){
        $input['slug'] = Str::slug($input['slug']);
        $input['giftee_name'] = tagFormat($input['giftee_name']);
        if(isset($input['photo'])){
            $status = MediaHelper::ExtensionValidation($input['photo']);
            if(!$status){
                return ['errors' => [0=>'file format not supported']];
            }
            $input['photo'] = MediaHelper::handleUpdateImage($input['photo'],$data->photo);
        }
        $data->update($input);
    }
    public function destroy($data){
        MediaHelper::handleDeleteImage($data->photo);
        $data->delete();

    }
    
}

<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class CampaignRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $required = $this->campaign ? '' : 'required';
        $id = $this->campaign ? ','. $this->campaign->id : '';
       
        return  [
                'photo'       => $required.'|image|mimes:jpeg,jpg,png,svg',
                'campaign_name'       => 'required',
                'slug'       => 'required|unique:campaigns,slug'.$id,
                'description'       => 'required',
                'end_date'       => 'required',
                'end_after'       => 'required',
                'goal'       => 'required',

             ];
    }

    public function messages()
    {
        return [
            'photo.required' => 'Please select a photo',
            'photo.image' => 'Please select a valid photo',
            'photo.mimes' => 'Please select a valid photo',
            'campaign_name.required' => 'Please enter campaign name',
            'slug.required' => 'Please enter campaign slug',
            'slug.unique' => 'Campaign slug already exists',
            'description.required' => 'Please enter campaign description',
            'end_date.required' => 'Please enter campaign end date',
            'end_after.required' => 'Please enter campaign end after',
            'goal.required' => 'Please enter campaign goal',
        ];
    }
}

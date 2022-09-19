<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class RewardRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $required = $this->reward ? '' : 'required';
        $id = $this->reward ? ','. $this->reward->id : '';
        return [
            
                'name'          => 'required|max:255|unique:rewards,name'.$id,
                'goal_from'     => 'required|numeric',
                'goal_to'       => 'required|numeric',
                'reward_point'  => 'required|numeric',
                'reward_amount' => 'required|numeric',
                
            
        ];
    }


    public function messages(){
        return [
            'name.required' => __('Name field is required'),
            'name.unique'   => __('Name allready have been taken'),
            'goal_from.required'   => __('Goal from field is required'),
            'goal_from.numeric'   => __('Goal from must be numeric'),
            'goal_to.required'   => __('Goal to field is required'),
            'goal_to.numeric'   => __('Goal to must be numeric'),
            'reward_point.required'   => __('Reward point field is required'),
            'reward_point.numeric'   => __('Reward point must be numeric'),
            'reward_amount.required'   => __('Reward amount field is required'),
            'reward_amount.numeric'   => __('Reward amount must be numeric'),
        ];
    }
}

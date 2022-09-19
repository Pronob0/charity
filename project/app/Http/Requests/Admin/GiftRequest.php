<?php

namespace App\Http\Requests\Admin;

use Carbon\Carbon;
use Illuminate\Foundation\Http\FormRequest;

class GiftRequest extends FormRequest
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

        $required = $this->gift ? '' : 'required';
        $id = $this->gift ? ','. $this->gift->id : '';
        $now=Carbon::now();
        return  [
                'photo'       => $required.'|image|mimes:jpeg,jpg,png,svg',
                'name'       => 'required',
                'slug'       => 'required|unique:gifts,slug'.$id,
                'price'       => 'required',
                'delivery_date' => 'required',
                'giftee_name' => 'required',
                'status' => 'required',
                'delivery_date' => 'required|after:'.$now,
                
             ];
       
        
    }

    public function messages()
    {
        return [
            'name.required' => __('Name field is required'),
            'slug.required' => __('Slug field is required'),
            'slug.unique'   => __('Slug allready have been taken'),
            'price.required'   => __('Price field is required'),
            'photo.image'    => __('Image format not supported'),
            'photo.mimes'    => __('Image format not supported'),
            'delivery_date.required'    => __('Delivery date field is required'),
            'delivery_date.after'    => __('Delivery date must be after today'),
        ];
    }
}

<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class JobRequest extends FormRequest
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
        $required = $this->job ? '' : 'required';
        $id = $this->job ? ','. $this->job->id : '';
       
        return  [
                'fee_amount' => $this->enable_fee?'required': '',
                'title' => 'required',
                'slug' => 'required|unique:jobs,slug'.$id,
                'position' => 'required',
                'company_name' => 'required',
                'vacancy' => 'required',
                'job_location' => 'required',
                'status' => 'required',
                'salary' => 'required',

             ];
    }

    public function messages()
    {
        return [
            'fee.required' => 'Please enter fee',
            'title.required' => 'Please enter job title',
            'slug.required' => 'Please enter job slug',
            'slug.unique' => 'Job slug already exists',
            'position.required' => 'Please enter job position',
            'company_name.required' => 'Please enter company name',
            'vacancy.required' => 'Please enter vacancy',
            'job_location.required' => 'Please enter job location',
            'status.required' => 'Please select status',
            'salary.required' => 'Please enter salary',
        ];
    }
}

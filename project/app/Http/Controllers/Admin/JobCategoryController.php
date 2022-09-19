<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\JobCategoryRequest;
use App\Http\Resources\JobCategoryResource;
use App\Models\JobCategory;
use Dotenv\Util\Str;
use Illuminate\Http\Request;

class JobCategoryController extends Controller
{

    
   
    public function index()
    {
         
    
        $search = request('search');
        $status = null;
        if(request('status') == 'open')  $status = 1;
        if(request('status') == 'close')  $status = 2;
      
        $job_categories =  JobCategory::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('name','like',"%$search%");
        })->latest()->paginate(15);

        return view('admin.job-category.index',compact('job_categories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:job_categories',
            
        ]);

        $category = new JobCategory();
        $category->name     = $request->name;
        $category->slug    = $request->slug;
        $category->save();

        return back()->with('success','JobCategory added successfully');

       
    }

    public function update(Request $request,$id)
    {

       
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:categories,slug,'.$id,
           
            
        ]);

        $category = JobCategory::findOrFail($id);
        $category->name     = $request->name;
        $category->slug    = $request->slug;
        $category->status = $request->status;
        $category->update();

        return back()->with('success','JobCategory Updated successfully');

       
    }

    public function destroy($id)
    {
        $category = JobCategory::findOrFail($id);
        $category->delete();
        return back()->with('success','JobCategory Deleted successfully');
    }


    
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\JobRequest;
use App\Http\Resources\JobResource;
use App\Models\Job;
use App\Models\JobCategory;
use Illuminate\Http\Request;
use Purifier;
use Symfony\Component\Console\Input\Input;

class JobController extends Controller
{
    public function __construct(JobResource $resource) 
     {
        $this->resource = $resource;
     }
    public function index()
    {
         
    
        $search = request('search');
        $status = null;
        if(request('status') == 'open')  $status = 1;
        if(request('status') == 'close')  $status = 2;
      
        $jobs =  Job::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('name','like',"%$search%");
        })->latest()->paginate(15);

        return view('admin.job.index',compact('jobs'));
    }

    public function create()
    {

        $jcategories = JobCategory::all();
        return view('admin.job.create',compact('jcategories'));
    }

    public function store(JobRequest $request)
    {
        $input = $request->all();
        $this->resource->store($input);
        return back()->with('success','New job has been created');

    }

    public function edit(Job $job)
    {
        $jcategories = JobCategory::all();
        return view('admin.job.edit',compact('job','jcategories'));
    }

    public function update(JobRequest $request, Job $job)
    {
        $input = $request->all();
        $this->resource->update($job,$input);
        return back()->with('success','Job has been updated');
    }

    public function destroy(Job $job)
    {
        $this->resource->destroy($job);
        return back()->with('success','Job has been deleted');
    }
}

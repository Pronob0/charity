<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\CampaignRequest;
use App\Http\Resources\CampaignResource;
use App\Models\Campaign;
use App\Models\Category;
use App\Models\Gift;
use Illuminate\Http\Request;

class CampaignController extends Controller
{
     public function __construct(CampaignResource $resource) 
     {
        $this->resource = $resource;
     }
    public function index()
    {
         
    
        $search = request('search');
        $status = null;
        if(request('status') == 'open')  $status = 1;
        if(request('status') == 'close')  $status = 2;
      
        $campaigns =  Campaign::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('name','like',"%$search%");
        })->latest()->paginate(15);

        return view('admin.campaign.index',compact('campaigns'));
    }

    public function create(){
        $categories = Category::all();
        $gifts = Gift::where('status',1)->get();     
        return view('admin.campaign.create',compact('categories','gifts'));
    }

    public function store(CampaignRequest $request){

        $input = $request->all();
        $this->resource->store($input);
        return back()->with('success','New campaign has been created');
        
    }
    public function edit(Campaign $campaign){
       
        
        $categories = Category::all();
        $gifts = Gift::where('status',1)->get();     
        return view('admin.campaign.edit',compact('campaign','categories','gifts'));
    }

    public function update(CampaignRequest $request,Campaign $campaign){
        $input = $request->all();
        $this->resource->update($campaign,$input);
        return back()->with('success','Campaign has been updated');
    }

    public function show(Campaign $campaign){
        return view('admin.campaign.show',compact('campaign'));
    }
    public function destroy(Campaign $campaign){
        $this->resource->destroy($campaign);
        return back()->with('success','Campaign has been deleted');
    }
}

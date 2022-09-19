<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\GiftRequest;
use App\Http\Resources\GiftResource;
use App\Models\Gift;
use Illuminate\Http\Request;

class GiftController extends Controller
{

    public function __construct(GiftResource $resource)
   {
       $this->resource = $resource;
   }
    public function index()
    {
        
    
        $search = request('search');
        $status = null;
        if(request('status') == 'active')  $status = 1;
        if(request('status') == 'banned')  $status = 2;
      
        $gift =  Gift::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('name','like',"%$search%");
        })->latest()->paginate(15);

        return view('admin.gift.index',compact('gift'));
    }

    public function create()
    {
        return view('admin.gift.create');
    }
    public function store(GiftRequest $request)
    {
        $input = $request->only('name','slug','photo','details','price','delivery_date','status','giftee_name');
        $this->resource->store($input);
        return back()->with('success','New Gift has been created');
    }
    public function edit(Gift $gift)
    {
        
        return view('admin.gift.edit',compact('gift'));
    }
    public function destroy(Gift $gift)
    {
        $this->resource->destroy($gift);
        return back()->with('success','Gift Cause has been deleted');
    }

    public function update(GiftRequest $request, Gift $gift)
    {
        $this->resource->update($request->only('name','slug','photo','details','price','delivery_date','status','giftee_name'),$gift); 
        return back()->with('success','Gift Cause has been updated');
    }
    
      
    
}

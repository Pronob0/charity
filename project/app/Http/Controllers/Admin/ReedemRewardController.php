<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ReedemReward;
use Illuminate\Http\Request;

class ReedemRewardController extends Controller
{
    public function index()
    {
         
    
        $search = request('search');
        $status = null;
        if(request('status') == 'pending')  $status = 1;
        if(request('status') == 'completed')  $status = 2;
        if(request('status') == 'declined')  $status = 3;
      
        $reedem_request =  ReedemReward::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('name','like',"%$search%");
        })->latest()->paginate(15);
        return view('admin.reward.reedem_request',compact('reedem_request'));
    }
}

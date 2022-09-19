<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\RewardRequest;
use App\Http\Resources\RewardResource;
use App\Models\Reward;
use Illuminate\Http\Request;

class RewardController extends Controller
{

    
    public function index(){
        $search = request('search');
        $status = null;
        if(request('status') == 'active')  $status = 1;
        if(request('status') == 'banned')  $status = 2;
      
        $reward =  Reward::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('name','like',"%$search%");
        })->latest()->paginate(15);
        return view('admin.reward.index',compact('reward'));
    }

   

    public function create(){
        return view('admin.reward.create');
    }

    public function store(Request $request){
        $request->validate([
            'name'          => 'required|max:255|unique:rewards',
            'goal_from'     => 'required|numeric',
            'goal_to'       => 'required|numeric',
            'reward_point'  => 'required|numeric',
            'reward_amount' => 'required|numeric',
        ]);
        Reward::create($request->all());
        return redirect()->route('admin.reward.list')->with('success','Reward has been created successfully');  
    }

   
    public function update(Request $request,$id){
        $request->validate([
            'name'          => 'required|max:255|unique:rewards,name,'.$id,
            'goal_from'     => 'required|numeric',
            'goal_to'       => 'required|numeric',
            'reward_point'  => 'required|numeric',
            'reward_amount' => 'required|numeric',
        ]);
        Reward::find($id)->update($request->all());
        return redirect()->route('admin.reward.list')->with('success','Reward has been updated successfully');  
    }

    public function destroy($id){
        Reward::find($id)->delete();
        return redirect()->route('admin.reward.list')->with('success','Reward has been deleted successfully');  
    }
    
}

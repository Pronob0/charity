<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        // $roles = Role::all()->pluck('name');
    
        $search = request('search');
        $status = null;
        if(request('status') == 'active')  $status = 1;
        if(request('status') == 'banned')  $status = 2;
      
        $category =  Category::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('name','like',"%$search%");
        })->latest()->paginate(15);

        return view('admin.category.index',compact('category'));
    }
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:categories',
            
        ]);

        $category = new Category();
        $category->name     = $request->name;
        $category->slug    = $request->slug;
        $category->save();

        return back()->with('success','Category added successfully');

       
    }
    public function update(Request $request,$id)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:categories,slug,'.$id,
            'status'      => 'required',
            
        ]);

        $category = Category::findOrFail($id);
        $category->name     = $request->name;
        $category->slug    = $request->slug;
        $category->status = $request->status;
        $category->update();

        return back()->with('success','Category Updated successfully');

       
    }

    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        
        $category->delete();

        return back()->with('success','Category Deleted successfully');
    }
}

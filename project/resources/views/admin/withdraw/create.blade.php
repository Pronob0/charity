@extends('layouts.admin')

@section('title')
   @langg('Add New Withdraw Method')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1>@langg('Add New Withdraw Method')</h1>
        <a href="{{route('admin.withdraw')}}" class="btn btn-primary add"><i class="fa fa-backward"></i> @langg('Back')</a>
    </div>
</section>
@endsection

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <form action="" method="post">
                        @csrf

                            <div class="row">
                            
                                <div class="form-group col-md-12 col-12">

                                    <label for="">@langg('Method Name') <span class="text-danger">*</span> </label>
                                    <input type="text" name="name" class="form-control">
                                
                                </div> 
                                
                
                                <div class="form-group col-md-6 col-12">

                                    <label for="">@langg('Fixed charge')</label>
                                    <input type="text" name="fixed_charge" class="form-control" required>
                                
                                </div>  
                                <div class="form-group col-md-6 col-12">

                                    <label for="">@langg('Percent charge')</label>
                                    <input type="text" name="percent_charge" class="form-control" required>
                                
                                </div>  

                                
                                <div class="form-group col-md-6 col-12">

                                    <label for="">@langg('Minimum Amount')</label>
                                    <input type="text" name="min_amount" class="form-control">
                                
                                </div> 
                                
                                <div class="form-group col-md-6 col-12">

                                    <label for="">@langg('Maximum Amount')</label>
                                    <input type="text" name="max_amount" class="form-control">
                                
                                </div> 
    
                                    <div class="form-group col-md-6 col-12">

                                    <label for="">@langg('Select Currency')</label>
                                    <select name="currency" class="form-control">
                                        <option value="">@langg('Select')</option>
                                        @foreach ($currencies as $item)
                                        <option value="{{ $item->id }}">{{ $item->code }}</option>
                                        @endforeach
                                    </select>
                                
                                </div> 
                                    <div class="form-group col-md-6 col-12">

                                    <label for="">@langg('Status')</label>
                                    <select name="status" class="form-control">
                                        <option value="">@langg('Select')</option>
                                        <option value="0">@langg('Inactive')</option>
                                        <option value="1">@langg('Active')</option>
                                    </select>
                                
                                </div> 
                                
                                <div class="form-group col-md-12">
                                    <label for="">@langg('Instructions for Withdraw')</label>
                                    <textarea name="withdraw_instruction" id="" rows="5" class="form-control summernote">{{old('withdraw_instruction')}}</textarea>
                                </div>

                                <div class="form-group col-md-12 text-right">
                                    <button type="submit" class="btn btn-primary btn-lg">@langg('Submit')</button>
                                </div>
                            </div>
                    
                    
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
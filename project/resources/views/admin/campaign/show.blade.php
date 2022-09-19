@extends('layouts.admin')
@section('title')
@langg('Manage Campaign')
@endsection
@section('breadcrumb')
<section class="section">
   <div class="section-header justify-content-between">
      <h1> @langg('Campaign Details')</h1>
   </div>
</section>
@endsection
@section('content')
<div class="row">
<div class="col-12 col-md-12 col-lg-12">
<div class="card pro-charity">
<nav class="m-3">
   <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
      <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">{{__('Campaign Details')}}</a>
      <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">{{__('Donations')}}</a>
      <a class="nav-item nav-link" id="nav-withdrow-tab" data-toggle="tab" href="#nav-withdrow" role="tab" aria-controls="nav-withdrow" aria-selected="false">{{__('Withdraw')}}</a>
   </div>
</nav>
<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
   <div class="card-body">
      <div class="row">
        <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('User Name')</label>
               <input type="text" class="form-control" value="{{$campaign->user_id==NULL ? 'Admin' : ''}}" readonly>
            </div>
         </div>
         <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('Name')</label>
               <input type="text" class="form-control" value="{{$campaign->campaign_name}}" readonly>
            </div>
         </div>
         <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('Category Name')</label>
               <input type="text" class="form-control" value="{{App\Models\Category::where('id',$campaign->category_id)->first()->name}}" readonly>
            </div>
         </div>
         <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('Goal')</label>
               <input type="text" class="form-control" value="{{$campaign->goal}}" readonly>
            </div>
         </div>
         <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('Video Link')</label>
               <input type="text" class="form-control" value="{{$campaign->video_link}}" readonly>
            </div>
         </div>
         <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('Funded')</label>
               <input type="text" class="form-control" value="{{$campaign->available_fund}}" readonly>
            </div>
         </div>
         <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('Status')</label>
               <input type="text" class="form-control" value="{{$campaign->status==1 ? 'Active' :'Banned'}}" readonly>
            </div>
         </div>
         <div class="col-md-6">
            <div class="form-group">
               <label for="">@langg('End date')</label>
               <input type="text" class="form-control" value="{{$campaign->end_date}}" readonly>
            </div>
         </div>

            
         <div class="col-md-12">
            <div class="form-group">
               <label for="">@langg('Description')</label>
               <textarea id="area1" class="form-control summernote" name="description" placeholder="{{ __('Description') }}" readonly >{{$campaign->description}}</textarea>
           
               
            </div>
         </div>
      </div>
   </div>
</div>
<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
   <div class="card-body">
      <div class="table-responsive">
         <table class="table table-bordered table-striped" id="campaigns-table">
            <thead>
               <tr>
                  <th>@lang('ID')</th>
                  <th>@lang('Name')</th>
                  <th>@lang('Email')</th>
                  <th>@lang('Amount')</th>
                  <th>@lang('Created at')</th>
               </tr>
            </thead>
         </table>
      </div>
   </div>
</div>
<div class="tab-pane fade" id="nav-withdrow" role="tabpanel" aria-labelledby="nav-withdrow-tab">
   <div class="card-body">
      <div class="table-responsive">
         <table class="table table-bordered table-striped" id="withdraws-table">
            <thead>
               <tr>
                  <th>@lang('ID')</th>
                  <th>@lang('Name')</th>
                  <th>@lang('Email')</th>
                  <th>@lang('Pronob')</th>
                  <th>@lang('Created at')</th>
               </tr>
            </thead>
         </table>
      </div>
   </div>
</div>
<!-- Modal -->
@endsection
@push('script')
<script>
   'use strict';
   
   
   
   $('.delete').on('click',function () { 
       $('#exampleModal').find('a').attr('href',$(this).data('route'))
       $('#exampleModal').modal('show')
   })
</script>
@endpush
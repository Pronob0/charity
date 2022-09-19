@extends('layouts.admin')
@section('title')
    @langg('Admin Dashboard')
@endsection
@section('breadcrumb')
<section class="section">
    <div class="section-header">
        <h1>@langg('Dashboard')</h1>
    </div>
</section>
@endsection
@section('content')
    
    @if (access('dashboard info'))
    <div class="row">
       <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
           <div class="card card-statistic-1">
               <div class="card-icon bg-primary">
                   <i class="far fa-user"></i>
               </div>
               <div class="card-wrap">
                   <div class="card-header">
                       <h4>@langg('Total User')</h4>
                   </div>
                   <div class="card-body">
                      {{$totalUser}}
                   </div>
               </div>
           </div>
       </div>
     
       <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
           <div class="card card-statistic-1">
               <div class="card-icon bg-primary">
                <i class="fas fa-coins"></i>
               </div>
               <div class="card-wrap">
                   <div class="card-header">
                       <h4>@langg('Total Currency')</h4>
                   </div>
                   <div class="card-body">
                      {{$totalCurrency}}
                   </div>
               </div>
           </div>
       </div>
       <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
           <div class="card card-statistic-1">
               <div class="card-icon bg-primary">
                <i class="fas fa-globe"></i>
               </div>
               <div class="card-wrap">
                   <div class="card-header">
                       <h4>@langg('Total Country')</h4>
                   </div>
                   <div class="card-body">
                      {{$totalCountry}}
                   </div>
               </div>
           </div>
       </div>
       <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
           <div class="card card-statistic-1">
               <div class="card-icon bg-primary">
                <i class="fas fa-user-tag"></i>
               </div>
               <div class="card-wrap">
                   <div class="card-header">
                       <h4>@langg('Total Role')</h4>
                   </div>
                   <div class="card-body">
                      {{$totalRole}}
                   </div>
               </div>
           </div>
       </div>
       <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
           <div class="card card-statistic-1">
               <div class="card-icon bg-primary">
                <i class="far fa-user"></i>
               </div>
               <div class="card-wrap">
                   <div class="card-header">
                       <h4>@langg('Total Staff')</h4>
                   </div>
                   <div class="card-body">
                      {{$totalStaff}}
                   </div>
               </div>
           </div>
       </div>
      
       <div class="col-xl-3 col-lg-4 col-sm-6 col-12">
           <div class="card card-statistic-1">
               <div class="card-icon bg-primary">
                 <i class="fas fa-file-invoice-dollar"></i>
               </div>
               <div class="card-wrap">
                   <div class="card-header">
                       <h4>@langg('Default Currency')</h4>
                   </div>
                   <div class="card-body">
                    {{$gs->curr_code}} <sup class="text-danger">*</sup>
                   </div>
               </div>
           </div>
       </div>
   </div>

    <div class="row">
        <div class="col-sm-6 col-12">
            <div class="card card-statistic-2">
                <div class="card-icon shadow-primary bg-success text-white">
                    {{$gs->curr_sym}}
                </div>
                <div class="card-wrap">
                    <div class="card-header">
                       <h4>@langg('Total Deposit')</h4>
                    </div>
                    <div class="card-body">
                        {{$gs->curr_sym}}{{$totalDeposit}}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-12">
            <div class="card card-statistic-2">
            <div class="card-icon shadow-primary bg-primary text-white">
                {{$gs->curr_sym}}
            </div>
            <div class="card-wrap">
                <div class="card-header">
                <h4>@langg('Total Withdraw')</h4>
                </div>
                <div class="card-body">
                    {{$gs->curr_sym}}{{$totalWithdraw}}
                </div>
            </div>
            </div>
        </div>
    </div>
   @endif

   <div class="row">
       <div class="col-12 col-md-6 col-lg-6">
           <div class="card">
               <div class="card-header">
                   <h4>@langg('Recent Registered Users')</h4>
               </div>
               <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <tr>
                            <th>@langg('Name')</th>
                            <th>@langg('Email')</th>
                            <th>@langg('Country')</th>
                            <th>@langg('Status')</th>
                            <th>@langg('Action')</th>
                        </tr>
                        @forelse ($recentUsers as $key => $user)
                            <tr>
                                 <td data-label="@langg('Name')">
                                   {{$user->name}}
                                 </td>
                                 <td data-label="@langg('Email')">{{$user->email}}</td>
                                 <td data-label="@langg('Country')">{{$user->country}}</td>
                                 <td data-label="@langg('Status')">
                                    @if($user->status == 1)
                                        <span class="badge badge-success">@langg('active')</span>
                                    @elseif($user->status == 2)
                                         <span class="badge badge-danger">@langg('banned')</span>
                                    @endif
                                 </td>
                                 @if (access('edit user'))
                                 <td data-label="@langg('Action')">
                                     <a class="btn btn-primary details" href="{{route('admin.user.details',$user->id)}}">@langg('Details')</a>
                                 </td>
                                 @else
                                 <td data-label="@langg('Action')">
                                   N/A
                                </td>
                                 @endif
                               
                            </tr>
                         @empty

                            <tr>
                                <td class="text-center" colspan="100%">@langg('No Data Found')</td>
                            </tr>

                        @endforelse
                    </table>
                  </div>
               </div>
           </div>
       </div>
   </div>

@endsection

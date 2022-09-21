@extends('layouts.admin')

@section('title')
   @langg('All Reward Request')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1> @langg('All Reward Redeem Request')</h1>
    </div>
</section>
@endsection

@section('content')
<div class="row">
    <div class="col-12 col-md-12 col-lg-12">
        <div class="card">
            <form action="" class="card-header justify-content-end">
                    <div class="row flex-grow-1 flex-sm-grow-0">
                        <div class="col-sm-6 my-2">
                            <select class="form-control" id="" onChange="window.location.href=this.value">
                                <option value="{{url('admin/reedem-reward/list'.'?status=all')}}" {{request('status') == 'all'?'selected':''}}>@langg('All')</option>
                                <option value="{{url('admin/reedem-reward/list'.'?status=pending')}}" {{request('status') == 'pending'?'selected':''}}>@langg('Pending')</option>
                                <option value="{{url('admin/reedem-reward/list'.'?status=completed')}}" {{request('status') == 'completed'?'selected':''}}>@langg('Completed')</option>
                                <option value="{{url('admin/reedem-reward/list'.'?status=declined')}}" {{request('status') == 'declined'?'selected':''}}>@langg('Declined')</option>
                            </select>
                        </div>
                        <div class="col-sm-6 my-2">
                            <div class="input-group has_append ">
                              <input type="text" class="form-control" placeholder="@langg('Name')" name="search" value="{{$search ?? ''}}"/>
                              <div class="input-group-append">
                                  <button class="input-group-text bg-primary border-0"><i class="fas fa-search text-white"></i></button>
                              </div>
                            </div>
                        </div>
                        
                    </div>
                </form>
   
            <div class="card-body text-center">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <tr>
                            <th>@langg('Sl')</th>
                            <th>@langg('Name')</th>
                            <th>@langg('Email')</th>
                            <th>@langg('Total Points')</th>
                            <th>@langg('Total Amount')</th>
                            
                            <th>@langg('Action')</th>
                        </tr>
                        @forelse ($reedem_request as $key => $value)
                          
                            <tr>
                                <td data-label="@langg('Sl')">{{$key + $reedem_request->firstItem()}}</td>
                    
                                 <td data-label="@langg('Name')">
                                   {{$value->name}}
                                 </td>
                                 <td data-label="@langg('Email')">{{$value->email}}</td>
                                 <td data-label="@langg('Points')">{{$value->points}}</td>
                                 <td data-label="@langg('Total Amount')">{{$value->total_amount}}</td>
                                 <td data-label="@langg('Status')">
                                    @if($value->status == 1)
                                        <span class="badge badge-warning">@langg('Pending')</span>
                                    @elseif($value->status == 2)
                                         <span class="badge badge-success">@langg('Completed')</span>
                                    @else
                                            <span class="badge badge-danger">@langg('Declined')</span>
                                    @endif
                                 </td>
                                 
                                <td data-label="@langg('Action')">
                                    @if(access('edit campaign'))
                                    <a class="btn btn-sm btn-primary"  href="{{route('admin.campaign.edit',$value->id)}}"> <i class="fas fa-edit"></i> @langg('Edit')</a>
                                    @endif
                                    @if (access('delete campaign'))
                                        <a href="javascript:void(0)" class="btn btn-sm btn-danger delete" data-toggle="modal" data-target="#exampleModal" data-route="{{route('admin.campaign.delete',$value->id)}}"><i class="fas fa-trash"></i> @langg('Delete')</a>    
                                    @endif
                                    @if(access('view campaign'))
                                    <a class="btn btn-sm btn-info"  href="{{route('admin.campaign.show',$value->id)}}"> <i class="fas fa-eye"></i> @langg('View')</a>
                                    @endif


                                    
                                </td>
                               
                            </tr>
                         @empty

                            <tr>
                                <td class="text-center" colspan="100%">@langg('No Data Found')</td>
                            </tr>

                        @endforelse
                    </table>
                </div>
            </div>
            @if ($reedem_request->hasPages())
                {{ $reedem_request->links('admin.partials.paginate') }}
            @endif
        </div>
    </div>
</div>

<!-- Modal -->



{{-- Delete Modal Start --}}
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">@lang('Delete Campaign')</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>@lang('Are you sure you want to delete this Campaign?')</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">@lang('Close')</button>
          <a href="" type="button" class="btn btn-danger">@lang('Confirm')</a>
        </div>
      </div>
    </div>
  </div>

{{-- Delete Modal Ends --}}

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
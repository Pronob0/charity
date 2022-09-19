@extends('layouts.admin')

@section('title')
   @langg('Manage Job')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1> @langg('Manage Job')</h1>
        @if(access('add new job'))
            <a href="{{ route('admin.job.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> @langg('Add New Job')</a>
        @endif
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
                                <option value="{{url('admin/campaign/list'.'?status=all')}}" {{request('status') == 'all'?'selected':''}}>@langg('All')</option>
                                <option value="{{url('admin/campaign/list'.'?status=open')}}" {{request('status') == 'open'?'selected':''}}>@langg('Open')</option>
                                <option value="{{url('admin/campaign/list'.'?status=close')}}" {{request('status') == 'close'?'selected':''}}>@langg('Close')</option>
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
                            <th>@langg('Title')</th>
                            <th>@langg('Posted At')</th>
                            <th>@langg('Deadline')</th>
                            <th>@langg('Status')</th>
                            <th>@langg('Action')</th>
                        </tr>
                        @forelse ($jobs as $key => $value)
                          
                            <tr>
                                <td data-label="@langg('Sl')">{{$key + $jobs->firstItem()}}</td>
                    
                                 <td data-label="@langg('Title')">
                                   {{$value->title}}
                                 </td>
                                 <td data-label="@langg('Posted At')">{{$value->created_at->format('Y-m-d')}}</td>
                                 <td data-label="@langg('Deadline')">{{ Carbon\Carbon::parse($value->application_deadline)->format('Y-m-d') }}</td>
                                 <td data-label="@langg('Status')">
                                    @if($value->status == 1)
                                        <span class="badge badge-success">@langg('open')</span>
                                    @elseif($value->status == 2)
                                         <span class="badge badge-danger">@langg('closed')</span>
                                    @endif
                                 </td>
                                 

                                <td data-label="@langg('Action')">
                                    @if(access('edit job'))
                                    <a class="btn btn-sm btn-primary"  href="{{route('admin.job.edit',$value->id)}}"> <i class="fas fa-edit"></i> @langg('Edit')</a>
                                    @endif
                                    @if (access('delete job'))
                                        <a href="javascript:void(0)" class="btn btn-sm btn-danger delete" data-toggle="modal" data-target="#exampleModal" data-route="{{route('admin.job.delete',$value->id)}}"><i class="fas fa-trash"></i> @langg('Delete')</a>    
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
            @if ($jobs->hasPages())
                {{ $jobs->links('admin.partials.paginate') }}
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
            <p>@lang('Are you sure you want to delete this Job?')</p>
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
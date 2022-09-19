@extends('layouts.admin')

@section('title')
   @langg('Manage Gifts')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1> @langg('Manage Gifts')</h1>
        @if(access('add gift'))
            <a href="{{ route('admin.gift.add') }}"  class="btn btn-primary"><i class="fas fa-plus"></i> @langg('Add New Gifts')</a>
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
                                <option value="{{url('admin/gift/list'.'?status=all')}}" {{request('status') == 'all'?'selected':''}}>@langg('All')</option>
                                <option value="{{url('admin/gift/list'.'?status=active')}}" {{request('status') == 'active'?'selected':''}}>@langg('Active')</option>
                                <option value="{{url('admin/gift/list'.'?status=banned')}}" {{request('status') == 'banned'?'selected':''}}>@langg('Banned')</option>
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
                            <th>@langg('Image')</th>
                            <th>@langg('Amount')</th>
                            <th>@langg('Gifts')</th>
                            <th>@langg('Delivery Date')</th>
                            <th>@langg('Status')</th>
                            <th>@langg('Action')</th>
                        </tr>
                        @forelse ($gift as $key => $value)
                          
                            <tr>
                                <td data-label="@langg('Sl')">{{$key + $gift->firstItem()}}</td>
                    
                                 <td data-label="@langg('Name')">
                                   {{$value->name}}
                                 </td>
                                 <td> <img class="pt-3" width="100" src=" {{ asset('assets/images/'.$value->photo) }}" alt=""></td>
                                 <td data-label="@langg('Amount')">
                                    {{$value->price}}
                                  </td>
                                    <td data-label="@langg('Gifts')">
                                        @foreach (explode(',',$value->giftee_name) as $item)
                                            <span class="badge badge-primary">{{$item}}</span>
                                       
                                        @endforeach
                                    </td>
                                    <td data-label="@langg('Delivery Date')">
                                        {{$value->delivery_date}}
                                    </td>
                                  
                                 
                                 
                                 <td data-label="@langg('Status')">
                                    @if($value->status == 1)
                                        <span class="badge badge-success">@langg('active')</span>
                                    @elseif($value->status == 2)
                                         <span class="badge badge-danger">@langg('banned')</span>
                                    @endif
                                 </td>

                                <td data-label="@langg('Action')">
                                    @if(access('edit gift'))
                                        <a href="{{ route('admin.gift.edit',$value->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> @langg('Edit')</a>
                                    @endif
                                    
                                    @if(access('delete gift'))
                                    <a class="btn btn-danger delete"  data-toggle="modal" data-target="#exampleModal" href="javascript:void(0)" data-route="{{route('admin.gift.delete',$value->id)}}">@langg('Delete')</a>
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
            @if ($gift->hasPages())
                {{ $gift->links('admin.partials.paginate') }}
            @endif
        </div>
    </div>
</div>


{{-- Delete Modal Start --}}
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">@lang('Delete Gift Cause')</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>@lang('Are you sure you want to delete this Gift Cause ?')</p>
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
        $(document).ready(function() {
            $('.delete').on('click', function() {
                var url = $(this).data('route');
                $('#exampleModal').find('a').attr('href', url);
            });
        });
        


      
    </script>
@endpush
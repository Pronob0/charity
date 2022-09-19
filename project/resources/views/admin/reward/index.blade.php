@extends('layouts.admin')

@section('title')
   @langg('All Rewards')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1> @langg('All Rewards')</h1>
        @if(access('add reward'))
            <a href="javascript:void(0)" data-toggle="modal" data-target="#addModal" class="btn btn-primary add"><i class="fas fa-plus"></i> @langg('Add New Reward')</a>
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
                                <option value="{{url('admin/reward/list'.'?status=all')}}" {{request('status') == 'all'?'selected':''}}>@langg('All')</option>
                                <option value="{{url('admin/reward/list'.'?status=active')}}" {{request('status') == 'active'?'selected':''}}>@langg('Active')</option>
                                <option value="{{url('admin/reward/list'.'?status=banned')}}" {{request('status') == 'banned'?'selected':''}}>@langg('Banned')</option>
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
                            <th>@langg('From')</th>
                            <th>@langg('To')</th>
                            <th>@langg('Reward Point')</th>
                            <th>@langg('Reward Amount')</th>
                            <th>@langg('Status')</th>
                            <th>@langg('Actions')</th>
                        </tr>
                        @forelse ($reward as $key => $value)
                          
                            <tr>
                                <td data-label="@langg('Sl')">{{$key + $reward->firstItem()}}</td>
                    
                                 <td data-label="@langg('Name')">
                                   {{$value->name}}
                                 </td>
                                 <td data-label="@langg('From')">{{$value->goal_from}}</td>
                                 <td data-label="@langg('To')">{{$value->goal_to}}</td>
                                 <td data-label="@langg('Reward Point')">{{$value->reward_point}}</td>
                                 <td data-label="@langg('Reward Amount')">{{$value->reward_amount}}</td>
                                 <td data-label="@langg('Status')">
                                    @if($value->status == 1)
                                        <span class="badge badge-success">@langg('active')</span>
                                    @elseif($value->status == 2)
                                         <span class="badge badge-danger">@langg('banned')</span>
                                    @endif
                                 </td>

                                <td data-label="@langg('Action')">
                                    <a class="btn btn-primary details" data-reward="{{$value}}" href="javascript:void(0)" data-route="{{route('admin.reward.update',$value->id)}}">@langg('Edit')</a>

                                    <a class="btn btn-danger delete" data-staff="{{$value}}" data-toggle="modal" data-target="#exampleModal" href="javascript:void(0)" data-route="{{route('admin.reward.delete',$value->id)}}">@langg('Delete')</a>
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
            @if ($reward->hasPages())
                {{ $reward->links('admin.partials.paginate') }}
            @endif
        </div>
    </div>
</div>

<!-- Modal -->

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form action="{{route('admin.reward.store')}}" method="POST">
            @csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">@langg('Add New Reward')</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label>@langg('Name')</label>
                            <input class="form-control" type="text" name="name" required value="{{old('name')}}">
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Goal From')</label>
                            <input class="form-control" type="number" name="goal_from" required value="{{old('goal_from')}}">
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Goal To')</label>
                            <input class="form-control" type="number" name="goal_to" required value="{{old('goal_to')}}">
                        </div>
                        <div class="form-group col-md-12">
                            <label>@langg('Reward Point')</label>
                            <input class="form-control" type="number" name="reward_point" required value="{{old('reward_point')}}">
                        </div>
                        <div class="form-group col-md-12">
                            <label>@langg('Reward Amount')</label>
                            <input class="form-control" type="number" name="reward_amount" required value="{{old('reward_amount')}}">
                        </div>
                        
                    </div>
                    
                    <div class="append"></div>
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark" data-dismiss="modal">@langg('Close')</button>
                    <button type="submit" class="btn btn-primary">@langg('Submit')</button>
                </div>
            </div>
        </form>
    </div>
</div>

{{-- Delete Modal Start --}}
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">@lang('Delete Reward')</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>@lang('Are you sure you want to delete this Reward?')</p>
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
        $('.add').on('click',function () { 
            $('#addModal').find('.append').children().remove()
            $('#addModal').find('form')[0].reset();

            $('#addModal').find('.append').html(`
                   <div class="form-group col-md-12">
                        <label>@langg('Status')</label>
                        <select name="status" class="form-control">
                            <option value="1">@langg('Active')</option>
                            <option value="2">@langg('Banned')</option>
                        </select>
                    </div>
            `)
        })
        $('.details').on('click',function () { 
            $('#addModal').find('.modal-title').text("@langg('Edit Reward')")
            $('#addModal').find('input[name=name]').val($(this).data('reward').name)
            $('#addModal').find('input[name=goal_from]').val($(this).data('reward').goal_from)
            $('#addModal').find('input[name=goal_to]').val($(this).data('reward').goal_to)
            $('#addModal').find('input[name=reward_point]').val($(this).data('reward').reward_point)
            $('#addModal').find('input[name=reward_amount]').val($(this).data('reward').reward_amount)

            $('#addModal').find('.append').html(`
                   <div class="form-group">
                        <label>@langg('Status')</label>
                        <select name="status" class="form-control">
                            <option value="1">@langg('Active')</option>
                            <option value="2">@langg('Banned')</option>
                        </select>
                    </div>
            `)
            $(document).find('select[name=status]').val($(this).data('reward').status)
            $('#addModal').find('form').attr('action',$(this).data('route'))
            $('#addModal').modal('show')
        })
        


        $('.delete').on('click',function () { 
            $('#exampleModal').find('a').attr('href',$(this).data('route'))
            $('#exampleModal').modal('show')
        })
    </script>
@endpush
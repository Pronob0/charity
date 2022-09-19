@extends('layouts.admin')

@section('title')
   @langg('Manage Category')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1> @langg('Manage Category')</h1>
        @if(access('add category'))
            <a href="javascript:void(0)" data-toggle="modal" data-target="#addModal" class="btn btn-primary add"><i class="fas fa-plus"></i> @langg('Add New Category')</a>
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
                                <option value="{{url('admin/category/list'.'?status=all')}}" {{request('status') == 'all'?'selected':''}}>@langg('All')</option>
                                <option value="{{url('admin/category/list'.'?status=active')}}" {{request('status') == 'active'?'selected':''}}>@langg('Active')</option>
                                <option value="{{url('admin/category/list'.'?status=banned')}}" {{request('status') == 'banned'?'selected':''}}>@langg('Banned')</option>
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
                            <th>@langg('Slug')</th>
                            <th>@langg('Status')</th>
                            <th>@langg('Action')</th>
                        </tr>
                        @forelse ($category as $key => $value)
                          
                            <tr>
                                <td data-label="@langg('Sl')">{{$key + $category->firstItem()}}</td>
                    
                                 <td data-label="@langg('Name')">
                                   {{$value->name}}
                                 </td>
                                 <td data-label="@langg('Slug')">{{$value->slug}}</td>
                                 
                                 <td data-label="@langg('Status')">
                                    @if($value->status == 1)
                                        <span class="badge badge-success">@langg('active')</span>
                                    @elseif($value->status == 2)
                                         <span class="badge badge-danger">@langg('banned')</span>
                                    @endif
                                 </td>

                                <td data-label="@langg('Action')">
                                    <a class="btn btn-primary details" data-category="{{$value}}" href="javascript:void(0)" data-route="{{route('admin.category.update',$value->id)}}">@langg('Edit')</a>

                                    <a class="btn btn-danger delete" data-staff="{{$value}}" data-toggle="modal" data-target="#exampleModal" href="javascript:void(0)" data-route="{{route('admin.category.delete',$value->id)}}">@langg('Delete')</a>
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
            @if ($category->hasPages())
                {{ $category->links('admin.partials.paginate') }}
            @endif
        </div>
    </div>
</div>

<!-- Modal -->

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form action="{{route('admin.category.add')}}" method="POST">
            @csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">@langg('Add New Category')</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>@langg('Name')</label>
                        <input class="form-control" type="text" name="name" required value="{{old('name')}}">
                    </div>
                    <div class="form-group">
                        <label>@langg('Slug')</label>
                        <input class="form-control" type="text" name="slug" required value="{{old('slug')}}">
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
          <h5 class="modal-title" id="exampleModalLabel">@lang('Delete Category')</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>@lang('Are you sure you want to delete this category?')</p>
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
        })
        $('.details').on('click',function () { 
            $('#addModal').find('.modal-title').text("@langg('Edit Category')")
            $('#addModal').find('input[name=name]').val($(this).data('category').name)
            $('#addModal').find('input[name=slug]').val($(this).data('category').slug)
           

            $('#addModal').find('.append').html(`
                   <div class="form-group">
                        <label>@langg('Status')</label>
                        <select name="status" class="form-control">
                            <option value="1">@langg('Active')</option>
                            <option value="2">@langg('Banned')</option>
                        </select>
                    </div>
            `)
            $(document).find('select[name=status]').val($(this).data('category').status)
            $('#addModal').find('form').attr('action',$(this).data('route'))
            $('#addModal').modal('show')
        })


        $('.delete').on('click',function () { 
            $('#exampleModal').find('a').attr('href',$(this).data('route'))
            $('#exampleModal').modal('show')
        })
    </script>
@endpush
@extends('layouts.admin')

@section('title')
   @langg('Gift Cause Edit')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1>@langg('Edit Gift Cause')</h1>
        <a href="{{route('admin.gift.list')}}" class="btn btn-primary"><i class="fas fa-backward"></i> @langg('Back')</a>
    </div>
</section>
@endsection

@section('content')
<form action="{{ route('admin.gift.update',$gift->id) }}" enctype="multipart/form-data" method="POST" >
    @csrf

    <div class="row justify-content-center">
        <div class="col-xxl-8 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h6 class="mt-3">@langg('Gift Cause')</h6>
                    <hr>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>@langg('Gift Cause Name')</label>
                            <input class="form-control" type="text" name="name" placeholder="@lang('Enter Gift Cause Name')" value="{{ $gift->name }}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Slug')</label>
                            <input class="form-control" type="text" name="slug" placeholder="@lang('Enter Slug Here')" value="{{ $gift->slug }}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Price') <small>@lang('(In USD)')</small> </label>
                            <input class="form-control" type="number" name="price"  value="{{ $gift->price }}" required>
                        </div>
                       
                        <div class="form-group col-md-6">
                            <label>@langg('Delivery Date')</label>
                            <input class="date form-control" type="text" name="delivery_date" placeholder="@lang('Enter Delivery Date')" value="{{ $gift->delivery_date }}">
                        </div>

                        <div class="form-group col-md-6">
                            <label>@langg('Gift')</label>
                            <input type="text" class="form-control tagify__input"  id="tag" name="giftee_name" value="{{ $gift->giftee_name }}"  placeholder="{{ __('Gift Name') }}" >
                        </div>

                        
                        <div class="form-group col-md-6">
                            <label>@langg('Status')</label>
                            <Select class="form-control js-example-basic-single" name="status" required>
                                <option value="1" {{ $gift->status==1 ? 'selected' : ''}}>@lang('Active')</option>
                                <option value="2" {{ $gift->status==2 ? 'selected' : ''}}>@lang('Banned')</option>
                            </Select>
                        </div>
                        

                        

                        <div class="form-group col-md-12">
                            <label for="description">{{ __('Description') }}</label>
                            <textarea id="area1" class="form-control summernote" name="details" placeholder="{{ __('Description') }}">{{ $gift->details }}</textarea>
                        </div>
                       
                        
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-4 col-lg-6 col-md-8">
            <div class="card">
                <div class="card-body">
                        

                        <div class=" ShowImage mb-3  text-center">
                            <img src="{{ getPhoto($gift->photo) }}" class="img-fluid" alt="image" width="400">
                         </div>
                        
                        {{-- {{getPhoto($user->photo)}} --}}
                        </div>

                        <div class="form-group p-4">
                            <label for="image">{{ __('Campaign Photo') }}</label>
                            <span class="ml-3">{{ __('(Extension:jpeg,jpg,png)') }}</span>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="photo" id="image" accept="image/*" >
                                <label class="custom-file-label" for="photo">{{ __('Choose file') }}</label>
                            </div>
                        </div>

                        {{-- @if (access('update user')) --}}
                        <div class="form-group col-md-12 text-right">
                           <button type="submit" class="btn btn-primary btn-lg">@langg('Submit')</button>
                        </div>
                        {{-- @endif --}}
                </div>
            </div>
           
        </div>
        </form>
  

    <!-- Modal -->
   

@endsection
@push('script')
    <script>

       


$('input[name=giftee_name]').tagify();


        'use strict';
        $.uploadPreview({
            input_field: "#image-upload", // Default: .image-upload
            preview_box: "#image-preview", // Default: .image-preview
            label_field: "#image-label", // Default: .image-label
            label_default: "@langg('Choose File')", // Default: Choose File
            label_selected: "@langg('Update Image')", // Default: Change File
            no_label: false, // Default: false
            success_callback: null // Default: null
        });

        $('.wallet').on('click',function () { 
            $('#balanceModal').find('input[name=wallet_id]').val($(this).data('id'))
            $('#balanceModal').find('.code').text($(this).data('code'))
            $('#balanceModal').modal('show')
        })

        $(document).ready(function() {
           $('.js-example-basic-single').select2();
        });

        $('.date').datepicker({  
       format: 'mm-dd-yyyy'
     }); 
    </script>
@endpush

@push('style')
    <style>
        .bg-sec{
            background-color: #cdd3d83c
        }
        .u_details{
            height: 370px!important;
        }
    </style>
@endpush

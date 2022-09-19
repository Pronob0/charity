@extends('layouts.admin')

@section('title')
   @langg('Edit Campaign')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1>@langg('Edit Campaign')</h1>
        <a href="{{route('admin.campaign.list')}}" class="btn btn-primary"><i class="fas fa-backward"></i> @langg('Back')</a>
    </div>
</section>
@endsection

@section('content')
<form action="{{ route('admin.campaign.update',$campaign->id) }}" method="POST" enctype="multipart/form-data">
    @csrf

    <div class="row justify-content-center">
        <div class="col-xxl-8 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h6 class="mt-3">@langg('Campaign')</h6>
                    <hr>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>@langg('Campaign Name')</label>
                            <input class="form-control" type="text" name="campaign_name" placeholder="@lang('Enter Campaign Name')" value="{{ $campaign->campaign_name }}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Slug')</label>
                            <input class="form-control" type="text" name="slug" placeholder="@lang('Enter Slug Here')" value="{{ $campaign->slug }}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Goal') <small>@lang('(In USD)')</small> </label>
                            <input class="form-control" type="number" name="goal"  value="{{ $campaign->goal }}" required>
                        </div>
                       
                         <div class="form-group col-md-6">
                            <label>@langg('Category')</label>
                            <Select class="form-control js-example-basic-single" name="category_id" >
                               
                                @foreach ($categories as $item)
                                <option value="{{$item->id}}" {{$campaign->category_id == $item->id ? 'selected':''}}>{{$item->name}}</option>
                                @endforeach
                            </Select>
                        </div> 
                        <div class="form-group col-md-6">
                            <label>@langg('End Date')</label>
                            <input class="date form-control" value="{{ $campaign->end_date }}" type="text" name="end_date" placeholder="@lang('Enter Campign End Date')">
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Campaign Video Link')</label>
                            <input class="form-control" type="text" name="video_link" placeholder="@lang('Enter campaign video link')" value="{{ $campaign->video_link }}">
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Location')</label>
                            <input class="form-control" type="text" name="location" placeholder="@lang('Enter Location Here')" value="{{ $campaign->location }}">
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Status')</label>
                            <Select class="form-control js-example-basic-single" name="status" required>
                                <option value="1" {{ $campaign->status==1 ? 'selected' : '' }}>@lang('Active')</option>
                                <option value="2" {{ $campaign->status==2 ? 'selected' : '' }}>@lang('Banned')</option>
                            </Select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>@langg('Tags')</label>
                            <input type="text" class="form-control tagify__input"  id="tag" name="tags" value="{{ $campaign->tags }}"  placeholder="{{ __('Meta Tags') }}" >
                        </div>

                        <div class="form-group col-md-6">
                            <label>@langg('Preloade Amount') <small>@lang('Seperated By Comma(,)')</small> </label>
                            <input type="text" class="form-control tagify__input" value="{{ $campaign->preloaded_amount }}"   name="preloaded_amount"  placeholder="{{ __('Preloaded Amount') }}" >
                        </div>

                        <div class="form-group col-md-12">
                            <label for="description">{{ __('Description') }}</label>
                            <textarea id="area1" class="form-control summernote" name="description" placeholder="{{ __('Description') }}" >{{$campaign->description}}</textarea>
                        </div>
                       
                        <div class="form-group col-md-6">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input class="cswitch--input" name="featured" type="checkbox" {{ $campaign->featured=='on' ? 'checked' :'' }} /><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Featured')</span>
                            </label>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input class="cswitch--input" name="emergency" type="checkbox" {{ $campaign->emergency=='on' ? 'checked' :'' }}  /><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Emergency')</span>
                            </label>
                        </div>
                        <div class="form-group col-md-6 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input class="cswitch--input update" {{ $campaign->reward=='on' ? 'checked' :'' }} name="reward" type="checkbox"/><span class="cswitch--trigger wrapper" ></span>
                                <span class="cswitch--label font-weight-bold">@langg('Reward')</span>
                            </label>
                        </div>
                        <div class="form-group col-md-6 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input id="gift" data-val="{{  $campaign->is_gift }}" {{ $campaign->is_gift=='on' ? 'checked' :'' }} class="cswitch--input update" name="is_gift" type="checkbox"/><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Gift')</span>
                            </label>
                        </div>
                        
                        <div id="gift-div" class="form-group col-md-12 d-none">
                            <label>@langg('Gift')</label>
                            <Select class="form-control js-example-basic-single" name="gifts">
                                
                                @foreach ($gifts as $item)
                                <option value="{{$item->id}}" {{ $campaign->gifts == $item->id ? 'selected' : ''}}>{{$item->name}}</option>
                                @endforeach
                            </Select>
                        </div>
                        <div class="form-group col-md-6 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <label class="radio-inline ">
                                    <input class="" type="radio" {{ $campaign->end_after=='goal' ? 'checked' :'' }} name="end_after" value="goal">
                                    @lang('Achieving Goal')
                                </label>
                                <label class="radio-inline">
                                    <input class="" type="radio" {{ $campaign->end_after=='date' ? 'checked' :'' }} name="end_after" value="date">
                                    @lang('End Date')
                                </label>
                                <span class="cswitch--label font-weight-bold">@langg('Close After')</span>
                            </label>
                        </div>
                        <div class="form-group col-md-6 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input id="seo" class="cswitch--input update" {{ $campaign->seocheck=='on' ? 'checked':'' }} name="seocheck" data-val="{{ $campaign->seocheck }}" type="checkbox"/><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Allow SEO')</span>
                            </label>
                        </div>

                        <div id="seo-div" class="form-group col-md-12 d-none">
                            <div class="form-group">
                                <label>@langg('Meta Tags')</label>
                                <input type="text" class="form-control tagify__input"  id="tag" name="meta_tag"  placeholder="{{ __('Meta Tags') }}" >
                            </div>
                            <div class="form-group">
                                <label for="description">{{ __('Meta Description') }}</label>
                                <textarea id="area1" class="form-control summernote" name="meta_description" placeholder="{{ __('Meta Description') }}" ></textarea>
                            </div>
                        </div>
                        
                        
                        @if (access('update user'))
                        <div class="form-group col-md-12 text-right">
                           <button type="submit" class="btn btn-primary btn-lg">@langg('Submit')</button>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-4 col-lg-6 col-md-8">
            <div class="card">
                <div class="card-body">
                        

                        <div class=" ShowImage mb-3  text-center">
                            <img src="{{ getPhoto($campaign->photo) }}" class="img-fluid" alt="image" width="400">
                         </div>
                        
                     
                        </div>

                        <div class="form-group p-4">
                            <label for="image">{{ __('Campaign Photo') }}</label>
                            <span class="ml-3">{{ __('(Extension:jpeg,jpg,png)') }}</span>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="photo" id="image" accept="image/*" >
                                <label class="custom-file-label" for="photo">{{ __('Choose file') }}</label>
                            </div>
                        </div>

                        @if (access('add campaign')) 
                        <div class="form-group col-md-12 text-right">
                           <button type="submit" class="btn btn-primary btn-lg">@langg('Submit')</button>
                        </div>
                         @endif 



                </div>
            </div>
           
        </div>

    </div>
</form>
    <!-- Modal -->
   

@endsection
@push('script')
    <script>

        val=$('#gift').data('val');
        if(val=='on'){
            $('#gift-div').removeClass('d-none');
        }

        $('#gift').on('change', function(){
            
            if($(this).is(':checked')){
                $('#gift-div').removeClass('d-none');
            }else{
                $('#gift-div').addClass('d-none');
            }
        });

        val=$('#seo').data('val');
        if(val=='on'){
            $('#seo-div').removeClass('d-none');
        }
        
        $('#seo').on('change', function(){
            
            if($(this).is(':checked')){
                $('#seo-div').removeClass('d-none');
            }else{
                $('#seo-div').addClass('d-none');
            }
        });


$('input[name=tags]').tagify();
$('input[name=preloaded_amount]').tagify();
$('input[name=meta_tag]').tagify();

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

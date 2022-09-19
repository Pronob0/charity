@extends('layouts.admin')

@section('title')
   @langg('Edit Job')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header d-flex justify-content-between">
        <h1>@langg('Add New Job')</h1>
        <a href="{{route('admin.job.index')}}" class="btn btn-primary btn-sm"><i class="fas fa-backward"></i> @langg('Back')</a>
    </div>
</section>
@endsection

@section('content')
<div class="row justify-content-center">

    <div class="col-md-8">
       <div class="card">
            <div class="card-body">
                @include('admin.partials.form-both')
                <form action="{{ route('admin.job.update',$job->id) }}" method="post">
                    @csrf
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label>@langg('Job Title')</label>
                            <input class="form-control" type="text" name="title" required value="{{$job->title}}">
                        </div>
                        <div class="form-group col-md-12">
                            <label>@langg('Slug')</label>
                            <input class="form-control" type="text" name="slug" required value="{{$job->slug}}">
                        </div>
                        <div class="form-group col-md-12">
                            <label>@langg('Job Position')</label>
                            <input class="form-control" type="text" name="position" required value="{{$job->position}}">
                        </div>
                        <div class="form-group col-md-12">
                            <label>@langg('Company Name')</label>
                            <input class="form-control" type="text" name="company_name" required value="{{$job->company_name}}">
                        </div>
                        <div class="form-group col-md-12">
                            <label>@langg('Category Name')</label>
                            <select class="form-control  mb-3" id="categorys" name="category_id" required>
                                <option value="" selected disabled>{{translate('Select Category')}}</option>
                                @foreach ($jcategories as $item)
                                <option value="{{$item->id}}" {{ $job->category_id==$item->id ? 'selected':'' }}>{{$item->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-12">
                            <label>@langg('Vacancy')</label>
                            <input class="form-control" type="number" name="vacancy" required value="{{$job->vacancy}}">
                        </div>

                        <div class="form-group col-md-12">
                            <label for="job_context">{{ __('Job Context') }}</label>
                            <textarea id="area1" class="form-control summernote" name="job_context" placeholder="{{ __('Job Context') }}" >@php
                                echo $job->job_context;
                            @endphp</textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="job_context">{{ __('Job Responsibility') }}</label>
                            <textarea id="area1" class="form-control summernote" name="job_responsibility	" placeholder="{{ __('Job Responsibility') }}" >
                                @php
                                    echo $job->job_responsibility;
                                @endphp
                            
                            </textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="job_context">{{ __('Educational Requirements') }}</label>
                            <textarea id="area1" class="form-control summernote" name="educational_requirement	" placeholder="{{ __('Educational Requirements') }}" >
                                @php
                                    echo $job->educational_requirement;
                                @endphp
                            
                            </textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="job_context">{{ __('Experience Requirements') }}</label>
                            <textarea id="area1" class="form-control summernote" name="experience_requirement	" placeholder="{{ __('Experience Requirements') }}" >
                            
                                @php
                                    echo $job->experience_requirement;
                                @endphp
                            </textarea>
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Employment Status')</label>
                            <select class="form-control  mb-3" id="categorys" name="employment_status" required>
                                <option value="1" {{ $job->employment_status==1 ? 'selected' : '' }}>@lang('Full Time')</option>
                                <option value="2" {{ $job->employment_status==2 ? 'selected': '' }}>@lang('Part Time')</option>
                                <option value="3" {{ $job->employment_status==3 ? 'selected' : '' }}>@lang('Project Based')</option>
                            </select>
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Job Location')</label>
                            <input class="form-control" type="text" name="job_location" required value="{{$job->job_location}}">
                        </div>

                        <div class="form-group col-md-12">
                            <label for="job_context">{{ __('Compensation & Other Benefits') }}</label>
                            <textarea id="area1" class="form-control summernote" name="other_benefits" placeholder="{{ __('Compensation & Other Benefits') }}" >
                            @php
                                echo $job->other_benefits;
                            @endphp    
                            </textarea>
                        </div>

                        <div class="form-group col-md-12">
                            <label>@langg('Salary')</label>
                            <input class="form-control" type="number" name="salary" required value="{{$job->salary}}">
                        </div>
                        
                        <div class="form-group col-md-12">
                            <label>@langg('Deadline')</label>
                            <input class="form-control" type="date" name="application_deadline" required value="
                            {{ Carbon\Carbon::parse($job->application_deadline)->format('Y-m-d') }}
                            }">
                        </div>

                        <div class="form-group col-md-6 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input id="fee" class="cswitch--input update" name="enable_fee" {{ $job->enable_fee=='on' ? 'checked' :'' }} type="checkbox"/><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Enable Application Fee')</span>
                            </label>
                        </div>
                        <div id="fee-div" class="form-group col-md-12 {{ $job->enable_fee=='off' ? 'd-none' :'' }}">
                            <label>@langg('Application Fee')</label>
                            <input class="form-control" type="number" name="fee_amount"  value="{{$job->fee_amount}}">
                        </div>

                        <div class="form-group col-md-6 ">
                            <label class="cswitch d-flex justify-content-between align-items-center border p-2">
                                <input id="seo" class="cswitch--input update" name="seocheck" {{ $job->seocheck=='on' ? 'checked' :'' }}  type="checkbox"/><span class="cswitch--trigger wrapper"></span>
                                <span class="cswitch--label font-weight-bold">@langg('Allow SEO')</span>
                            </label>
                        </div>

                        <div id="seo-div" class="form-group col-md-12 d-none{{ $job->seocheck=='off' ? 'd-none' :'' }}">
                            <div class="form-group">
                                <label>@langg('Meta Tags')</label>
                                <input type="text" class="form-control tagify__input"  id="tag" name="meta_tag" value="{{ $job->meta_tag }}"  placeholder="{{ __('Meta Tags') }}" >
                            </div>
                            <div class="form-group">
                                <label for="description">{{ __('Meta Description') }}</label>
                                <textarea id="area1" class="form-control summernote" name="meta_description"  placeholder="{{ __('Meta Description') }}" >
                                @php
                                    echo $job->meta_description;
                                @endphp
                                </textarea>
                            </div>
                        </div>
              
                        
                        
                       
                       
                       
                        <div class="form-group col-md-12">
                            <label>@langg('Status') </label>
                            <select class="form-control" name="status" required>
                                
                                <option value="1" {{ $job->status==1 ? 'selected': '' }}>@langg('Active')</option>
                                <option value="0" {{ $job->status==0 ? 'selected':''}}>@langg('Inactive')</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group text-right col-md-12">
                        <button class="btn  btn-primary btn-lg" type="submit">@langg('Submit')</button>
                    </div>
                </form>
            </div>
       </div>
    </div>
</div>
@endsection
@push('script')

<script>
    $('input[name=meta_tag]').tagify();
     $('#fee').on('change', function(){
            
            if($(this).is(':checked')){
                $('#fee-div').removeClass('d-none');
            }else{
                $('#fee-div').addClass('d-none');
            }
        });
        $('#seo').on('change', function(){
            
            if($(this).is(':checked')){
                $('#seo-div').removeClass('d-none');
            }else{
                $('#seo-div').addClass('d-none');
            }
        });
</script>
    
@endpush
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{$gs->title.'-'}}@yield('title')</title>
    <link rel="shortcut icon" href="{{getPhoto($gs->favicon)}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/font-awsome.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/selectric.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/jquery-ui.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/tagify.css') }}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/summernote.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/bootstrap-iconpicker.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/colorpicker.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/components.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/custom.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/datepicker.css')}}">

    @stack('style')
</head>
<body>
  
<div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
         @include('admin.partials.topbar')
      <div class="main-sidebar">
         @include('admin.partials.sidebar')
      </div>

      <!-- Main Content -->
      <div class="main-content">
        @yield('breadcrumb')
        
        @yield('content')
      </div>
      
    </div>
  </div>


    @include('notify.alert')
    <script src="{{asset('assets/admin/js/jquery.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/popper.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/jquery-ui.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/nicescroll.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/summernote.js')}}"></script>
    <script src="{{asset('assets/admin/js/select2.min.js')}}"></script>
    <script src="{{ asset('assets/admin/js/tagify.js') }}"></script>
    <script src="{{asset('assets/admin/js/sortable.js') }}"></script>
    <script src="{{asset('assets/admin/js/moment-a.js')}}"></script>
    <script src="{{asset('assets/admin/js/stisla.js')}}"></script>
    <script src="{{asset('assets/admin/js/bootstrap-iconpicker.bundle.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/colorpicker.js')}}"></script>
    <script src="{{asset('assets/admin/js/jquery.uploadpreview.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/chart.min.js')}}"></script>
    <script src="{{asset('assets/admin/js/scripts.js')}}"></script>
    <script src="{{asset('assets/admin/js/custom.js')}}"></script>
    <script src="{{asset('assets/admin/js/datepicker.js')}}"></script>


    <script>

      var form_error   = "{{ __('Please fill all the required fields') }}";
      var mainurl = "{{ url('/') }}";
      var lang  = {
            'new': '{{ __('ADD NEW') }}',
            'edit': '{{ __('EDIT') }}',
            'details': '{{ __('DETAILS') }}',
            'update': '{{ __('Status Updated Successfully.') }}',
            'sss': '{{ __('Success !') }}',
            'active': '{{ __('Activated') }}',
            'deactive': '{{ __('Deactivated') }}',
            'loading': '{{ __('Please wait Data Processing...') }}',
            'submit': '{{ __('Submit') }}',
            'enter_name': '{{ __('Enter Name') }}',
            'enter_price': '{{ __('Enter Price') }}',
            'per_day': '{{ __('Per Day') }}',
            'per_month': '{{ __('Per Month') }}',
            'per_year': '{{ __('Per Year') }}',
            'one_time': '{{ __('One Time') }}',
            'enter_title': '{{ __('Enter Title') }}',
            'enter_content': '{{ __('Enter Content') }}',
            'extra_price_name' : '{{translate('Enter Name')}}',
            'extra_price' : '{{translate('Enter Price')}}',
            'policy_title' : '{{translate('Enter Title')}}',
            'policy_content' : '{{translate('Enter Content')}}',
        };
  
    </script>


    <script>
      $(function(){
        'use strict'
        $('.clear').on('click',function(e){
          e.preventDefault();
            const modal = $('#cleardb');
            modal.find('form').attr('action',$(this).data('href'))
            modal.modal('show');
        })

      })
    
    $('.summernote').summernote({
      codeviewFilter: true,
      codeviewIframeFilter: true
    })
    </script>
    @stack('script')
    
</body>
</html>
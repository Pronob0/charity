<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>{{translate($gs->title)}}-@yield('title')</title>
    <!-- CSS files -->
    <link rel="shortcut icon" href="{{getPhoto($gs->favicon)}}">
    <link rel="stylesheet" href="{{asset('assets/admin/css/font-awsome.min.css')}}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{asset('assets/user/')}}/css/custom.css" rel="stylesheet"/>
    @stack('style')
 
  </head>
  
  <body>
    <div class="container">
          @include('user.partials.header')
          @yield('content')
    </div>

      <script src="{{asset('assets/admin/js/jquery.min.js')}}"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

      @include('notify.alert')
      @stack('script')

</body>
</html>

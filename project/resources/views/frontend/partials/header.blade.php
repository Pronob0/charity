

<nav class="navbar navbar-expand-lg navbar-light bg-light my-3">
    <div class="container-fluid">
      <a class="navbar-brand" href="{{url('/')}}">Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            @foreach (json_decode($gs->menu) as $item)
            <li class="nav-item">
               <a class="nav-link active" target="{{$item->target == 'self' ? '':'_blank'}}" href="{{url($item->href)}}">{{translate($item->title)}}</a>
            </li>
          @endforeach
          @auth
            <li class="nav-item">
                <a  class="nav-link" href="{{route('user.dashboard')}}" class="cmn--btn">@langg('Dashboard')</a>
            </li>
            <li class="nav-item">
                <a  class="nav-link" href="{{route('user.logout')}}" class="cmn--btn btn-outline">@langg('Logout')</a>
            </li>
            @else
            <li class="nav-item">
                <a  class="nav-link" href="{{route('user.login')}}" class="cmn--btn">@langg('Login')</a>
            </li>
            <li class="nav-item">
                <a  class="nav-link" href="{{route('user.register')}}" class="cmn--btn">@langg('Register')</a>
            </li>
            @endauth
     
         
         
          <li class="nav-item ms-5">
              <select class="language-bar form-control shadow-none" onChange="window.location.href=this.value">
                  @foreach (DB::table('languages')->get() as $item)
                    <option value="{{route('lang.change',$item->code)}}" {{session('lang') == $item->code ? 'selected':''}}>@langg($item->language)</option>
                  @endforeach
              </select>
          </li>
  
     
         
        </ul>
      </div>
    </div>
  </nav>
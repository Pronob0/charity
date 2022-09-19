
<nav class="navbar navbar-expand-lg navbar-light bg-light my-3">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Dashboard</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{route('user.transactions')}}">@langg('Transactions')</a>
        </li>
   
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            @langg('Deposit')
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="{{route('user.deposit.index')}}">@langg('Deposit')</a></li>
            <li><a class="dropdown-item" href="{{route('user.deposit.history')}}">@langg('Deposit History')</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            @langg('Withdraw')
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="nav-link" href="{{route('user.withdraw.form')}}">@langg('Withdraw')</a></li>
            <li><a class="dropdown-item" href="{{route('user.withdraw.history')}}">@langg('Withdraw History')</a></li>
          </ul>
        </li>
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            @langg('Profile')
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="{{route('user.profile')}}">@langg('Profile Settings')</a></li>
            <li><a class="dropdown-item" href="{{route('user.two.step')}}">@langg('Two Step Authentication')</a></li>
            <li><a class="dropdown-item" href="{{route('user.ticket.index')}}">@langg('Support Ticket')</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="{{route('user.logout')}}">@langg('Logout')</a></li>
          </ul>
        </li>

        <li class="nav-item ms-5">
            <select class="language-bar form-control shadow-none" onChange="window.location.href=this.value">
                @foreach (DB::table('languages')->get() as $item)
                  <option value="{{route('lang.change',$item->code)}}" {{session('lang') == $item->code ? 'selected':''}}>@langg($item->language)</option>
                @endforeach
            </select>
        </li>

        <li class="nav-item ms-5">
            <select class="language-bar form-control shadow-none" onChange="window.location.href=this.value">
               <option value="">@langg('Select Currency')</option>
                @foreach (DB::table('currencies')->where('status',1)->get() as $item)
                  <option value="{{route('user.change.currency',$item->id)}}" {{session('currency') == $item->id ? 'selected':''}}>@lang($item->code)</option>
                @endforeach
            </select>
        </li>
       
      </ul>
    </div>
  </div>
</nav>
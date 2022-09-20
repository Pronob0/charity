<aside id="sidebar-wrapper">

  <ul class="sidebar-menu mb-5">
      <li class="menu-header">@langg('Dashboard')</li>
      <li class="nav-item {{menu('admin.dashboard')}}">
        <a href="{{route('admin.dashboard')}}" class="nav-link"><i class="fas fa-fire"></i><span>@langg('Dashboard')</span></a>
      </li>


      @if (access('transactions'))
      <li class="nav-item {{menu('admin.transactions')}}">
        <a href="{{route('admin.transactions')}}" class="nav-link"><i class="fas fa-exchange-alt"></i><span>@langg('Transaction Report')</span></a>
      </li>
      @endif


      {{-- Campaigns Section Start--}}


      {{--Campaign Category --}}

      <li class="menu-header">@langg('Manage Campaign')</li>
      @if (access('campaign category'))
      <li class="nav-item {{menu('admin.category.list')}}">
        <a href="{{route('admin.category.list')}}" class="nav-link"><i class="fas fa-users-cog"></i><span>@langg('Category')</span></a>
      </li>
      @endif
      {{--Campaign  Category end --}}

       {{--Campaign Start--}}

       {{-- @if(access('withdraw method') || access('pending withdraw') || access('accepted withdraw') || access('rejected withdraw')) --}}
       <li class="nav-item dropdown {{menu('admin.withdraw*')}}">
         <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-hand-holding-usd"></i> <span>@langg('Manage Campaigns')</span></a>
         <ul class="dropdown-menu">
           {{-- @if(access('withdraw method')) --}}
           <li class="{{menu('admin.campaign.list')}}"><a class="nav-link" href="{{route('admin.campaign.list')}}">@langg('All Campaign')</a></li>
           {{-- @endif --}}
           {{-- @if(access('pending withdraw')) --}}
           <li class="{{menu('admin.withdraw.pending')}}"><a class="nav-link {{$pending_withdraw > 0 ? 'beep beep-sidebar':""}}" href="{{route('admin.withdraw.pending')}}">@langg('Pending Campaigns')</a></li>
           {{-- @endif --}}
           {{-- @if(access('accepted withdraw')) --}}
           <li class="{{menu('admin.withdraw.accepted')}}"><a class="nav-link" href="{{route('admin.withdraw.accepted')}}">@langg('All Donations')</a></li>
           {{-- @endif --}}
           
         </ul>
       </li>
       {{-- @endif --}}

       
       @if (access('campaign setting'))
       <li class="nav-item {{menu('admin.category.list')}}">
         <a href="{{route('admin.campaign.setting')}}" class="nav-link"><i class="fas fa-cogs"></i><span>@langg('Campaign Setting')</span></a>
       </li>
       @endif

       {{-- Campaign Ends --}}

        
       <li class="menu-header">@langg('Manage Reward & Gifts')</li>
       @if(access('gift list'))
       <li class="{{menu('admin.gift.list')}}"><a class="nav-link" href="{{route('admin.gift.list')}}"><i class="fas fa-gift"></i>@langg('Campaigns Gifts')</a></li>
       @endif
        @if(access('reward list'))
        <li class="{{menu('admin.reward.list')}}"><a class="nav-link" href="{{route('admin.reward.list')}}"><i class="fas fa-coins"></i>@langg('All Rewards')</a></li>
        @endif



    {{-- Campaign Section Ends --}}

      <li class="menu-header">@langg('Manage')</li>
      @if (access('manage user'))
      <li class="nav-item {{menu(['admin.user.index','admin.user.details'])}}">
        <a href="{{route('admin.user.index')}}" class="nav-link"><i class="fas fa-users"></i><span>@langg('Manage User')</span></a>
      </li>
      @endif


 

      @if(access('manage currency'))
      <li class="nav-item {{menu('admin.currency.index')}}">
        <a href="{{route('admin.currency.index')}}" class="nav-link"><i class="fas fa-coins"></i><span>@langg('Manage Currency')</span></a>
      </li>
      @endif
 
      @if(access('manage country'))
      <li class="nav-item {{menu('admin.country.index')}}">
        <a href="{{route('admin.country.index')}}" class="nav-link"> <i class="fas fa-globe"></i><span>@langg('Manage Country')</span></a>
      </li>
      @endif

      @if(access('job list') || access('job category') || access('add new job') || access('all applicant')) 
        <li class="nav-item dropdown {{menu('admin.job*')}}">
          <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-university"></i> <span>@langg('Job Post Manage')@if ($pending_withdraw > 0) <small class="badge badge-primary mr-4">!</small> @endif</span></a>
          <ul class="dropdown-menu">
            @if(access('job list'))
            <li class="{{menu('admin.job.index')}}"><a class="nav-link" href="{{route('admin.job.index')}}">@langg('All Jobs')</a></li>
            @endif
            @if(access('job category'))
            <li class="{{menu('admin.jcategory.index')}}"><a class="nav-link " href="{{route('admin.jcategory.index')}}">@langg('Job Category')</a></li>
            @endif
            @if(access('add new job'))
            <li class="{{menu('admin.job.create')}}"><a class="nav-link" href="{{route('admin.job.create')}}">@langg('Add New Job')</a></li>
            @endif
            @if(access('all applicant'))
            <li class="{{menu('admin.withdraw.rejected')}}"><a class="nav-link" href="{{route('admin.withdraw.rejected')}}">@langg('All Applicant')</a></li>
            @endif
          </ul>
        </li>
        @endif 


      <li class="menu-header">@langg('Staff and Role')</li>

      {{-- @if(access('manage role')) --}}
      <li class="nav-item {{menu('admin.role*')}}">
        <a href="{{route('admin.role.manage')}}" class="nav-link"><i class="fas fa-user-tag"></i><span>@langg('Manage Role')</span></a>
      </li>
      {{-- @endif --}}
      @if(access('manage staff'))
      <li class="nav-item {{menu('admin.staff*')}}">
        <a href="{{route('admin.staff.manage')}}" class="nav-link"><i class="fas fa-user-shield"></i><span>@langg('Manage Staff')</span></a>
      </li>
      @endif

      <li class="menu-header">@langg('Payment and Withdraw')</li>
      @if(access('withdraw method') || access('pending withdraw') || access('accepted withdraw') || access('rejected withdraw'))
        <li class="nav-item dropdown {{menu('admin.withdraw*')}}">
          <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-university"></i> <span>@langg('Manage Withdraw')@if ($pending_withdraw > 0) <small class="badge badge-primary mr-4">!</small> @endif</span></a>
          <ul class="dropdown-menu">
            @if(access('withdraw method'))
            <li class="{{menu('admin.withdraw')}}"><a class="nav-link" href="{{route('admin.withdraw')}}">@langg('Withdraw Method')</a></li>
            @endif
            @if(access('pending withdraw'))
            <li class="{{menu('admin.withdraw.pending')}}"><a class="nav-link {{$pending_withdraw > 0 ? 'beep beep-sidebar':""}}" href="{{route('admin.withdraw.pending')}}">@langg('Pending Withdraws')</a></li>
            @endif
            @if(access('accepted withdraw'))
            <li class="{{menu('admin.withdraw.accepted')}}"><a class="nav-link" href="{{route('admin.withdraw.accepted')}}">@langg('Accepted Withdraws')</a></li>
            @endif
            @if(access('rejected withdraw'))
            <li class="{{menu('admin.withdraw.rejected')}}"><a class="nav-link" href="{{route('admin.withdraw.rejected')}}">@langg('Rejected Withdraws')</a></li>
            @endif
          </ul>
        </li>
        @endif
        
        @if(access('manage payment gateway') || access('manage deposit'))
        <li class="nav-item dropdown {{menu(['admin.gateway*','admin.deposit*'])}}">
          <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-money-check-alt"></i> <span>@langg('Manage Payment') @if ($pending_deposits > 0) <small class="badge badge-primary mr-4">!</small> @endif</span></a>
          <ul class="dropdown-menu">
            @if(access('manage payment gateway'))
            <li class="{{menu('admin.gateway')}}"><a class="nav-link" href="{{route('admin.gateway')}}">@langg('Gateways')</a>
            </li>
            @endif
            @if(access('manage deposit'))
            <li class="{{menu('admin.deposit')}}"><a class="nav-link {{$pending_deposits > 0 ? 'beep beep-sidebar':""}}" href="{{route('admin.deposit')}}">@langg('Deposits')</a>
            </li>
            @endif
          </ul>
        </li>
        @endif

        <li class="menu-header">@langg('Manage Blog')</li>
        @if(access('manage blog-category') || access('manage blog'))

        @if (access('manage blog-category'))
          <li class="{{menu('admin.bcategory.index')}}"><a class="nav-link" href="{{route('admin.bcategory.index')}}"><i class="fas fa-newspaper"></i>@langg('Blog Category')</a></li>
          @endif

          @if (access('manage blog'))
          <li class="{{menu(['admin.blog.index','admin.blog.create','admin.blog.edit'])}}"><a class="nav-link" href="{{route('admin.blog.index')}}"><i class="fas fa-newspaper"></i>@langg('Manage Blog')</a></li>
          @endif

        @endif

      <li class="menu-header">@langg('General')</li>
      @if(access('general setting') || access('general settings logo favicon'))
      <li class="nav-item dropdown {{menu(['admin.gs*','admin.cookie'])}}">
        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-cog"></i><span>@langg('General Settings')</span></a>
        <ul class="dropdown-menu">
          @if(access('general setting'))
          <li class="{{menu('admin.gs.site.settings')}}"><a class="nav-link" href="{{route('admin.gs.site.settings')}}">@langg('Site Settings')</a></li>
          @endif
          @if(access('general settings logo favicon'))
          <li class="{{menu('admin.gs.logo')}}"><a class="nav-link" href="{{route('admin.gs.logo')}}">@langg('Logo & Favicon')</a></li>
          @endif
          @if(access('manage cookie'))
          <li class="{{menu('admin.cookie')}}"><a class="nav-link" href="{{route('admin.cookie')}}">@langg('Cookie Concent')</a></li>
          @endif
        </ul>
      </li>
      @endif
      @if(access('manage page') || access('menu builder') || access('site contents') ||  access('seo settings'))
      <li class="nav-item dropdown {{menu(['admin.front*','admin.page*','admin.frontend*','admin.bcategory*','admin.blog*','admin.seo-setting*'])}}">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-th"></i> <span>@langg('Frontend Setting')</span></a>
        <ul class="dropdown-menu">

          @if (access('manage page'))
          <li class="{{menu('admin.page.index')}}"><a class="nav-link" href="{{ route('admin.page.index') }}">@langg('Pages Settings')</a></li>
          @endif
          
          @if (access('menu builder'))
          <li class="{{menu('admin.front.menu')}}"><a class="nav-link" href="{{route('admin.front.menu')}}">@langg('Menu Builder')</a></li>
          @endif

          @if (access('site contents'))
          <li class="{{menu(['admin.frontend.index','admin.frontend.edit'])}}"><a class="nav-link" href="{{route('admin.frontend.index')}}">@langg('Site Contents')</a></li>
          @endif

          

          @if (access('seo settings'))
          <li class="{{menu('admin.seo-setting.index')}}"><a class="nav-link" href="{{route('admin.seo-setting.index')}}">@langg('Seo Settings')</a></li>
          @endif
        </ul>
      </li>
      @endif

      @if(access('email templates') || access('email config') || access('group email'))
      <li class="nav-item dropdown {{menu('admin.mail*')}}">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-envelope-square"></i> <span>@langg('Email Settings')</span></a>
        <ul class="dropdown-menu">
          @if(access('email templates'))
          <li class="{{menu('admin.mail.index')}}"><a class="nav-link" href="{{route('admin.mail.index')}}">@langg('Email Templates')</a></li>
          @endif
          @if(access('email config'))
          <li class="{{menu('admin.mail.config')}}"><a class="nav-link" href="{{route('admin.mail.config')}}">@langg('Email Config')</a></li>
          @endif
          @if(access('group email'))
          <li class="{{menu('admin.mail.group.show')}}"><a class="nav-link" href="{{route('admin.mail.group.show')}}">@langg('Group Emails')</a></li>
          @endif
        </ul>
      </li>
     
      @endif
      @if(access('sms gateways') || access('sms templates'))
      <li class="nav-item dropdown {{menu('admin.sms*')}}">
        <a href="#" class="nav-link has-dropdown"><i class="far fa-comment-alt"></i> <span>@langg('SMS Settings')</span></a>
        <ul class="dropdown-menu">
          @if (access('sms gateways'))
          <li class="{{menu('admin.sms.index')}}"><a class="nav-link" href="{{route('admin.sms.index')}}">@langg('SMS Gateway')</a></li>
          @endif

          @if (access('sms templates'))
          <li class="{{menu('admin.sms.templates')}}"><a class="nav-link" href="{{route('admin.sms.templates')}}">@langg('SMS Template')</a></li>
          @endif
        </ul>
      </li>
      @endif
    
      @if(access('manage language'))
      <li class="nav-item {{menu(['admin.language*'])}}">
        <a href="{{route('admin.language.index')}}" class="nav-link"><i class="fas fa-language"></i> <span>@langg('Manage Language')</span></a>
      </li>
      @endif

      @if(access('manage ticket'))
      <li class="nav-item dropdown {{menu('admin.ticket.manage')}}">
        <a href="#" class="nav-link has-dropdown"><i class="fas fa-ticket-alt"></i> <span>@langg('Support Tickets')  @if ($pending_user_ticket > 0) <small class="badge badge-primary mr-4">!</small> @endif</span></a>
        <ul class="dropdown-menu">
          <li class="{{url()->current() == url('admin/manage/tickets/user') ? 'active':''}}"><a class="nav-link {{$pending_user_ticket > 0 ? 'beep beep-sidebar':""}}" href="{{route('admin.ticket.manage','user')}}">@langg('User Tickets')</a></li>

        </ul>
      </li>
    @endif
    </ul>
</aside>
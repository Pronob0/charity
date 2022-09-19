 <!-- Banner -->
 <section class="banner-section">
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="banner__wrapper">
                    <div class="banner__wrapper-content">
                        <h6 class="subtitle text--base">{{translate(@$section->content->title)}}</h6>
                        <h1 class="title">
                            @lang(@$section->content->heading)
                        </h1>
                        <p>
                            @lang(@$section->content->sub_heading)
                        </p>
                        <div class="btn__grp my-4">
                            <a href="{{url(@$section->content->button_1_url ?? '/')}}" class="btn btn-primary btn-outline">@lang(@$section->content->button_1_name)</a>
        
                            <a href="{{url(@$section->content->button_2_url ?? '/')}}" class="btn btn-success btn-outline">@lang(@$section->content->button_2_name)</a>
                        </div>
                    </div>
                    <div class="banner__wrapper-thumb">
                        <img class="w-50" src="{{getPhoto(@$section->content->image)}}"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
</section>
<!-- Banner -->
<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Admin\SmsController;
use App\Http\Controllers\Admin\BlogController;
use App\Http\Controllers\Admin\PageController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\EmailController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\LanguageController;
use App\Http\Controllers\Admin\KycManageController;
use App\Http\Controllers\Admin\ManageRoleController;
use App\Http\Controllers\Admin\ManageUserController;
use App\Http\Controllers\Admin\SeoSettingController;
use App\Http\Controllers\Admin\WithdrawalController;
use App\Http\Controllers\Admin\ManageStaffController;
use App\Http\Controllers\Admin\SiteContentController;
use App\Http\Controllers\Admin\BlogCategoryController;
use App\Http\Controllers\Admin\ManageChargeController;
use App\Http\Controllers\Admin\ManageEscrowController;
use App\Http\Controllers\Admin\ManageModuleController;
use App\Http\Controllers\Admin\ManageTicketController;
use App\Http\Controllers\Admin\AdminLanguageController;
use App\Http\Controllers\Admin\CampaignController;
use App\Http\Controllers\Admin\CampaignSettingController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ManageCountryController;
use App\Http\Controllers\Admin\ManageDepositController;
use App\Http\Controllers\Admin\SocialSettingController;
use App\Http\Controllers\Admin\GeneralSettingController;
use App\Http\Controllers\Admin\GiftController;
use App\Http\Controllers\Admin\JobCategoryController;
use App\Http\Controllers\Admin\JobController;
use App\Http\Controllers\Admin\ManageCurrencyController;
use App\Http\Controllers\Admin\ManageMerchantController;
use App\Http\Controllers\Admin\PaymentGatewayController;
use App\Http\Controllers\Admin\ReedemRewardController;
use App\Http\Controllers\Admin\RewardController;
use App\Http\Controllers\Admin\WithdrawMethodController;
use App\Models\ReedemReward;

// ************************** ADMIN SECTION START ***************************//

Route::prefix('admin')->name('admin.')->group(function () {

    Route::get('/login',            [LoginController::class,'showLoginForm'])->name('login');
    Route::post('/login',           [LoginController::class,'login']);
    
    Route::get('/forgot-password',   [LoginController::class,'forgotPasswordForm'])->name('forgot.password');
    Route::post('/forgot-password',   [LoginController::class,'forgotPasswordSubmit']);
    Route::get('forgot-password/verify-code',     [LoginController::class,'verifyCode'])->name('verify.code');
    Route::post('forgot-password/verify-code',     [LoginController::class,'verifyCodeSubmit']);
    Route::get('reset-password',     [LoginController::class,'resetPassword'])->name('reset.password');
    Route::post('reset-password',     [LoginController::class,'resetPasswordSubmit']);

    Route::middleware('auth:admin')->group(function(){
        Route::get('/logout',[LoginController::class,'logout'])->name('logout');

        //------------ ADMIN DASHBOARD & PROFILE SECTION ------------
        Route::get('/',                 [AdminController::class,'index'])->name('dashboard');
        Route::get('/profile',          [AdminController::class,'profile'])->name('profile');
        Route::post('/profile/update',  [AdminController::class,'profileupdate'])->name('profile.update');
        Route::get('/password',         [AdminController::class,'passwordreset'])->name('password');
        Route::post('/password/update', [AdminController::class,'changepass'])->name('password.update');
        //------------ ADMIN DASHBOARD & PROFILE SECTION ENDS ------------



        //transactions
        Route::get('/transaction-report',                 [AdminController::class,'transactions'])->name('transactions')->middleware('permission:transactions');



        // Category Route
        Route::get('category/list',[CategoryController::class,'index'])->name('category.list')->middleware('permission:campaign category');
        Route::post('add/category',[CategoryController::class,'store'])->name('category.add')->middleware('permission:add category');
        Route::post('update/category/{id}',[CategoryController::class,'update'])->name('category.update')->middleware('permission:update category');
        Route::get('delete/category/{id}',[CategoryController::class,'destroy'])->name('category.delete')->middleware('permission:delete category');
        // Category Route

        // Campaign Route start
        Route::get('campaign/list',[CampaignController::class,'index'])->name('campaign.list')->middleware('permission:campaign list');
        Route::get('campaign/add',[CampaignController::class,'create'])->name('campaign.add')->middleware('permission:add campaign');
        Route::post('campaign/add',[CampaignController::class,'store'])->name('campaign.store')->middleware('permission:add campaign');
        Route::get('campaign/edit/{campaign}',[CampaignController::class,'edit'])->name('campaign.edit')->middleware('permission:edit campaign');
        Route::post('campaign/update/{campaign}',[CampaignController::class,'update'])->name('campaign.update')->middleware('permission:edit campaign');
        Route::get('campaign/view/{campaign}',[CampaignController::class,'show'])->name('campaign.show')->middleware('permission:view campaign');
        Route::get('campaign/delete/{campaign}',[CampaignController::class,'destroy'])->name('campaign.delete')->middleware('permission:delete campaign');
        // Campaign Route Ends


        // Campaign Setting Controller
        Route::get('campaign/setting',[CampaignSettingController::class,'setting'])->name('campaign.setting')->middleware('permission:campaign setting');
        Route::post('campaign/setting',[CampaignSettingController::class,'settingUpdate'])->name('campaign.setting.update')->middleware('permission:campaign setting');


        // Reward Route start
         Route::get('reward/list',[RewardController::class,'index'])->name('reward.list')->middleware('permission:reward list');
          Route::post('reward/add',[RewardController::class,'store'])->name('reward.store')->middleware('permission:add reward');
          Route::post('reward/update/{id}',[RewardController::class,'update'])->name('reward.update')->middleware('permission:edit reward');
          Route::get('reward/delete/{id}',[RewardController::class,'destroy'])->name('reward.delete')->middleware('permission:delete reward');

        // Reward Route Ends

        // ReedemReward Route Start
        Route::get('reedem-reward/list',[ReedemRewardController::class,'index'])->name('reward.reedem.list')->middleware('permission:reedem request');

        // Gift Route start
        Route::get('gift/list',[GiftController::class,'index'])->name('gift.list')->middleware('permission:gift list');
        Route::get('gift/add',[GiftController::class,'create'])->name('gift.add')->middleware('permission:add gift');
        Route::post('gift/add',[GiftController::class,'store'])->name('gift.store')->middleware('permission:add gift');
        Route::get('gift/delete/{gift}',[GiftController::class,'destroy'])->name('gift.delete')->middleware('permission:delete gift');
        Route::get('gift/edit/{gift}',[GiftController::class,'edit'])->name('gift.edit')->middleware('permission:edit gift');
        Route::post('gift/edit/{gift}',[GiftController::class,'update'])->name('gift.update')->middleware('permission:edit gift');

        // Gift Route Ends

       

        //==================================== PAGE SECTION  ==============================================//

        Route::get('page',       [PageController::class,'index'])->name('page.index')->middleware('permission:manage page');
        Route::get('page/create',       [PageController::class,'create'])->name('page.create')->middleware('permission:page create');
        Route::post('page/store',       [PageController::class,'store'])->name('page.store')->middleware('permission:page store');
        Route::get('page/edit/{page}',       [PageController::class,'edit'])->name('page.edit')->middleware('permission:page edit');
        Route::put('page/update/{page}',       [PageController::class,'update'])->name('page.update')->middleware('permission:page update');
        Route::post('page/remove',       [PageController::class,'destroy'])->name('page.remove')->middleware('permission:page remove');

        //==================================== PAGE SECTION END ==============================================//

        //cookie
        Route::get('/manage-cookie',                 [AdminController::class,'cookie'])->name('cookie')->middleware('permission:manage cookie');
        Route::post('/manage-cookie',                 [AdminController::class,'updateCookie'])->name('update.cookie')->middleware('permission:update cookie');

        //manage blogs

        Route::get('blog-category',       [BlogCategoryController::class,'index'])->name('bcategory.index')->middleware('permission:manage blog-category');
        Route::post('blog-category/store',       [BlogCategoryController::class,'store'])->name('bcategory.store')->middleware('permission:store blog-category');
        Route::put('blog-category/update/{id}',       [BlogCategoryController::class,'update'])->name('bcategory.update')->middleware('permission:update blog-category');
        Route::get('blog',       [BlogController::class,'index'])->name('blog.index')->middleware('permission:manage blog');
        Route::get('blog/create',       [BlogController::class,'create'])->name('blog.create')->middleware('permission:blog create');
        Route::post('blog/store',       [BlogController::class,'store'])->name('blog.store')->middleware('permission:blog store');
        Route::get('blog/edit/{blog}',       [BlogController::class,'edit'])->name('blog.edit')->middleware('permission:blog edit');
        Route::put('blog/update/{blog}',       [BlogController::class,'update'])->name('blog.update')->middleware('permission:blog update');
        Route::delete('blog-delete/{blog}',[BlogController::class,'destroy'])->name('blog.destroy')->middleware('permission:blog destroy');
        //==================================== Manage Currency ==============================================//


//==================================== Manage Job category ==============================================//

        Route::get('job-category/list',       [JobCategoryController::class,'index'])->name('jcategory.index')->middleware('permission:job category');
        Route::post('job-category/store',       [JobCategoryController::class,'store'])->name('jcategory.store')->middleware('permission:add job category');
        Route::post('job-category/update/{id}',       [JobCategoryController::class,'update'])->name('jcategory.update')->middleware('permission:edit job category');

        Route::get('job-category/delete/{id}',       [JobCategoryController::class,'destroy'])->name('jcategory.delete')->middleware('permission:delete job category');
       
      
        //==================================== Manage Job category ==============================================//

        //==================================== Manage Job ==============================================//
        Route::get('job/list',       [JobController::class,'index'])->name('job.index')->middleware('permission:job list');
        Route::get('job/create',       [JobController::class,'create'])->name('job.create')->middleware('permission:add new job');
        Route::post('job/store',       [JobController::class,'store'])->name('job.store')->middleware('permission:add new job');
        Route::get('job/edit/{job}',       [JobController::class,'edit'])->name('job.edit')->middleware('permission:edit job');
        Route::post('job/update/{job}',       [JobController::class,'update'])->name('job.update')->middleware('permission:edit job');
        Route::get('job/delete/{job}',       [JobController::class,'destroy'])->name('job.delete')->middleware('permission:delete job');

        Route::get('/manage-currency',[ManageCurrencyController::class,'index'])->name('currency.index')->middleware('permission:manage currency');

        Route::get('/add-currency',[ManageCurrencyController::class,'addCurrency'])->name('currency.add')->middleware('permission:add currency');

        Route::post('/add-currency',[ManageCurrencyController::class,'store'])->middleware('permission:add currency');

        Route::get('/edit-currency/{id}',[ManageCurrencyController::class,'editCurrency'])->name('currency.edit')->middleware('permission:edit currency');

        Route::post('/update-currency/{id}',[ManageCurrencyController::class,'updateCurrency'])->name('currency.update')->middleware('permission:update currency');

        Route::post('/update-currency-api',[ManageCurrencyController::class,'updateCurrencyAPI'])->name('currency.api.update')->middleware('permission:update currency api');


        //manage Country

            Route::get('/manage-country',[ManageCountryController::class,'index'])->name('country.index')->middleware('permission:manage country');

            Route::post('/add-country',[ManageCountryController::class,'store'])->name('country.store')->middleware('permission:add country');

            Route::post('/update-country',[ManageCountryController::class,'update'])->name('country.update')->middleware('permission:update country');


        //==================================== Manage Module ==============================================//



        //==================================== GENERAL SETTING SECTION ==============================================//


            Route::get('/general-settings',            [GeneralSettingController::class,'siteSettings'])->name('gs.site.settings')->middleware('permission:general setting');

            Route::post('/general-settings/update',     [GeneralSettingController::class,'update'])->name('gs.update')->middleware('permission:general settings update');

            Route::get('/general-settings/logo-favicon',[GeneralSettingController::class,'logo'])->name('gs.logo')->middleware('permission:general settings logo favicon');

            Route::get('/general-settings/menu-builder',  [GeneralSettingController::class,'menu'])->name('front.menu')->middleware('permission:menu builder');

            Route::get('/general-settings/maintenance', [GeneralSettingController::class,'maintenance'])->name('gs.maintenance')->middleware('permission:maintainance');

            Route::get('/general-settings/status/update/{value}', [GeneralSettingController::class,'StatusUpdate'])->name('gs.status')->middleware('permission:general settings status update');

            Route::get('/general-settings/reward', [GeneralSettingController::class,'reward'])->name('reward.gs')->middleware('permission:reward setting');

        //==================================== GENERAL SETTING SECTION ==============================================//




        //==================================== EMAIL SETTING SECTION ==============================================//

            Route::get('/email-templates',      [EmailController::class,'index'])->name('mail.index')->middleware('permission:email templates');

            Route::get('/email-templates/{id}', [EmailController::class,'edit'])->name('mail.edit')->middleware('permission:template edit');

            Route::post('/email-templates/{id}',[EmailController::class,'update'])->name('mail.update')->middleware('permission:template update');

            Route::get('/email-config',         [EmailController::class,'config'])->name('mail.config')->middleware('permission:email config');

            Route::get('/group-email',           [EmailController::class,'groupEmail'])->name('mail.group.show')->middleware('permission:group email');

            Route::post('/groupemailpost',      [EmailController::class,'groupemailpost'])->name('group.submit')->middleware('permission:group email');



        //==================================== EMAIL SETTING SECTION END ==============================================//


        //sms settings
        Route::get('/sms-gateways',          [SmsController::class,'index'])->name('sms.index')->middleware('permission:sms gateways');

        Route::get('/sms-gateway/edit/{id}', [SmsController::class,'edit'])->name('sms.edit')->middleware('permission:sms gateway edit');

        Route::post('/sms-gateway/update/{id}', [SmsController::class,'update'])->name('sms.update')->middleware('permission:sms gateway update');

        Route::get('/sms-templates', [SmsController::class,'templates'])->name('sms.templates')->middleware('permission:sms templates');

        Route::get('/sms-template/edit/{id}', [SmsController::class,'editTemplate'])->name('sms.template.edit')->middleware('permission:sms template edit');

        Route::post('/sms-template/update/{id}', [SmsController::class,'updateTemplate'])->name('sms.template.update')->middleware('permission:sms template update');

        //==================================== PAYMENTGATEWAY SETTING SECTION ==============================================//

        Route::get('/deposits',             [ManageDepositController::class,'deposits'])->name('deposit')->middleware('permission:manage deposit');

        Route::post('/approve-deposit',             [ManageDepositController::class,'approve'])->name('approve.deposit')->middleware('permission:approve deposit');

        Route::post('/reject-deposit',             [ManageDepositController::class,'reject'])->name('reject.deposit')->middleware('permission:reject deposit');


        Route::get('/payment-gateways',        [PaymentGatewayController::class,'index'])->name('gateway')->middleware('permission:manage payment gateway');

        Route::get('add/payment-gateway',        [PaymentGatewayController::class,'create'])->name('gateway.create')->middleware('permission:add payment gateway');

        Route::post('/store/payment-gateway',        [PaymentGatewayController::class,'store'])->name('gateway.store')->middleware('permission:store payment gateway');

        Route::get('/payment-gateway/edit/{paymentgateway}',        [PaymentGatewayController::class,'edit'])->name('gateway.edit')->middleware('permission:edit payment gateway');

        Route::post('/payment-gateway/update/{gateway}',        [PaymentGatewayController::class,'update'])->name('gateway.update')->middleware('permission:update payment gateway');

        //==================================== PAYMENTGATEWAY SETTING SECTION END ==============================================//


        //==================================== LANGUAGE SETTING SECTION ==============================================//

        // webiste language
        Route::resource('language', LanguageController::class)->middleware('permission:manage language');

        Route::post('add-translate/{id}', [LanguageController::class,'storeTranslate'])->name('translate.store')->middleware('permission:manage language');

        Route::post('update-translate/{id}', [LanguageController::class,'updateTranslate'])->name('translate.update')->middleware('permission:manage language');

        Route::post('remove-translate', [LanguageController::class,'removeTranslate'])->name('translate.remove')->middleware('permission:manage language');

        Route::post('language/status-update', [LanguageController::class,'statusUpdate'])->name('update-status.language')->middleware('permission:manage language');

        Route::post('language/remove', [LanguageController::class,'destroy'])->name('remove.language')->middleware('permission:manage language');

        // admin language
        Route::get('adminlanguage/status/{id1}/{id2}', [AdminLanguageController::class,'status'])->name('adminlanguage.status')->middleware('permission:manage language');

    
        //==================================== LANGUAGE SETTING SECTION END =============================================//



        //==================================== ADMIN SEO SETTINGS SECTION ====================================
            Route::resource('seo-setting', SeoSettingController::class)->middleware('permission:seo settings');
        //==================================== ADMIN SEO SETTINGS SECTION ENDS ====================================



        //==================================== USER SECTION  ==============================================//

            Route::get('manage-users', [ManageUserController::class,'index'])->name('user.index')->middleware('permission:manage user');

            Route::get('user-details/{id}', [ManageUserController::class,'details'])->name('user.details')->middleware('permission:edit user');

            Route::post('user-profile/update/{id}', [ManageUserController::class,'profileUpdate'])->name('user.profile.update')->middleware('permission:update user');

            Route::post('balance-modify', [ManageUserController::class,'modifyBalance'])->name('user.balance.modify')->middleware('permission:user balance modify');

            Route::get('user-login/{id}', [ManageUserController::class,'login'])->name('user.login')->middleware('permission:user login');

            Route::get('user-login/info/{id}', [ManageUserController::class,'loginInfo'])->name('user.login.info')->middleware('permission:user login logs');


     

        //================= Site Contents ======================

            Route::get('/frontend-sections',[SiteContentController::class,'index'])->name('frontend.index')->middleware('permission:site contents');

            Route::get('/frontend-section/edit/{id}',[SiteContentController::class,'edit'])->name('frontend.edit')->middleware('permission:edit site contents');

            Route::post('/frontend-section/content-update/{id}',[SiteContentController::class,'contentUpdate'])->name('frontend.content.update')->middleware('permission:site content update');

            Route::post('/frontend-section/sub-content-update/{id}',[SiteContentController::class,'subContentUpdate'])->name('frontend.sub-content.update')->middleware('permission:site sub-content update');

            Route::post('/frontend-section/sub-content/update-single',[SiteContentController::class,'subContentUpdateSingle'])->name('frontend.sub-content.single.update')->middleware('permission:site sub-content update');

            Route::post('/frontend-section/sub-content/remove',[SiteContentController::class,'subContentRemove'])->name('frontend.sub-content.remove')->middleware('permission:site sub-content update');

            Route::post('/frontend-section/status-update',[SiteContentController::class,'statusUpdate'])->name('frontend.status.update')->middleware('permission:section status update');


        //withdraw

            Route::get('withdraw/method',[WithdrawMethodController::class,'index'])->name('withdraw')->middleware('permission:withdraw method');

            Route::get('withdraw/method-create',[WithdrawMethodController::class,'create'])->name('withdraw.create')->middleware('permission:withdraw method create');

            Route::post('withdraw/method-create',[WithdrawMethodController::class,'store'])->middleware('permission:withdraw method create');

            Route::get('withdraw/method/search',[WithdrawMethodController::class,'index'])->name('withdraw.search')->middleware('permission:withdraw method search');

            Route::get('withdraw/edit/{id}',[WithdrawMethodController::class,'edit'])->name('withdraw.edit')->middleware('permission:withdraw method edit');

            Route::post('withdraw/update/{method}',[WithdrawMethodController::class,'update'])->name('withdraw.update')->middleware('permission:withdraw method update');

            Route::get('withdraw/pending',[WithdrawalController::class,'pending'])->name('withdraw.pending')->middleware('permission:pending withdraw');

            Route::get('withdraw/accepted',[WithdrawalController::class,'accepted'])->name('withdraw.accepted')->middleware('permission:accepted withdraw');

            Route::get('withdraw/rejected',[WithdrawalController::class,'rejected'])->name('withdraw.rejected')->middleware('permission:rejected withdraw');

            Route::post('withdraw/accept/{withdraw}',[WithdrawalController::class,'withdrawAccept'])->name('withdraw.accept')->middleware('permission:withdraw accept');

            Route::post('withdraw/reject/{withdraw}',[WithdrawalController::class,'withdrawReject'])->name('withdraw.reject')->middleware('permission:withdraw reject');




          //manage escrow

              Route::get('manage/escrow',[ManageEscrowController::class,'index'])->name('escrow.manage')->middleware('permission:manage escrow');

              Route::get('escrow/on-hold',[ManageEscrowController::class,'onHold'])->name('escrow.onHold')->middleware('permission:escrow on-hold');

              Route::get('escrow-disputed',[ManageEscrowController::class,'disputed'])->name('escrow.disputed')->middleware('permission:escrow disputed');

              Route::get('escrow-details/{id}',[ManageEscrowController::class,'details'])->name('escrow.details')->middleware('permission:escrow details');

              Route::post('escrow-details/{id}',[ManageEscrowController::class,'disputeStore'])->middleware('permission:dispute store');

              Route::get('file-download/{id}',   [ManageEscrowController::class,'fileDownload'])->name('escrow.file.download')->middleware('permission:escrow file download');

              Route::post('return-payment',   [ManageEscrowController::class,'returnPayment'])->name('escrow.return.payment')->middleware('permission:escrow return payment');

              Route::get('escrow-close/{id}',[ManageEscrowController::class,'close'])->name('escrow.close')->middleware('permission:escrow close');



          //role manage

              Route::get('manage/role',[ManageRoleController::class,'index'])->name('role.manage');
            //   ->middleware('permission:manage role')
              Route::get('create/role',[ManageRoleController::class,'create'])->name('role.create');
            //   ->middleware('permission:create role')
              Route::post('create/role',[ManageRoleController::class,'store']);
            //   ->middleware('permission:create role')
              Route::get('edit/permissions/{id}',[ManageRoleController::class,'edit'])->name('role.edit');
            //   ->middleware('permission:edit permissions')
              Route::post('update/permissions/{id}',[ManageRoleController::class,'update'])->name('role.update');
            //   ->middleware('permission:update permissions')
              



             //manage staff

              Route::get('manage/staff',[ManageStaffController::class,'index'])->name('staff.manage')->middleware('permission:manage staff');

              Route::post('add/staff',[ManageStaffController::class,'addStaff'])->name('staff.add')->middleware('permission:add staff');

              Route::post('update/staff/{id}',[ManageStaffController::class,'updateStaff'])->name('staff.update')->middleware('permission:update staff');

            //support ticket
              Route::get('manage/tickets',[ManageTicketController::class,'index'])->name('ticket.manage')->middleware('permission:manage ticket');

              Route::post('reply/ticket/{ticket_num}',   [ManageTicketController::class,'replyTicket'])->name('ticket.reply')->middleware('permission:manage ticket')->middleware('permission:reply ticket');

    });




});


    
Route::get('/check/movescript', [AdminController::class,'movescript'])->name('admin-move-script');
Route::get('/generate/backup', [AdminController::class,'generate_bkup'])->name('admin-generate-backup');
Route::get('/activation', [AdminController::class,'activation'])->name('admin-activation-form');
Route::post('/activation', [AdminController::class,'activation'])->name('admin-activate-purchase');
Route::post('/clear/backup', [AdminController::class,'clear_bkup'])->name('admin-clear-backup');


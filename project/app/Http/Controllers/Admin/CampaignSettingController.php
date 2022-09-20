<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CampaignSetting;
use Illuminate\Http\Request;

class CampaignSettingController extends Controller
{
    
    public function setting()
    {
        $campaign_settings = CampaignSetting::first();
        return view('admin.campaign_setting.index',compact('campaign_settings'));
    }

    public function settingUpdate(Request $request)
    {
        $campaign_settings = CampaignSetting::first();
        // dd($request->all());
        $request['donation_charge_active_deactive_button'] ? $request['donation_charge_active_deactive_button'] = 'on' : $request['donation_charge_active_deactive_button'] = 'off';

        $request['donation_countdown'] ? $request['donation_countdown'] = 'on' : $request['donation_countdown'] = 'off';

        $campaign_settings->update($request->all());
        return redirect()->back()->with('success','Campaign Setting Updated Successfully');
    }
}

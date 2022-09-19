<?php

namespace App\Http\Controllers\Admin;

use App\{
    Classes\GeniusMailer,
    Models\EmailTemplate,
    Models\Generalsetting,
    Models\User
};
use App\Helpers\MailHelper;
use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Subscriber;
use Illuminate\Http\Request;
use Datatables;
use Illuminate\Support\Facades\Mail;

class EmailController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $templates = EmailTemplate::orderBy('id','desc')->paginate(15);
        return view('admin.email.index',compact('templates'));
    }

    public function config(){
        return view('admin.email.config');
    }


    public function edit($id)
    {
        $data = EmailTemplate::findOrFail($id);
        return view('admin.email.edit',compact('data'));
    }

    public function groupEmail()
    {
        $config = Generalsetting::findOrFail(1);
        return view('admin.email.group_mail',compact('config'));
    }

    public function groupemailpost(Request $request)
    {
        $recever_users = [];
        switch ($request->type) {
            case 'user':
                $recever_users = User::whereStatus(1)->select('email')->get();
                break;
            case 'staff':
                $recever_users = Admin::whereNotIn('id', [1])->select('email')->get();
                break;
            case 'subscriber':
                $recever_users = Subscriber::get();
                break;
        }
        
        $mgs = MailHelper::sendGroupMail($recever_users,$request);
        
        return response()->json($mgs);

    }

    public function update(Request $request, $id)
    {
        $data = EmailTemplate::findOrFail($id);
        $input = $request->all();
        $data->update($input);
        //--- Redirect Section          
        $msg = __('Data Updated Successfully.');
        return response()->json($msg);    
        //--- Redirect Section Ends  
    }

}

<?php

namespace App\Http\Controllers;

use App\Setting;
use Illuminate\Http\Request;
use Session;
class SettingsController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function index() {
        $settings = Setting::first();
        return view('admin.settings.settings', compact('settings'));
    }

    public function update() {
        $this->validate(\request(),[
            'site_name' => 'required',
            'address' => 'required',
            'contact_number' => 'required',
            'contact_email' => 'required'

        ]);
        $settings = Setting::first();
        $settings->site_name = \request()->site_name;
        $settings->address = \request()->address;
        $settings->contact_number = \request()->contact_number;
        $settings->contact_email = \request()->contact_email;
        $settings->save();
        Session::flash('success', 'Settings Updated Successfully..');
        return redirect()->route('home');
    }
}

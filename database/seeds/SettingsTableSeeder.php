<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\Setting::create([
            'site_name' => 'Laravel\'s Blog',
            'address' => 'Netherlands, Utrecht',
            'contact_number' => '+30 685558320',
            'contact_email' => 'ahmad@gmail.com'
        ]);
    }
}

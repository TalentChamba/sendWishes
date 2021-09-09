<?php

namespace App\Console\Commands;

use App\Models\Employee;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class cronEmail extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'birthday:email';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send Birthday Wishes based on given date of birth';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
          $arr_employees = Employee::whereMonth('dateOfBirth', '=', date('m'))->whereDay('dateOfBirth', '=', date('d'))->get();
          if(count($arr_employees) > 0) {
              foreach ($arr_employees as $user) {
                  $email = "tazchazjnr@gmail.com";
                  $name = $user->name;
                  //dd($name);
                  $data = array("name" => $name, "body" => "Happy Birthday"." ".$name);
                  Mail::send('emails.cron-email', $data, function($message) use ($email) {
                      $message->to($email)
                              ->subject('Happy Birthday');
                      $message->from('birthdaywishes@realm.co.za', 'Real Team');
                  });
                  dd($data);
              }
          }



    }
}

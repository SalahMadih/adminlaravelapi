<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Auth;

use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {


      //Auth::loginUsingId(3);

      $user = Auth::user();


     
        //  $role = Role::create(['name' => 'writer']);
        //  $permission = Permission::create(['name' => 'writer articles']);
        //  $role = Role::findById(1);
        //  $permission = Permission::findById(1);
        //  $role->givePermissionTo($permission);
        //  $user = User::find(3);
        //  foreach($users as $user)
        //  $user->givePermissionTo('edit articles');
        //  $user->assignRole('subscriber');

          return  $user ;

        return view('home');
    }


    public function createRoles()
    {
        Role::create(['name' => 'subscriber','description'=>'User is the subscriber of a given project']);
        Role::create(['name' => 'admin','description'=>'User is allowed to manage all']);
        
        return " role has been creared " ;
    }


    public function actionAdmin(){
       
        return "actionAdmin";

    }

    public function actionSubscriber(){
        
        return "actionSubscriber";

    }
    
    public function actionCustomer(){
        
        return "actionCustomer";

    }
}

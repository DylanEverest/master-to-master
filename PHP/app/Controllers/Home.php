<?php

namespace App\Controllers;

use App\Controllers\Base2Controller as ControllersBase2Controller;
use App\Models\Test;
use App\Sessions\CustomSessionHandler;
use Base2Controller;

class Home extends ControllersBase2Controller
{
    public function index()
    {
       // $a = new CustomSessionHandler('clustering','session');
        // $a->findAll();
        session_start();
        $_SESSION['adala']=22;

    }

    public function adala()
    {
        session_start();
        $_SESSION['enjana'] =456 ;
 //       echo $_SESSION['adala'];
    }
    public function tsyadala()
    {
        session_destroy();
    }
}

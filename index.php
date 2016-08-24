<?php
session_start();
if(isset($_GET['page'])){
    $action=$_GET['page'];
}else{
    if(isset($_POST['page']))
    {
        $action=$_POST['page'];
    }else{
        $action=0;
    }
}
switch ($action){
    case 'thanhtoan':
        if (empty($_POST['order_name']))
        {

        }
        else
        {
            $ordername=$_POST['order_name'];
        }
        if (empty($_POST['order_email']))
        {

        }
        else
        {
            $orderemail=$_POST['order_email'];
        }
        if (empty($_POST['order_phone']))
        {

        }
        else
        {
            $orderphone=$_POST['order_phone'];
        }
        if (empty($_POST['order_address']))
        {

        }
        else
        {
            $orderaddress=$_POST['order_address'];
        }
        if (empty($_POST['orde_price']))
        {

        }
        else
        {
            $orderprice=$_POST['orde_price'];
        }
        if (empty($_POST['prod_id']))
        {

        }
        else
        {
            $orderprodid=$_POST['prod_id'];
        }
        if (empty($_POST['prod_name']))
        {

        }
        else
        {
            $orderprodname=$_POST['prod_name'];
        }
        if (empty($_POST['orde_quality']))
        {

        }
        else
        {
            $orderprodquality=$_POST['orde_quality'];
        }
        if (empty($_POST['total_price']))
        {

        }
        else
        {
            $totalprice=$_POST['total_price'];
        }

//        orders_news($ordername,$orderemail,$orderphone,$orderaddress,$totalprice,$orderprodid,$orderprodname,$orderprodquality,$orderprice);

        
}

require 'controllers/controller.php';

?>
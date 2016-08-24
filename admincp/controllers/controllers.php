<?php

    require 'models/login.php';
    require 'models/function.php';
    $mess_success=null;
    if (isset($_SESSION['username']))
    {
        require_once 'views/layout/header.php';
        if (isset($_GET['page']))
    {
       $page = $_GET['page'];
       if ($page == 'logout')
       {
           $_SESSION = array();
           session_destroy();
           $mess_success='Đăng Xuất thành công';
           require 'views/user/login.php';
       }
        if ($page == 'addcate')
        {
            require 'views/categories/addcate.php';
        }
        if ($page == 'edit_cate')
        {
            require 'views/categories/updatecart_db.php';
        }
        if ($page == 'addprod')
        {
            require 'views/products/addproducts.php';
        }
        if ($page == 'danhmuc')
        {
            require 'views/categories/danhmuc.php';
        }
        if ($page == 'sanpham')
        {
            require 'views/products/sanpham.php';
        }
        if($page == 'viewodder_detail'){
            require 'views/orders/orders_detail.php';
        }
        if($page == 'orders'){
            require 'views/orders/orders.php';
        }
    }
    else 
        {
            require 'views/layout/home.php';
        }

        require 'views/layout/footer.php';
        require 'views/layout/menu.php';
    }
        else
        {
            require 'views/user/login.php';
        }
?>
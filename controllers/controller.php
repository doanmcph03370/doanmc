<?php
    require 'models/function.php';
	require 'models/send_gmail.php';
    require 'views/header.php';
    if (isset($_GET['page']))
    {
       $page = $_GET['page'];
       
       if ($page == 'addcart')
       {
            require 'controllers/add_cart.php';
       }
       if ($page == 'cart')
       {
            require 'controllers/cart.php';
       }
       if ($page == 'delcart')
       {
            require 'controllers/delcart.php';
       }
        if ($page == 'category')
        {
            require  'views/categories/category.php';
        }
        if ($page == 'product_detail')
        {
            require  'views/prodcuts/product_detail.php';
        }
        if ($page == 'delallcart')
        {
            require  'controllers/dellallcart.php';
        }
        if ($page == 'thanhtoan')
        {
            require  'controllers/thanhtoan.php';
            if (!empty($_POST['order_name'])) {
                $ordername = $_POST['order_name'];
                $orderemail = $_POST['order_email'];
                $orderphone = $_POST['order_phone'];
                $orderaddress = $_POST['order_address'];
                $orderprice = $_POST['orde_price'];
                $orderprodid = $_POST['prod_id'];
                $orderprodname = $_POST['prod_name'];
                $orderprodquality = $_POST['orde_quality'];
                $totalprice = $_POST['total_price'];
				$from_email='kientmph02886@fpt.edu.vn';
				$from_email_pass='minhkien';
				$chude='Don Hang Tai SmartShop';
				$noidung='Chuc mung ban da dat hang thanh cong !!!' . '</br>' .'Ten Khach Hang:' . $ordername . '</br>' . 'Dia Chi: ' . $orderaddress . '</br>' . 'Ten San Pham: ' . $orderprodname . '</br>' . 'So Luong: ' . $orderprodquality. '</br>' . 'Thanh Tien: ' . $totalprice . 'VND';
				$smartshop='Smart Shop';
				
                orders_news($ordername, $orderemail, $orderphone, $orderaddress, $totalprice, $orderprodid, $orderprodname, $orderprodquality, $orderprice);
				send_gmail($from_email,$from_email_pass,$orderemail,$ordername,$chude,$noidung,$smartshop);
            }
        }
        
    }
    else 
    {
        require 'views/prodcuts/products_view2.php';
    }
require 'views/footer.php';
?>
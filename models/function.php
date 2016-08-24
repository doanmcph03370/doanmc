<?php

    require 'config/config.php';
    function get_all_products()
    {
        global $db;
        $sql = "SELECT * FROM products";
        $products = $db->query($sql);
        $products = $products->fetchAll();
        return $products;
        
    }
    function get_products_by_id($id)
    {
        global $db;
        $sql = "SELECT * FROM products WHERE prod_id ='$id'";
        $product = $db->query($sql);
        $product = $product->fetchAll();
        return $product;
    }
    function get_products_by_id2($id)
    {
        global $db;
        $sql = "SELECT * FROM products WHERE prod_id ='$id'";
        $product = $db->query($sql);
        $product = $product->fetch();
        return $product;
    }
    function get_all_products_by_catename($name)
    {
        global $db;
        $sql = "SELECT * FROM products WHERE prod_catename ='$name'";
        $category = $db->query($sql);
        $category = $category->fetchAll();
        return $category;
    }
    function get_all_categories()
    {
        global $db;
        $sql = "SELECT * FROM categories";
        $categories = $db->query($sql);
        $categories = $categories->fetchAll();
        return $categories;
    }

    function orders_news($ordername,$orderemail,$orderphone,$orderaddress,$totalprice,$orderprodid,$orderprodname,$orderprodquality,$orderprice)
    {
        global $db;
        $sql1="INSERT INTO orders (orde_name,orde_email,orde_address,orde_phone,orde_price) VALUES ('$ordername','$orderemail','$orderaddress','$orderphone','$totalprice')";
        if ($db->exec($sql1)){
            $sql="INSERT INTO orderdetail (oddt_orderid,oddt_productid,oddt_quantity,oddt_productname,oddt_productprice) VALUES (@@IDENTITY ,'$orderprodid','$orderprodquality','$orderprodname',$orderprice)";
            if($db->exec($sql))
            {
                echo "<script type= 'text/javascript'>alert('Đặt Hàng Thành Công Thành Công ! Chúng Tôi sẽ sớm liên lạc với bạn');</script>";
            }
            else
            {
                echo "<script type= 'text/javascript'>alert('Đặt Hàng Thành Thất Bại !');</script>";
            }
        }

            }






?>
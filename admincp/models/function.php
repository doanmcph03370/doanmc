<?php
    require '../config/config.php';
    $mess=null;

function add_cate($catename, $catedesc){

    global $db;
    $sql="INSERT INTO categories (cate_name,cate_desc) VALUES ('$catename','$catedesc')";
    if ($db->exec($sql)) {
        echo "<script type= 'text/javascript'>alert('Thêm Danh Mục Thành Công');</script>";
    }else {
        echo "<script type= 'text/javascript'>alert('Thêm Danh Mục Thất Bại');</script>";
    }
}
function show_categories_byid($id)
{
    global $db;
    $sql="SELECT * FROM categories WHERE cate_id='$id'";
    $get_cate=$db->query($sql);
    $get_cate=$get_cate->fetch();
    return $get_cate;
}


function update_cate($catename,$catedesc,$cateid){

    global $db;
    $sql="UPDATE categories SET cate_name='$catename',cate_desc='$catedesc' WHERE cate_id='$cateid'";
    if ($db->exec($sql)) {
        echo "<script type= 'text/javascript'>alert('Sửa danh mục Thành Công');</script>";
    }else {
        echo "<script type= 'text/javascript'>alert('Sửa danh mục Thất Bại');</script>";
    }

}
function delete_categories_byid($cateid){

    global $db;
    $sql="DELETE FROM categories WHERE cate_id='$cateid'";
    if ($db->exec($sql)) {
        echo "<script type= 'text/javascript'>alert('Xóa danh mục Thành Công');</script>";
    }else {
        echo "<script type= 'text/javascript'>alert('Xóa danh mục Thất Bại');</script>";
    }

}
function delete_product_byid($prodid){

    global $db;
    $sql="DELETE FROM products WHERE prod_id='$prodid'";
    if ($db->exec($sql)) {
        echo "<script type= 'text/javascript'>alert('Xóa Sản Phẩm Thành Công');</script>";
    }else {
        echo "<script type= 'text/javascript'>alert('Xóa Sản Phẩm Thất Bại');</script>";
    }

}
function add_prod($prodname,$prodcateid,$prodprice,$proddesc,$name_images){

    global $db;
    $sql="INSERT INTO products (prod_name,prod_catename,prod_price,prod_description,prod_image) VALUES ('$prodname','$prodcateid','$prodprice','$proddesc','$name_images')";
    if ($db->exec($sql)) {
        echo "<script type= 'text/javascript'>alert('Thêm Sản Phẩm Thành Công');</script>";
    }else {
        echo "<script type= 'text/javascript'>alert('Thêm Sản Phẩm Thất Bại');</script>";
    }
}
function show_categories()
{
    global $db;
    $sql="SELECT * FROM categories";
    $get_cate=$db->query($sql);
    $get_cate=$get_cate->fetchAll();
    return $get_cate;
}
function show_products()
{
    global $db;
    $sql="SELECT * FROM products";
    $show_prod=$db->query($sql);
    $show_prod=$show_prod->fetchAll();
    return $show_prod;
}
function show_news()
{
    global $db;
    $sql="SELECT * FROM $show_news";
    $show_news=$db->query($sql);
    $show_news=$show_news->fetchAll();
    return $show_news;
}
function show_user()
{
    global $db;
    $sql="SELECT * FROM $show_news";
    $show_user=$db->query($sql);
    $show_user=$show_user->fetchAll();
    return $show_user;
}
function total_products()
{
    global $db;
    $sql="SELECT * FROM products";
    $get_prod=$db->query($sql);
    $all_prod=$get_prod->rowCount();
    return $all_prod;
}

function total_users()
{
    global $db;
    $sql="SELECT * FROM user";
    $get_users=$db->query($sql);
    $all_users=$get_users->rowCount();
    return $all_users;
}
function total_orders()
{
    global $db;
    $sql="SELECT * FROM orders";
    $get_orders=$db->query($sql);
    $all_orders=$get_orders->rowCount();
    return $all_orders;
}
function show_all_orders()
{
    global $db;
    $sql="SELECT * FROM orders";
    $get_orders=$db->query($sql);
    $all_orders=$get_orders->fetchAll();
    return $all_orders;
}
function show_ordersdetail_byid($id)
{
    global $db;
    $sql="SELECT * FROM orderdetail WHERE oddt_orderid='$id'";
    $get_ordersdetail=$db->query($sql);
    $get_ordersdetail=$get_ordersdetail->fetchAll();
    return $get_ordersdetail;
}

function upload_images($file){
    
    move_uploaded_file($_FILES['images_upload']['tmp_name'],$file);
    
}
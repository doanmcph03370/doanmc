<?php
    $dir= "../uploads/";

    session_start();
    require 'controllers/controllers.php';

    if (isset($_GET['page']))
    {
        $action=$_GET['page'];
    }else
    {
        if(isset($_POST['page']))
        {
            $action=$_POST['page'];
        }else
        {
            $action=0;
        }
    }
    switch ($action)
    {
        case 'addcate':
                if (empty($_POST['cate_name']))
                    {

                    }
                else
                    {
                        $catename=$_POST['cate_name'];
                    }
                if (empty($_POST['cate_desc']))
                    {

                    }
                else
                    {
                        $catedesc=$_POST['cate_desc'];
                    }
                if (isset($catename) && isset($catedesc))
                    {
                        add_cate ( $catename , $catedesc );
                    }
        break;
    }
    switch ($action)
    {
        case 'edit_cate':
            if (empty($_POST['cate_name']))
            {

            }
            else
            {
                $catename=$_POST['cate_name'];
            }
            if (empty($_POST['cate_desc']))
            {

            }
            else
            {
                $catedesc=$_POST['cate_desc'];
            }
            if (empty($_GET['id']))
            {

            }else
            {
                $cateid=$_GET['id'];
            }
            if (isset($catename) && isset($catedesc) && isset($cateid))
            {
                update_cate($catename, $catedesc,$cateid);
                echo '<script type="text/javascript">document.location="index.php?page=danhmuc"</script>';
            }
            break;
    }
    switch ($action)
    {
        case 'delete_cate':

            if (empty($_GET['id']))
            {

            }else
            {
                $cateid=$_GET['id'];
            }
            if (isset($cateid))
            {
                delete_categories_byid($cateid);
                echo '<script type="text/javascript">document.location="index.php?page=danhmuc"</script>';
            }
            break;
    }
    switch ($action)
    {
        case 'deldb_prod':

            if (empty($_GET['id']))
            {

            }else
            {
                $prodid=$_GET['id'];
            }
            if (isset($prodid))
            {
                delete_product_byid($prodid);
                echo '<script type="text/javascript">document.location="index.php?page=sanpham"</script>';
            }
            break;
    }
    switch ($action) {
        case 'addprod':
                        if (empty($_POST['prod_name']))
                            {

                            }
                        else
                            {
                                $prodname=$_POST['prod_name'];
                            }

                        if (empty($_POST['cate_id_prod']))
                            {

                            }
                        else
                            {
                                $prodcateid=$_POST['cate_id_prod'];
                            }
                        if (empty($_POST['prod_price']))
                            {

                            }
                        else
                            {
                                $prodprice=$_POST['prod_price'];
                            }
                        if (empty($_POST['prod_desc']))
                            {

                            }
                        else
                            {
                                $proddesc=$_POST['prod_desc'];
                            }
                        if (empty($_FILES['images_upload']))
                        {

                        }
                        else
                        {
                            $file=$dir . "SmartShop_Images_" . basename($_FILES['images_upload']['name']);
                            $name_images="SmartShop_Images_" . $_FILES['images_upload']['name'];
                        }


                        if (isset($prodname) && isset($proddesc))
                        {
                            add_prod($prodname,$prodcateid,$prodprice,$proddesc,$name_images);
                            upload_images($file);

                        }
                break;
            }

?>
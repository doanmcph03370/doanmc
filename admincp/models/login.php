<?php

    require '../config/config.php';
    $mess=null;
    if(isset($_POST['login']))
    {

        if($_POST['username']==null)
        {
            $mess='Bạn chưa Điền Tài Khoản';
        }else
        {
            $username=$_POST['username'];
        }
        if($_POST['password']==null)
        {
            $mess='Bạn chưa điền mật khẩu';
        }else
        {
            $password=$_POST['password'];
            $pass=sha1($password);
        }
        if ($username && $password)
        {
            global $db;
            $sql="SELECT * FROM user WHERE username='$username' AND password='$pass'";
            $login=$db->query($sql);
            $count=$login->rowCount();

            if($count==0)
            {
                $mess='Sai tên tài khoản hoặc mật khẩu';
            }else
            {

                $_SESSION['username']=$username;

            }
        }
    }


?>
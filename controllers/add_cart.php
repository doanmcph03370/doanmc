<?php

$prod_id = $_GET['id']; 
if(isset($_SESSION ['giohang'][$prod_id]))
{
    $_SESSION['giohang'][$prod_id]['soluong'] +=1;
    echo '<script type="text/javascript">document.location="index.php?page=cart"</script>';
} else
{
    $_SESSION['giohang'][$prod_id]['sanpham'] = $prod_id;
    $_SESSION['giohang'][$prod_id]['soluong'] = 1;
    echo '<script type="text/javascript">document.location="index.php?page=cart"</script>';
}

?>
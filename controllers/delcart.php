<?php

    if(isset($_GET['id']))
    {
        $id = $_GET['id'];
        unset($_SESSION['giohang'][$id]);
        echo '<script type="text/javascript">document.location="index.php?page=cart"</script>';
    }else
    {
        
    }

?>
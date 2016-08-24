<?php
    
    if (isset($_GET['page']))
    {
        $page=$_GET['page'];
            if ($page == 'addcate')
            {
                require 'models/addcate.php';
            }

    }else {
        require 'views/layout/home.php';
    }
    

?>
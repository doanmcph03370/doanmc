<!--slider menu-->
<div class="sidebar-menu">
    <div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span>
            <!--<img id="logo" src="" alt="Logo"/>-->
        </a> </div>
    <div class="menu">
        <ul id="menu" >
            <li id="menu-home" ><a href="index.php?page=addcate"><i class="fa fa-tachometer"></i><span>Thêm Danh Mục</span></a></li>

            <li><a href="index.php?page=addprod"><i class="fa fa-cogs"></i><span>Thêm Sản Phẩm</span></a></li>
            <li id="menu-home" ><a href="index.php?page=danhmuc"><i class="fa fa-tachometer"></i><span>Danh mục</span></a></li>
            <li id="menu-home" ><a href="index.php?page=sanpham"><i class="fa fa-tachometer"></i><span>Sản Phẩm</span></a></li>




            <li><a href="#"><i class="fa fa-envelope"></i><span>Quản Lý Đơn Hàng</span></a>
                <ul id="menu-academico-sub" >
                    <li id="menu-academico-avaliacoes" ><a href="index.php?page=orders">Đơn Hàng</a></li>

                </ul>
            </li>

        </ul>
    </div>
</div>
<div class="clearfix"> </div>
</div>
<script>
    var toggle = true;

    $(".sidebar-icon").click(function() {
        if (toggle)
        {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({"position":"absolute"});
        }
        else
        {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function() {
                $("#menu span").css({"position":"relative"});
            }, 400);
        }
        toggle = !toggle;
    });
</script>
<!--scrolling js-->
<script src="views/js/jquery.nicescroll.js"></script>
<script src="views/js/scripts.js"></script>
<!--//scrolling js-->
<script src="views/js/bootstrap.js"> </script>
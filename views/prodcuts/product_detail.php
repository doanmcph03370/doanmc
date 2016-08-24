<?php
$id=$_GET['id'];
$product=get_products_by_id($id);
foreach ($product as $item) {
?>
<div class="page-head">
    <div class="container">
        <h3><?php echo $item['prod_name'] ?></h3>
    </div>
</div>
<!-- //banner -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
            <div class="grid images_3_of_2">
                <div class="flexslider">
                    <!-- FlexSlider -->
                    <script>
                        // Can also be used with $(document).ready()
                        $(window).load(function() {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                            });
                        });
                    </script>
                    <!-- //FlexSlider-->

                            <div class="thumb-image"> <img src="./uploads/<?php echo $item['prod_image'] ?>" data-imagezoom="true" class="img-responsive"> </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
            <h3><?php echo $item['prod_name'] ?></h3><br>
            <p><span class="item_price"><span>Giá: </span><?php echo number_format($item['prod_price']); ?> <strong>VNĐ</strong></span></p>
            <div class="rating1">
                <span>Đánh Giá:   </span><span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked="">
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
            </div><br><br>
            <span>Hãng Sản Xuất: <strong><?php echo $item['prod_catename'] ?></strong></span><br><br><br><br>

            <div class="occasion-cart">
                <a href="index.php?page=addcart&id=<?php echo $id; ?>" class="item_add hvr-outline-out button2">Mua Ngay</a>
            </div>

        </div>
        <div class="clearfix"> </div>

        <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Thông Tin Sản Phẩm</a></li>

                </ul>
                <div id="myTabContent" class="tab-content" >
                    <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
                        <h5><?php echo $item['prod_name'] ?></h5>
                        <?php echo $item['prod_description'] ?>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>
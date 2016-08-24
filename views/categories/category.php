<div class="page-head">
    <div class="container">
        <h3>SmartShop - Thế Giới Trong Tay Bạn</h3>
    </div>
</div>
<!-- //banner -->
<!-- Electronics -->
<div class="electronics">
    <div class="container">
        <div class="col-md-8 electro-left text-center">
            <div class="electro-img-left mask">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="views/images/watch.jpg" alt="image" class="img-responsive zoom-img"></div>
                    <div class="info-box">
                        <div class="info-content electro-text simpleCart_shelfItem">
                            <h4>Branded Watches</h4>
                            <span class="separator"></span>
                            <p><span class="item_price">$500</span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="electro-img-btm-left mask">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="views/images/e1.jpg" alt="image" class="img-responsive zoom-img"></div>
                    <div class="info-box">
                        <div class="info-content electro-text simpleCart_shelfItem">
                            <h4>Mobiles</h4>
                            <span class="separator"></span>
                            <p><span class="item_price">$500</span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="electro-img-btm-right mask">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="views/images/e2.jpg" alt="image" class="img-responsive zoom-img"></div>
                    <div class="info-box">
                        <div class="info-content electro-text simpleCart_shelfItem">
                            <h4>Branded Watches</h4>
                            <span class="separator"></span>
                            <p><span class="item_price">$500</span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-4 electro-right text-center">
            <div class="electro-img-rt mask">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="views/images/e4.jpg" alt="image" class="img-responsive zoom-img"></div>
                    <div class="info-box">
                        <div class="info-content electro-text simpleCart_shelfItem">
                            <h4>Mobiles</h4>
                            <span class="separator"></span>
                            <p><span class="item_price">$500</span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="ele-bottom-grid">
            <h3><span>Khách Hàng </span>Là Ông Chủ</h3>
            <p>Cam Kết giá rẻ nhất - Chất Lượng Tốt Nhất</p>
<?php
$name=$_GET['name'];
$products = get_all_products_by_catename($name);
foreach ($products as $r) {
    ?>
    <div class="col-md-3 product-men">
        <div class="men-pro-item simpleCart_shelfItem">
            <div class="men-thumb-item">
                <img src="./uploads/<?php echo $r['prod_image'] ?>" alt="" class="pro-image-front">
                <img src="./uploads/<?php echo $r['prod_image'] ?>" alt="" class="pro-image-back">
                <div class="men-cart-pro">
                    <div class="inner-men-cart-pro">
                        <a href="index.php?page=product_detail&id=<?php echo $r['prod_id']; ?>" class="link-product-add-cart">Xem Chi Tiết</a>
                    </div>
                </div>
                <span class="product-new-top">New</span>

            </div>
            <div class="item-info-product ">
                <h4><a href="index.php?page=product_detail&id=<?php echo $r['prod_id']; ?>"><?php echo $r['prod_name'] ?></a></h4>
                <div class="info-product-price">
                    <span class="item_price"><?php echo number_format($r['prod_price']) ?></span>

                </div>
                <a href="index.php?page=addcart&id=<?php echo $r['prod_id'] ?>" class="item_add single-item hvr-outline-out button2">Mua Hàng</a>
            </div>
        </div>
    </div>
<?php } ?>












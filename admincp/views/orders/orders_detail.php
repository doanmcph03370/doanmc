<?php
    $id=$_GET['id'];
    $show_orderdetail=show_ordersdetail_byid($id);
?>
<div class="chit-chat-layer1">
    <div class="col-md-12 chit-chat-layer1-left">
        <div class="work-progres">
            <div class="chit-chat-heading">
                Đơn Hàng
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Mã Đơn Hàng Chi Tiết</th>
                        <th>Tên Sản Phẩm</th>
                        <th>Mã Sản Phẩm</th>
                        <th>Số Lượng</th>
                        <th>Thành Tiền</th>
                        <th>Mã Hóa Đơn</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    foreach ($show_orderdetail as $item){
                        ?>
                        <tr>
                            <td><?php echo $item['oddt_id'] ?></td>
                            <td><?php echo $item['oddt_productname'] ?></td>
                            <td><?php echo $item['oddt_productid'] ?></td>
                            <td><?php echo $item['oddt_quantity'] ?></td>
                            <td><?php echo number_format($item['oddt_productprice']); ?> VNĐ</td>
                            <td><?php echo $item['oddt_orderid'] ?></td>




                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-6 chit-chat-layer1-rit">

    </div>
    <div class="clearfix"> </div>
</div>
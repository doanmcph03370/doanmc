<?php
$all_prod=total_products();
$all_users=total_users();
$all_orders=total_orders();
$show_order=show_all_orders();
?>
<!--inner block start here-->
<div class="inner-block">
 
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
                            <th>Mã Đơn Hàng</th>
                            <th>Tên Khách Hàng</th>
                            <th>Số Điện Thoại</th>
                            <th>Địa Chỉ</th>
                            <th>Email</th>
                            <th>Tình Trạng</th>
                            <th>Tổng Tiền</th>
                            <th>Chi Tiết</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        foreach ($show_order as $item){
                            ?>
                            <tr>
                                <td><?php echo $item['orde_id'] ?></td>
                                <td><?php echo $item['orde_name'] ?></td>
                                <td><?php echo $item['orde_phone'] ?></td>
                                <td><?php echo $item['orde_address'] ?></td>
                                <td><?php echo $item['orde_email'] ?></td>
                                <td>
                                    <?php if ($item['orde_status']==0){echo "<span class='label label-danger'>" . "Chờ Xác Nhận" . "</span>";}else{echo "<span class='label label-success'>" .  "Hoàn Thành" . "</span>";} ?></td>

                                <td><?php echo number_format($item['orde_price']); ?> VNĐ</td>
                                <td><a href="index.php?page=viewodder_detail&id=<?php echo $item['orde_id']; ?>"><i class="fa fa-eye"></i></a></td>

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



</div>
<!--inner block end here-->
<!--copy rights start here-->

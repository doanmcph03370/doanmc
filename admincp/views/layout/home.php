<?php
$all_prod=total_products();
$all_users=total_users();
$all_orders=total_orders();
$show_order=show_all_orders();
?>
<!--inner block start here-->
<div class="inner-block">
<!--market updates updates-->
	 <div class="market-updates">
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-1">
					<div class="col-md-8 market-update-left">
						<h3><?php echo $all_prod; ?></h3>
						<h4>Thành Viên</h4>
						<p>Tổng số thành viên đã đăng ký</p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-file-text-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-2">
				 <div class="col-md-8 market-update-left">
					<h3><?php echo $all_prod; ?></h3>
					<h4>Tổng số sản phẩm</h4>
					<p>Tất cả sản phẩm bán trên Shop</p>
				  </div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-eye"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-3">
					<div class="col-md-8 market-update-left">
						<h3><?php echo $all_orders; ?></h3>
						<h4>Đơn Hàng</h4>
						<p>Tổng Số Đơn Hàng</p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-envelope-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>
<!--market updates end here-->
<!--mainpage chit-chating-->
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

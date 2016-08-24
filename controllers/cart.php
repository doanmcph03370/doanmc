<form action="" method="POST">
	<div class="container">
		<h3>SmartShop</h3>
		<div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
			<?php
			if(!isset($_SESSION['giohang']))
			{
				echo "<p>Bạn chưa chọn sản phẩm nào!!!</p>";
			}else
			{
			$cart = $_SESSION['giohang']; //g⮠session gi? hᯧ vᯠbi?n $cart
			
			?>
			<table class="timetable_sub">
				<thead>
				<tr>
					<th>Xóa</th>
					<th>Sản Phẩm</th>
					<th>Số Lượng</th>
					<th>Tên Sản Phẩm</th>
					<th>Giá</th>
				</tr>
				</thead>
				<tbody>
				<?php

				$total_price = 0;
				foreach ($cart as $r){

					$product = get_products_by_id2($r['sanpham']); //id c?a s?n ph?m chính là $r['sanpham']
					$prod_id = $product['prod_id']; //gán ID s?n ph?m vào bi?n $id
					if(isset($_POST['updatecart'])) //n?u có click vào nút update cart
					{
						$_SESSION['giohang'][$prod_id]['soluong'] = $_POST['soluong'.$prod_id];

					}
					$money=$_SESSION['giohang'][$prod_id]['soluong'] * $product['prod_price'];
					$total_price = $total_price + $money;
					?>
					<tr class="rem1">
						<td class="invert-closeb"><a href="index.php?page=delcart&id=<?php echo $product['prod_id'] ?>">Xoa SP</a></td>
						<td class="invert-image"><a href="index.php?page=product_detail&id=<?php echo $product['prod_id']; ?>"><img src="./uploads/<?php echo $product['prod_image'] ?>" alt=" " class="img-responsive"></a></td>
						<td class="invert">
							<input type="text" class="entry value" name="soluong<?php echo $prod_id ?>" value="<?php if(isset($_POST['updatecart'])){echo $_POST['soluong'.$prod_id];} else {echo $r['soluong'];} ?>" />

						</td>
						<td class="invert"><?php echo $product['prod_name'] ?></td>
						<td class="invert"><?php echo number_format($money) ?> <span>VND</span></td>
					</tr>
				<?php }  ?>
				</tbody>
			</table>
		</div>
		<div class="checkout-left">

			<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
				<a href="index.php"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Mua Sắm Tiếp</a>
				<input type="submit" class="btn btn-success" name="updatecart" value="Cập nhật giỏ hàng" />
			</div>
			<div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
				<h4>Tổng số tiền bạn phải thanh toán</h4>
				<ul>
					<li>Tổng <i>-</i> <span><?php echo number_format($total_price) ?> VNĐ</span></li>

						<a class="btn btn-info" href="index.php?page=thanhtoan">Thanh Toán</a>

				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<?php
	}

	?>

</form>
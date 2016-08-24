<div class="thanhtoan" style="text-align: center;float: "><br><br>
<h3 class="tittle">Đặt Hàng</h3>


    <div class="contact-form2">
        <form action="" method="post">
        <input type="text" name="order_name" placeholder="Họ Và Tên"  required=""><br><br>
        <input type="email" name="order_email" placeholder="Email"  required=""><br><br>
        <input type="text" name="order_address" placeholder="Địa Chỉ"  required=""><br><br>
        <input type="text" name="order_phone" placeholder="Số Điện Thoại" required=""><br><br>
        <table class="table">
            <tbody  class="table-bordered">
            <tr>
                <td><label>Mã Sản Phẩm</label></td>
                <td><label>Tên Sản Phẩm</label></td>
                <td><label>Số Lượng</label></td>
                <td><label>Thành Tiền</label></td>

            </tr>
            <?php
            $cart=$_SESSION['giohang'];
            $total_price = 0;
            foreach ($cart as $r){

                $product = get_products_by_id2($r['sanpham']); //id c?a s?n ph?m chính là $r['sanpham']
                $prod_id = $product['prod_id']; //gán ID s?n ph?m vào bi?n $id
                $money=$_SESSION['giohang'][$prod_id]['soluong'] * $product['prod_price'];
                $total_price = $total_price + $money;
            ?>
                <tr>
                    <td><input type="hidden" name="prod_id" value="<?php echo $product['prod_id']; ?>"><?php echo $product['prod_id']; ?></td>
                    <td><input type="hidden" name="prod_name" value="<?php echo $product['prod_name']; ?>"><?php echo $product['prod_name']; ?></td>
                    <td><input type="hidden" name="orde_quality" value="<?php echo $r['soluong']; ?>"><?php echo $r['soluong']; ?></td>
                    <td><input type="hidden" name="orde_price" value="<?php echo $money; ?>"><?php echo number_format($money); ?> VNĐ</td>

                </tr>
            <?php }?>
            
                <tr>
                    <td style="color: red;"><strong>Tổng Tiền Cần Thanh Toán:</strong></td>
                    <td><input name="total_price" type="hidden" value="<?php echo $total_price; ?>"><?php echo number_format($total_price); ?> VNĐ</td>
                </tr>
            </tbody>
        </table>

        <input type="submit" value="Đặt Hàng" name="thanhtoan" >
        </form>
    </div>

</div>
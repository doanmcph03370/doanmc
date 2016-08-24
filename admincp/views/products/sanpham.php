<br><br><br><br><br>
<div class="chit-chat-layer1">
    <div class="col-md-12 chit-chat-layer1-left">
        <div class="work-progres">
            <div class="chit-chat-heading">
                Danh Mục
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Hãng</th>
                        <th>Giá</th>
                        <th>Hình Ảnh</th>

                        <th>Hành Động</th>

                    </tr>
                    </thead>

                    <tbody>
                    <?php
                    $products=show_products();
                    foreach ($products as $r){
                        ?>
                        <tr>
                            <td><?php echo $r['prod_id']; ?></td>
                            <td><?php echo $r['prod_name']; ?></td>
                            <td><?php echo $r['prod_catename']; ?></td>
                            <td><?php echo number_format($r['prod_price']); ?> <strong>VNĐ</strong></td>
                            <td><img class="img-thumbnail" src="../uploads/<?php echo $r['prod_image']; ?>" width="150px" height="150px"></td>
                            
                            <td>
                                <a href="index.php?page=edit_prod&id=<?php echo $r['prod_id']; ?>"><span class="label label-info">Sửa</span></a>
                                <a href="index.php?page=deldb_prod&id=<?php echo $r['prod_id']; ?>"><span class="label label-danger">Xóa</span></a>
                            </td>

                        </tr>
                        <?php
                    }
                    ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-6 chit-chat-layer1-rit">

    </div>
    <div class="clearfix"> </div>
</div>
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
                        <th>Mô Tả</th>
                        <th>Hành Động</th>

                    </tr>
                    </thead>

                    <tbody>
                    <?php
                    $categories=show_categories();
                    foreach ($categories as $r){
                    ?>
                    <tr>
                        <td><?php echo $r['cate_id']; ?></td>
                        <td><?php echo $r['cate_name']; ?></td>
                        <td><?php echo $r['cate_desc']; ?></td>
                        <td>
                            <a href="index.php?page=edit_cate&id=<?php echo $r['cate_id']; ?>"><span class="label label-info">Sửa</span></a>
                            <a href="index.php?page=delete_cate&id=<?php echo $r['cate_id']; ?>"><span class="label label-danger">Xóa</span></a>
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
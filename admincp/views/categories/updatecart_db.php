

<script type="text/javascript" src="../app/ckeditor/ckeditor.js" language="JavaScript"></script>

<div class="inner-block">

    <div class="chit-chat-layer1">
        <div class="col-md-12 chit-chat-layer1-left">

            <div class="work-progres">
                <form action="" method="post" enctype="multipart/form-data">
                    <?php
                    $id=$_GET['id'];
                    $editcate=show_categories_byid($id);
                    $item=array($editcate);
                    foreach ($item as $r){
                    ?>
                    <tr>
                        <td><label>Mã Danh Mục: </label></td>
                        <td><input class="form-control" type="text" name="cate_id" value="<?php echo $r['cate_id']; ?>" disabled></td>
                    </tr>
                    <tr>
                        <td><label>Tên Danh Mục: </label></td>
                        <td><input class="form-control" type="text" name="cate_name" value="<?php echo $r['cate_name']; ?>" required=""></td>
                    </tr>
                    <tr>
                        <td><label>Mô Tả: </label></td>
                        <td>
                            <textarea class="form-control" name="cate_desc" rows="15"><?php echo $r['cate_desc'] ?></textarea>
                            <script type="text/javascript">CKEDITOR.replace('cate_desc');</script>
                        </td>
                    </tr><br>

                    <tr>

                        <td><input type="submit" class="btn btn-success" name="edit_cate" value="Sửa Danh Mục"></td>

                    </tr>
                    <?php } ?>
                </form>

            </div>
        </div>
        <div class="col-md-6 chit-chat-layer1-rit">

        </div>
        <div class="clearfix"> </div>
    </div>



</div>
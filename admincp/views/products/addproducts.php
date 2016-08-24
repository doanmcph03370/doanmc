

<script type="text/javascript" src="../app/ckeditor/ckeditor.js" language="JavaScript"></script>
<div class="inner-block">

    <div class="chit-chat-layer1">
        <div class="col-md-12 chit-chat-layer1-left">

            <div class="work-progres">
                <form action="" method="post" enctype="multipart/form-data">

                    <tr>
                        <td><label>Tên Sản Phẩm: </label></td>
                        <td><input class="form-control" type="text" name="prod_name" placeholder="Tên sản phẩm" required=""></td>
                    </tr>
                    <tr>
                        <td><label>Danh mục: </label></td>
                        <td>
                            <select name="cate_id_prod" class="form-control">
                                <optgroup label="Danh Mục">
                                    <?php
                                        $item = show_categories();
                                        foreach ($item as $r) {
                                    ?>

                                    <option><?php echo $r['cate_name']; ?></option>
                                    <?php
                                        }
                                    ?>


                                </optgroup>

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <label>Hình ảnh sản phẩm: </label>
                        <input type="file" name="images_upload">
                    <tr><br>
                        <td><label>Giá Sản Phẩm: </label></td>
                        <td><input class="form-control" type="number"  name="prod_price" placeholder="Giá sản phẩm" required=""></td>

                    </tr>
                    <tr>
                        <td><label>Mô Tả: </label></td>
                        <td>
                            <textarea class="form-control" name="prod_desc" rows="15"></textarea>
                            <script type="text/javascript">CKEDITOR.replace('prod_desc');</script>
                        </td>
                    </tr><br>

                    <tr>
                        
                        <td><input type="submit" class="btn btn-success" value="Thêm Sản Phẩm" name="addprod"></td>

                    </tr>
                </form>

            </div>
        </div>
        <div class="col-md-6 chit-chat-layer1-rit">

        </div>
        <div class="clearfix"> </div>
    </div>



</div>
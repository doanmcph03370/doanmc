

<script type="text/javascript" src="../ckeditor/ckeditor.js" language="JavaScript"></script>
<div class="inner-block">

    <div class="chit-chat-layer1">
        <div class="col-md-12 chit-chat-layer1-left">

            <div class="work-progres">
                <form action="" method="post" enctype="multipart/form-data">

                <tr>
                    <td><label>Tên Danh Mục: </label></td>
                    <td><input class="form-control" type="text" name="cate_name" placeholder="Tên danh mục" required=""></td>
                </tr>
                <tr>
                    <td><label>Mô Tả: </label></td>
                    <td>
                       <textarea class="form-control" name="cate_desc" rows="15"></textarea>
                        <script type="text/javascript">CKEDITOR.replace('cate_desc');</script>
                    </td>
                </tr><br>

                <tr>
                    <input type="hidden" name="addcate">
                    <td><button type="submit" class="btn btn-success">Thêm Danh Mục</button></td>

                </tr>
                </form>

            </div>
        </div>
        <div class="col-md-6 chit-chat-layer1-rit">

        </div>
        <div class="clearfix"> </div>
    </div>



</div>
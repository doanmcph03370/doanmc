
<!DOCTYPE HTML>
<html>
<head>
<title>Admincp | SmartShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="views/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="views/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--js-->
<script src="views/css/jquery-2.1.1.min.js"></script> 
<!--icons-css-->
<link href="views/css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--static chart-->
</head>
<body>	

<div class="login-page">
    <div class="login-main">  	
    	 <div class="login-head">
				<h1>Login - Admincp | SmartShop</h1>
			</div>
			<div class="login-block">
				<?php
					if(isset($mess)){ ?>
				<div class="alert alert-danger">
					<strong>Lỗi</strong> <?php echo $mess;?>.
				</div>
				<?php
					}else {
				?>
				<div class="alert alert-success">
					<?php echo $mess_success;?>.
				</div>
				<?php
					}
				?>
				<form action="" method="post">
					<input type="text" name="username" placeholder="Tài khoản" required="">
					<input type="password" name="password" class="lock" placeholder="Mật Khẩu" required="">
					<div class="forgot-top-grids">
						<div class="forgot-grid">
							<ul>
								<li>
									<input type="checkbox" id="brand1" value="">
									<label for="brand1"><span></span>Nhớ tài khoản</label>
								</li>
							</ul>
						</div>
						
						<div class="clearfix"> </div>
					</div>
					<input type="submit" name="login" value="Đăng Nhập">	
								
					
					
				</form>
				<h5><a href="index.html">Về Trang Chính</a></h5>
			</div>
      </div>
</div>

<div class="copyrights">
	 <p>© 2016 SmartShop. All Rights Reserved | Code by  <a href="http://smartshop.com/" target="_blank">Kientm</a> </p>
</div>	
<!--COPY rights end here-->

<!--scrolling js-->
		<script src="views/css/jquery.nicescroll.js"></script>
		<script src="views/css/scripts.js"></script>
		<!--//scrolling js-->
<script src="views/css/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>


                      
						

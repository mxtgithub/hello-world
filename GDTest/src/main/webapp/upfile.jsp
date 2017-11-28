<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<script type="text/javascript" src="js/cookie_util.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="js/basevalue.js"></script>
	<script type="text/javascript" src="js/jiance.js"></script>
	
	<link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	
	<style type="text/css">
			.modal-body{
				position: absolute;
				left: 500px;
				top: 70px;
				width: 1000px;
			}
				h3{
				position: absolute;
				left: 330px;
				top: 20px;
			}
	</style>
</head>
<body>
<h3>检测</h3>
<div class="modal-body">
	<div class="form-group">
		<input id="filePath" type="file" name="file" style="color:black;"/>
		<label for="">文 件 名：</label>
	</div>
	<div class="form-group">
		<input id="filename"  type="text" name="filename" /><span id="1_msg"></span>
		<label for="">图1名称：</label>
	</div>
	<div class="form-group">
		<input id="pic1name" type="text" name="pic1name" /><span id="2_msg"></span>
		<label for="">图2名称：</label>
	</div>
	<div class="form-group">
		<input id="pic2name"  type="text" name="pic2name" /><span id="3_msg"></span>
	</div>
	<input id="submit" type="submit" value="上 传">
	
</div>
<!--
    <h1>检测</h1>
	<input id="filePath" type="file" name="file" style="color:black;"/><br/><br/>
	<label for="">文 件 名：</label>
	<input id="filename"  type="text" name="filename" /><span id="1_msg"></span><br>
	<label for="">图1名称：</label>
	<input id="pic1name" type="text" name="pic1name" /><span id="2_msg"></span><br>
	<label for="">图2名称：</label>
	<input id="pic2name"  type="text" name="pic2name" /><span id="3_msg"></span><br>
	
	<br/>
	<input id="submit" type="submit" value="上 传">
	
	  -->
</body>
</html>
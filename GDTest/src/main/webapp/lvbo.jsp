<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<script type="text/javascript" src="js/cookie_util.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="js/lvbo.js"></script>
	
	<link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<style type="text/css">
	    	body{
	    		background-image: url(picture/big_2.jpg);;
	    	}
		    #submit{
			    font-family: "tahoma", "宋体"; 
			    background-image:url(picture/4.gif);
			}
			.modal-body{
				position: absolute;
				left: 500px;
				top: 70px;
				width: 850px;
			}
			h3{
				position: absolute;
				left: 330px;
				top: 20px;
			}
	</style>
</head>
<body>

<h3>信号滤波</h3>
<div class="modal-body">
    <input id="filePath"  class="form-control"  type="file" name="file" style="color:black;"/>
    <div class="form-group">
        <label for="">文 件 名 ：</label>
        <input id="filename"  class="form-control"   type="text" name="filename" /><span id="1_msg"></span>
    </div>
    <div class="form-group">
        <label for="">滤波点数：</label>
        <input id="pointCount"  class="form-control"  type="text" name="pointCount" /><span id="6_msg"></span>
    </div>
    <div class="form-group">
        <label for="">图1名称 ：</label>
        <input id="pic1name"  class="form-control"  type="text" name="pic1name" /><span id="2_msg"></span>
    </div>
    <div class="form-group">
        <label for="">图2名称 ：</label>
        <input id="pic2name"  class="form-control"   type="text" name="pic2name" /><span id="3_msg"></span>
    </div>
    <div class="form-group">
        <label for="">图3名称 ：</label>
        <input id="pic3name"  class="form-control"   type="text" name="pic3name" /><span id="4_msg"></span>
    </div>
    <div class="form-group">
        <label for="">图4名称 ：</label>
        <input id="pic4name"  class="form-control"   type="text" name="pic4name" /><span id="5_msg"></span>
    </div>
    <input id="submit" type="submit" value="上 传">
</div>


</body>
</html>
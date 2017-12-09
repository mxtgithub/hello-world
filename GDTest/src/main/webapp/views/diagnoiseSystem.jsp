<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	window.contextPath="<%=request.getContextPath()%>";
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/GDTest/css/jquery-3.2.0.min.js"></script>
<!-- <script type="text/javascript" src="/GDTest/js/diagnoiseSystem.js"></script> -->
<link rel="stylesheet" type="text/css" href="/GDTest/css/person.css" />
<title>远程诊断</title>
</head>
<body>
<!-- <td><a href="/GDTest/views/first.jsp">返回</a><br></td> -->
<input type="" value="" size="1"/>当前功能:远程健康监测管理》诊断预防》远程诊断
 <table  border="1" >
 <tr>
 <td width="550" height="600"> 
<fieldset width="">
	    <legend>基本信息</legend>
	    <table cellpadding="0" cellspacing="0" border="1px" id="content" style="margin-top: 20px;width:100%;">
				<tr>
					<td>编号:<input type="text" size=8 name="listid"></td>
					<td>姓名:<input type="text" size=8 name="name"></td>
					<td>性别:<input type="text" size=8 name="gender"></td>
				</tr>
				<tr>
					<td>年龄:<input type="text" size=8 name="age"></td>
					<td>&nbsp;&nbsp;P&nbsp;&nbsp;:<input type="text" size=8 name="listid">ms</td>
					<td>&nbsp;&nbsp;QT:<input type="text" size=8 name="listid">ms</td>
					</tr>
				<tr>
					<td>心率:<input type="text" size=8 name="listid">bpm</td>
					<td>P-R:<input type="text" size=8 name="listid">ms</td>
					<td>QRS:<input type="text" size=8 name="listid">ms</td>
				</tr>
</fieldset>
</table>
</fieldset>
<div>
<iframe name="left" id="main_left" src="treatment.jsp" frameborder="false" scrolling="auto" style="border:none;
" width="100%" height="480" allowtransparency="true"></iframe>
<a href='treatment.jsp' target="right"></a>
</div>
<td width="700" height="500">
<div>
<iframe name="left" id="main_left" src="ecgPictures.jsp" frameborder="false" scrolling="auto" style="border:none;
" width="100%" height="620" allowtransparency="true"></iframe>
<a href='ecgPictures.jsp' target="right"></a>
</div>
</td>
</body>
</html>
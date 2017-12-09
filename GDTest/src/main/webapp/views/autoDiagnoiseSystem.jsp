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
 <td width="300" height="300"> 
<center><fieldset width="" >
	    <legend>基本信息</legend>
	    <table cellpadding="0" cellspacing="0" border="1px" id="content" style="margin-top: 10px;width:100%;">
				<tr>
					<td>编&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;号:<input type="text" size=8 name="listid"></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;病例号:<input type="text" size=8 name="name"></td>
				</tr>
				<tr>
					<td>姓&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;名:<input type="text" size=8 name="name"></td>
				</tr>
				<tr>
					<td>性&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;别:<input type="text" size=8 name="gender"></td>
				</tr>
				<tr>
					<td>年&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;龄:<input type="text" size=8 name="age"></td>
				</tr>
				<tr>
					<td>身&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;高:<input type="text" size=8 name="age">cm</td>
				</tr>
				<tr>
					<td>体&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;重:<input type="text" size=8 name="listid">kg</td>
				</tr>
				<tr>
					<td>心&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;率:<input type="text" size=8 name="listid">bpm</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" size=8 name="listid">ms</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QT:<input type="text" size=8 name="listid">ms</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P-R:<input type="text" size=8 name="listid">ms</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QRS:<input type="text" size=8 name="listid">ms</td>
				</tr>
				<tr>
					<td>医生姓名:<input type="text" size=8 name="listid"></td>
				</tr>
				<tr>
					<td>医生电话:<input type="text" size=8 name="listid"></td>
				</tr>
				<tr>
					<td>医生名称:<input type="text" size=8 name="listid"></td>
				</tr>
				<tr>
					<td>日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期:<input type="text" size=8 name="listid"></td>
				</tr>
</table>
</center>
</fieldset>
<td width="1200" height="500">
<div>
		<input type="button" value="读取" onclick="newPerson();">	<input type="text" size=30 name="listid">
		<input type="button" value="确定" onclick="newPerson();">&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="线性插值" onclick="newPerson();">&nbsp;&nbsp;
		<input type="button" value="滤波" onclick="newPerson();">&nbsp;&nbsp;
		<input type="button" value="ECG特征分析" onclick="newPerson();">&nbsp;&nbsp;
		<input type="button" value="远程诊断" onclick="newPerson();">
		<a href="javascript:showPage('/views/diagnoiseSystem.jsp')"></a></br>
<iframe name="left" id="main_left" src="autodiagnoisepicture.jsp" frameborder="false" scrolling="auto" style="border:none;
" width="100%" height="450" allowtransparency="true"></iframe>
<a href='autodiagnoisepicture.jsp' target="right"></a>
</div>
</td>
</body>
</html>
<%@ page language="java" import="java.util.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>病人诊治</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/person.css">
	</head>
	<body>
	 <!-- <input type="" value="" size="1"/>当前功能:远程健康监测管理》诊断预防》病情诊治</td></br></br> -->
	<div>
		<fieldset width="900">
	    <legend>病情诊断</legend>
	    <table  border="0" >
			<form action="QueryListByNumServlet" method="post">
<!-- 				档案编号：
				<input type="text" name="listid">
				&nbsp;&nbsp;&nbsp;&nbsp;
				姓名：
				<input type="text" name="listid"> -->
				<br/>
				当前症状
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<textarea name="symptoms" cols="60" rows="3"></textarea>
				<br>
				有无化验
				<br />
				&nbsp;&nbsp;&nbsp;&nbsp;
				<textarea name="test" cols="60" rows="3"></textarea><br>
				治疗方案
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<textarea name="treatment" cols="60" rows="3"></textarea>
				<br/><br>
				医生工号:<input type="text" size=10 name="docid" >
				&nbsp;&nbsp;&nbsp;&nbsp;
				诊治医师:<input type="text"size=10 name="docid" >
				<br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="提交">
				&nbsp;&nbsp;&nbsp;
				<input type="reset" value="重置">
			</form>
			</table>
			</fieldset>
		</div>
	</body>
</html>

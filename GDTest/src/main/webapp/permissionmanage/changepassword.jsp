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

		<title>更改密码</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">	
	<link rel="stylesheet" type="text/css" href="css/person.css">
  </head>
  
  <body>
  &nbsp; 
		修改密码 
		<br />
		<br />




		<form  name="form" action="ModifyDpassWord" method="post">
	    
	    
			&nbsp;旧密码&nbsp;&nbsp;：
			<input type="text" name="oldpw">
			<br>
			<br>
			&nbsp;新密码&nbsp;&nbsp;：
			<input type="text" name="newpw">
			<br>
			<br>
			重复密码：
			<input type="text" name="againpw">
			<br>
			<br>
			<input type="submit" value="提交">
			&nbsp;
			<input type="reset" value="重置">
		 
		</form>

  </body>
</html>

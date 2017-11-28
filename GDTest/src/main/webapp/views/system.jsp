<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>用户权限控制</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/person.css">
  </head>
  <body>
  <br>
    <li><a href="permissionmanage/changepassword.jsp" target="main">修改密码</a></li><br>
    <li><a href="permissionmanage/userinforadmin.jsp" target="main">用户信息管理</a></li><br>
	<li><a href="permissionmanage/administrator.jsp" target="main">角色信息管理</a></li>
  </body>
</html>

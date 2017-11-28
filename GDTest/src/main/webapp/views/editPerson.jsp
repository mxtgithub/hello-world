<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<title>Person数据更改编辑页面</title>
<script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
<script type="text/javascript" src="/GDTest/css/upfile.js"></script>
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />
</head>

<body>

<br>
<br>
<br>
<form action="<%=request.getContextPath()%>/updatePerson/${person.idNumber}"  method="post">
<label for="">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</label>
<input  size="2" type="text" name="name"  value="${person.name}"/><br>
<!--  <label for="">性别</label>
<input type="text" name="gender"  value="${person.gender}"/><br> -->
<label for=""   >年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:</label>
<input size="2" type="text" name="age" value="${person.age}"/><br>
<label for="">电话号码:</label>
<input size="8" type="text" name="telNumber" value="${person.telNumber}"/><br>
<label for="">家庭住址:</label>
<input size="40" type="text" name="address" value="${person.address}"/><br>
<label for="">备注信息:</label>
<input size="40" type="text" name="attribute" value="${person.attribute}"/><br>
<br>
<input type="submit" value="确认"/>
<a href="<%=request.getContextPath()%>/oneSelect/${person.idNumber}">
<input type="button" value="取消"/>
</a>


</form>


</body>
</html>


      

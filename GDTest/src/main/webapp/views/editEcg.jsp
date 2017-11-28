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
<title>Ecg数据更改编辑页面</title>
<script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
<script type="text/javascript" src="/GDTest/css/upfile.js"></script>
<!--   备注框的长度   -->
<script type="text/javascript">
window.onload=function(){ 
var otxt=document.getElementById("ecgAttribute");
 otxt.onkeyup=function(){
this.size=(this.value.length>4?this.value.length:4);
}
}
</script>

<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />
</head>

<body>

<br>
<br>
<br>
<h1>更改用户备注信息</h1>
<form action="<%=request.getContextPath()%>/UpdatedEcg/${ecg.ecgId}"  method="post">
<label for="">主治社区:</label>
<input  size="5" type="text" name="community"  value="${ecg.community}" readonly/><br>
<label for="">主治医生:</label>
<input size="6" type="text" name="doctor" value="${ecg.doctor}" readonly/><br>
<label for="">数据信息:</label>
<input size="25" type="text" name="ecgData" value="${ecg.ecgData}" readonly/><br>
<label for="">建档日期:</label>
<input  size="25" type="text" name="createDate"  value="${ecg.createDate}" readonly/><br>
<label for="">建&nbsp;&nbsp;档&nbsp;&nbsp;人:</label>
<input size="2" type="text" name="createdBy" value="${ecg.createdBy}" readonly/><br>
<label for="">备注信息:</label>
<!-- <input id="ecgAttribute" size="25" type="text" name="ecgAttribute" value="${ecg.ecgAttribute}" /><br>
 -->
<input type="text" name="ecgAttribute" value="${ecg.ecgAttribute}" /><br>

<br>
<input type="submit" value="确认"/>
<a href="<%=request.getContextPath()%>/oneSelect/${person.idNumber}">
<input type="button" value="取消"/>
</a>


</form>


</body>
</html>


      

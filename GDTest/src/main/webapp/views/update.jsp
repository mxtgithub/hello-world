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
<title>更新数据页面</title>
<script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
<script type="text/javascript" src="/GDTest/css/upfile.js"></script>
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />





</head>

<body>


<br>
<br>
<br>

<form method="post" 
	action="<%=request.getContextPath()%>/fileUpLoad/${idNumber}" enctype="multipart/form-data">
<h1 id="idNumber">修改用户身份证号为&nbsp;${idNumber}&nbsp;的信息</h1>
<label for="">数据信息:</label>
<input id="ecgData"  type="file" name="ecgData" style="color: red;"/><span id="ecgData_msg"></span><br/>         


<!--  
<input id="createdBy"  type="text" name="createdBy"/><span id="createdBy_msg"></span><br> -->
<label for="" size="5">主治社区:</label>
<input id="community"  type="text" name="community"/><span id="community_msg"></span><br>  

<span id="community_msg"></span><br>
<label for="">主治医生:</label>
       <span id="doctor_msg"></span><br> 
<label for="">医生工号:</label>
<input id="doctorNumber"  type="text" name="doctorNumber"/> <span id="doctorNumber_msg"></span><br> 


<label for="" >备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
&nbsp;<input id="ecgAttribute"  type="text" name="ecgAttribute" size="10"/><span id="ecgAttribute_msg"></span><br>
<label for="">建档日期:</label>
<input id="createDate" size="15" type="text" name="createDate"  style="width:225px;" maxlength="24"/>
<span id="createDate_msg"></span><br>
<label for="">建&nbsp;档&nbsp;人:</label>


<input id="submit"  type="submit" value="确定修改"/>

<a href="<%=request.getContextPath()%>/noUpdateEcg" >  
<input type="button" value="取消"/>
</a>


</form>



</body>
</html>

      

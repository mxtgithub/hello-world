<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  type="text/javascript" src="/GDTest/css/jquery-3.2.0.min.js"></script>
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />

<title>ECG数据显示页面 普通用户</title>

    <script type="text/javascript" src="/GDTest/css/cookie.js"></script>
    <script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
    <script type="text/javascript">
    $(function() {
    	var idNumber = getCookie("idNumber");
    	//alert(idNumber);
	   //alert(getCookie("idNumber")); 
    	
    });
		    
    </script>
</head>
<body>
<input type="" value="" size="1"/><td href="/GDTest/views/first.jsp">当前功能:数据信息管理》用户数据查询》个人数据管理</td></br></br>
<center>
<div id="div3">
<h3>个人数据管理</h3>
<!-- ${person}    -->


 <table cellpadding="0" cellspacing="0" border="1px" id="content" style="margin-top: 20px;width:90%;">
   <tr>
    <th>编号</th>
   <th>姓名</th>
   <th>性别</th>
   <th>年龄</th>
   <th>身份证号</th>
   <th>联系电话</th>
   <th>家庭住址</th>
  <th>备注</th> 
   <th>操作</th>
  </tr> 

<tr>
   <th> <input  id="txt"  size="2" value="${person.p_id}" style="border-style:none" readonly/></th>
   <th> <input  id="txt"  size="4" value="${person.name}"  style="border-style:none" readonly/></th>
   <th> <input  id="txt" size="1" value="${person.gender}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="1" value="${person.age}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="16" value="${person.idNumber}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="7" value="${person.telNumber}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="36" value="${person.address}" style="border-style:none" readonly/></th>
   <th> <input  id="txt" size="20" value="${person.attribute}" style="border-style:none" readonly/></th>
  <th>
 <a href="<%=request.getContextPath() %>/EditPerson/${person.idNumber}">
<input type="button" value="修改"/></a>
<a href="<%=request.getContextPath() %>/getEcg/${person.idNumber}">
<input type="button" value="数据查询"/></a>
  <!--  
	<a href="<%=request.getContextPath() %>/downloadPerson">
  		<input type="button" value="下载"/></a>  -->
 </th>
 </tr>

</table>

</center>
</div>
</body>
</html>
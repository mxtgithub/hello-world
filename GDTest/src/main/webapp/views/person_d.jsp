<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/GDTest/css/jquery-3.2.0.min.js"></script>

<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />

<style type="text/css">

</style>
<title>ECG数据显示页面医生用户</title>

<script type="text/javascript">

</script>
</head>
<body>
<input type="" value="" size="1"/><td href="/GDTest/views/first.jsp">当前功能:数据信息管理》用户数据管理</td></br></br>
<center>

<div id="div3">
<h3>用户数据管理</h3>


 <table cellpadding="0" cellspacing="0" border="1px">
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
<!--  遍历一个对象 -->
<c:forEach items="${list}" var="tom"> 
<tr>
     <th> <input  id="txt"  size="2" value="${tom.p_id}" style="border-style:none" readonly/></th>
   <th> <input  id="txt"  size="4" value="${tom.name}" style="border-style:none"   readonly/></th>
   <th> <input  id="txt" size="1" value="${tom.gender}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="1" value="${tom.age}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="16" value="${tom.idNumber}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="9" value="${tom.telNumber}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="36" value="${tom.address}" style="border-style:none" readonly/></th>
   <th> <input  id="txt" size="20" value="${tom.attribute}" style="border-style:none" readonly/></th>
  <th>
  <a href="<%=request.getContextPath() %>/insertPage/${tom.idNumber}">
  		<input type="button" value="新增"/></a>
 </th>
 </tr>
</c:forEach>
</table>

<a href="<%=request.getContextPath()%>/upPage/${page}">
<input type="button" value="上一页"/>
</a>
${page} 
<a href="<%=request.getContextPath()%>/downPage/${page}">
<input type="button" value="下一页"/>
</a>




</center>
</div>
</body>
</html>
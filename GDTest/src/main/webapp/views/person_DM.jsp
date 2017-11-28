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
<title>ECG数据操纵页面</title>

<script type="text/javascript">
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />
</script>
</head>
<body>
<center>
<div id="div3">
<h3>数据操作功能页面</h3>

<!--  <a href="<%=request.getContextPath()%>/insertPage">新增 </a>  -->

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
<c:forEach items="${list}" var="tom">

<tr>
    <th> <input  id="txt"  size="2" value="${tom.p_id}" style="border-style:none" readonly/></th>
   <th> <input  id="txt"  size="4" value="${tom.name}"  style="border-style:none" readonly/></th>
   <th> <input  id="txt" size="1" value="${tom.gender}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="1" value="${tom.age}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="20" value="${tom.idNumber}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="10" value="${tom.telNumber}" style="border-style:none"  readonly/></th>
   <th> <input  id="txt" size="36" value="${tom.address}" style="border-style:none" readonly/></th>
   <th> <input  id="txt" size="20" value="${tom.attribute}" style="border-style:none" readonly/></th>
  <th >
  
 <a href="<%=request.getContextPath() %>/getEcg/${tom.idNumber}">
<input type="button" value="查询"/></a>
 
 </a>
   <a href="<%=request.getContextPath()%>/getEcg_u/${tom.idNumber} " >
 <input type="button" value="修改"/>  
 </a>
   <a href="<%=request.getContextPath()%>/getEcg_d/${tom.idNumber}">
   <input type="button" value="删除"/>  
   </a>
   <a href="<%=request.getContextPath()%>/getEcg_l/${tom.idNumber}">
<input type="button" value="下载"/>
   </a>
 </th>
 </tr>
</c:forEach>
</table>
<a href="<%=request.getContextPath()%>/upPage_pDM/${page}">
<input type="button" value="上一页"/>
</a>
${page} 
<a href="<%=request.getContextPath()%>/downPage_pDM/${page}">
<input type="button" value="下一页"/>
</a>

</center>
</div>
</body>
</html>
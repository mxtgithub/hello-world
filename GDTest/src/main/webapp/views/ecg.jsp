<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  src="../css/jquery-3.2.0.min.js"></script>
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />

<style type="text/css">

</style>
<title>ECG数据显示页面</title>

<script type="text/javascript">

</script>
</head>
<body>
<input type="" value="" size="1"/><td href="/GDTest/views/first.jsp">当前功能:数据信息管理》数据信息操作》数据信息下载</td></br></br>
<center>
<div id="div3">
<h3>数据信息下载</h3>


 <table cellpadding="0" cellspacing="0" border="1px">
   <tr>
   <th>编号</th>
   <th>建档日期</th>
   <th>主治社区</th>
   <th>主治医生</th>
 <!--  <th>医生工号</th>  --> 
   <th>建档人</th>
   <th>数据</th>
   <th>备注</th>
   <th>操作</th>
  </tr> 
<c:forEach items="${list}" var="tom">
<tr>
   <th> <input value="${tom.ecgId}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.createDate}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.community}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.doctor}"  style="border-style:none" readonly/></th>
   <th> <input value="${tom.createdBy}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.ecgData}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.ecgAttribute}" style="border-style:none" readonly/></th>
   <th> 
  
       <a href="<%=request.getContextPath()%>/download/${tom.idNumber}">
       <input type="button" value="下载"/>
       </a></th>
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
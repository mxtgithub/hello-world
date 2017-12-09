<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
<!-- <script type="text/javascript" src="/GDTest/css/ecgDM_d.js"></script>  -->
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />

<style type="text/css">

</style>
<title>ECG数据显示页面</title>

<script type="text/javascript">

</script>
</head>
<body>
<input type="" value="" size="1"/>当前功能:数据信息管理》数据信息操作》数据信息删除</br></br>
<center>
<div id="div3">
<h3>数据信息删除</h3>


 <table cellpadding="0" cellspacing="0" border="1px">
   <tr>
   <!-- <th>编号</th>  -->
   <th>建档日期</th>
   <th>主治社区</th>
   <th>主治医生</th>
 <!--  <th>医生工号</th>  --> 
   <th>数据</th>
   <th>建档人</th>
   <th>备注</th>
   <th>操作</th>
  </tr> 
<c:forEach items="${list}" var="tom">
<tr>
<!--
<th> <input value="${tom.ecgId}" style="border-style:none" readonly/></th>  -->
   <th> <input size="28" value="${tom.createDate}" style="border-style:none" readonly/></th>
   <th> <input  size="15" value="${tom.community}" style="border-style:none" readonly/></th>
   <th> <input  size="5" value="${tom.doctor}"  style="border-style:none" readonly/></th>
   <th> <input  size="" value="${tom.ecgData}" style="border-style:none" readonly/></th>
   <th> <input  size="5" value="${tom.createdBy}" style="border-style:none" readonly/></th>
   <th> <input  size="" value="${tom.ecgAttribute}" style="border-style:none" readonly/></th>
   <th> 
  
       <a href="<%=request.getContextPath()%>/deleteEcg/${tom.ecgId}">
       <input type="button" value="删除"/>
     </a>
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
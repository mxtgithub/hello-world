<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.List,com.dto.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/GDTest/css/person.css">
<script type="text/javascript" src="/GDTest/js/cookie_util.js"></script>
<script type="text/javascript" src="/GDTest/js/jquery-1.11.0.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">
	$(function(){
			var idNumber = getCookie("idNumber");
			$("#firstPage").click(function(){
				alert(idNumber);
				window.location.href="http://localhost:8080/GDTest/goLogin/"+idNumber; 
			});
			
		addcookie();
	});

	function addcookie() {
		$("table tr th").click(function(){
			alert($(this).text());
			var aaa = $(this).text().trim();
			addCookie("aaa",aaa,2);
		});
	}
</script>

<title>患者信息</title>
</head>

<body>
	<a  href="views/first.jsp">首页</a>
	
	<h1>显示患者信息</h1>
	<table border="1" cellspacing="0">
		  <tr>
		    <th>编号</th>
		    <th>身份证</th>
		    <th>姓名</th>
		    <th>性别</th>
		    <th>年龄</th>
		    <th>滤波</th>
		    <th>检测</th>
		    <th>诊断</th>
		  </tr>
		  <c:forEach items="${list}" var="tom"> 
<%
//List<Person> ps = (List<Person>)request.getAttribute("personMsg");
//if(ps.isEmpty()) {
//out.print("00000");
//}
//out.print(ps.size());
//for(int i=0;i<ps.size();i++) {
//	Person p = ps.get(i);

 %>
		  <tr>
		    <th id="p_id">${tom.p_id}</th>
		    <th id="idNumber">${tom.idNumber}</th>
		    <th>${tom.name}</th>
		    <th>${tom.gender}</th>
		    <th>${tom.age}</th>
		   	<th style="width:90px;">
		    	<a class="lvbo_session" href="<%=request.getContextPath() %>/lvbo.jsp" >滤波<${tom.p_id}></a>
		    </th>
		    <th style="width:90px;">
		    	<a href="<%=request.getContextPath() %>/upfile.jsp" >检测<${tom.p_id}></a>
		    </th>
		    <th style="width:90px;">
		    	<a href="<%=request.getContextPath() %>/oneSelectR/${tom.p_id}">病情分析</a>
		    </th>
		  </tr>
 </c:forEach>
 
 
 <%//} %>
 	</table>
 	
	
<a href="<%=request.getContextPath()%>/upPage_userDM/${page}">
<input type="button" value="上一页"/>
</a>
${page} 
<a href="<%=request.getContextPath()%>/downPage_userDM/${page}">
<input type="button" value="下一页"/>
</a>

	
 	
 	
 	
</body>
</html>
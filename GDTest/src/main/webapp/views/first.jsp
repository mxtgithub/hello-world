<%@ page language="java"  pageEncoding="UTF-8"%>
<%--为了避免在jsp页面中出现java代码，这里引入jstl标签库，利用jstl标签库提供的标签来做一些逻辑判断处理 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>社区医疗信息平台首页</title>
    <link rel="stylesheet" type="text/css" href="/GDTest/css/person.css" />
    <script type="text/javascript" src="/GDTest/css/cookie.js"></script>
    <script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
    <script type="text/javascript">
    $(function() {
    	var idNumber = $("#idNumber").text().trim();
    	//alert(idNumber);
    	setCookie("idNumber",idNumber); 
    	var idNumber = getCookie("idNumber");
	   //alert(getCookie("idNumber")); 
    	$("#cha").click(function(){
    		$.ajax({
				url:"http://localhost:8080/GDTest/oneSelect",
				type:"post",
				data:{"idNumber":idNumber},
				success:function(result){
					if(result.status == 0) {//正确
						alert(result.msg);
					}
				},
				error:function() {
					alert("异常！");
				}
				
			});
    		
    	});
    });
		    
    </script>
  </head>
  
  <body>
  <div id="div1" style="border:3px solid  #000">
	<h1 style="color:#f000f0">社区医疗信息系统平台</h1>
	<div id="Layer1" style="position:absolute;
	 width:100%; height:100%; z-index:-1">    
    </div>
<p  id="" style="float:right;"><span id="idNumber">${idNumber}</span>&nbsp;用户登录成功！&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p> 
<p  id="name" style="float:right;">恭喜&nbsp;${name}&nbsp;</p>
<c:if test="${user==null}">
<br>
        &nbsp;&nbsp;
		<input type="button" value="反馈">	
		&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<input type="submit" value="帮助">	
		&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<input type="submit" value="修改口令">
		&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<input type="button" value="退出系统" onclick="doLogout()"><br>		
	</c:if>
	<hr/>

<a href="<%=request.getContextPath()%>/healthy"><IMG height=16 src="/GDTest/images/arrow.gif" width=8><font color = "black" >健康档案管理</font></a>		
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/views/personhealthy.jsp"><font color = "black">个人健康档案</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/views/familyhealthy.jsp"><font color = "black">家庭健康档案</font></a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/views/childhealthy.jsp"><font color = "black">儿童健康档案</font></a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/views/pregnancyhealthy.jsp"><font color = "black">孕产妇健康档案</font></a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/views/olderhealthy.jsp"><font color = "black">老年人健康档案</font></a><br>


<a href="<%=request.getContextPath()%>/protect"><IMG height=16 src="/GDTest/images/arrow.gif" width=8><font color = "black">健康监测管理</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/system"><font color = "black">数据通信</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="communication.jsp"><font color = "black">实时监测</font></a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/system"><font color = "black">诊断预防</font></a><br>

<a href="<%=request.getContextPath()%>/select"><IMG height=16 src="/GDTest/images/arrow.gif" width=8><font color = "black">数据信息管理</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/getPerson"><font color = "black">数据信息存储</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/oneSelect/${idNumber}"><font color = "black">用户数据查询</font></a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/personDM"><font color = "black">数据信息操作</font></a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/getPersonR"><font color = "black">用户数据处理</font></a><br>
<a href="<%=request.getContextPath()%>/slow"><IMG height=16 src="/GDTest/images/arrow.gif" width=8><font color = "black">慢性病管理</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=request.getContextPath()%>/views/bloodmanage.jsp"><font color = "black">高血压</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/views/sugarmanage.jsp"><font color = "black">糖尿病</font></a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/views/heartmanage.jsp"><font color = "black">心脏病</font></a><br>

<a href="<%=request.getContextPath()%>/system"><IMG height=16 src="/GDTest/images/arrow.gif" width=8><font color = "black">系统用户管理</font></a>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="melogin.jsp"><font color = "black">用户登录</font></a>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.jsp"><font color = "black">用户注册</font></a><br>
<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="views/administrator.jsp"><font color = "black">用户权限管理</font></a><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->	
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/system"><font color = "black">用户权限管理</font></a><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	 
</body>
</div>
</html>

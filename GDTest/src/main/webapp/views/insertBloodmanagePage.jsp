<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String id = request.getParameter("id")+"";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<title>新增高血压病例</title>
<script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
<script type="text/javascript" src="/GDTest/css/upfile.js"></script>
<script type="text/javascript">
	window.contextPath="<%=request.getContextPath()%>";
</script>
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />
<!--   显示创建日期当前时间 -->
	<script type="text/javascript">
function showtime()   
{   
var today;  
var hour;  
var second;  
var minute;  
var year;  
var month;  
var date;  
var strDate;   
today=new Date();   
var n_day = today.getDay();   
switch (n_day)   
{   
case 0:{   
strDate = "星期日"   
}break;   
case 1:{   
strDate = "星期一"   
}break;   
case 2:{   
strDate ="星期二"   
}break;   
case 3:{   
strDate = "星期三"   
}break;   
case 4:{   
strDate = "星期四"   
}break;   
case 5:{   
strDate = "星期五"   
}break;   
case 6:{   
strDate = "星期六"   
}break;   
case 7:{   
strDate = "星期日"   
}break;   
}   
year = today.getFullYear();   
month = today.getMonth()+1;   
date = today.getDate();   
hour = today.getHours();   
minute =today.getMinutes();   
second = today.getSeconds();   
if(month<10) month="0"+month;   
if(date<10) date="0"+date;   
if(hour<10) hour="0"+hour;   
if(minute<10) minute="0"+minute;   
if(second<10) second="0"+second;   
document.getElementById("createDate").value = year + "年" + month + "月" + date + "日 " + strDate +" " + hour + ":" + minute + ":" + second;   
 // setTimeout("showtime();", 1000);   
}  
//input输入框 长度自适应
</script>
<script type="text/javascript" src="/GDTest/js/insertBloodmanagePage.js"></script>
</head>
<body>
<center><a href="/GDTest/views/bloodmanage.jsp">返回</a><h3 id="title" style="margin-top: 80px;">新增高血压病例</h3>
	<table>
			<tr>
				<td>用户名</td>
				<td><input id="userName"></td>
				<td>身份</td>
				<td><input id="identity"></td>
			</tr>
			<tr>
				<td>真实姓名</td>
				<td><input id="trueName"></td>
				<td>性别</td>
				<td><select id="gender"><option value="女">女</option><option value="男">男</option></select></td>
				<td>年龄</td>
				<td><input id="age"   name="age" ></td>
				
			</tr>
			<tr>
				<td>身高</td>
				<td>
				<input id="height"   name="height" >cm</td>
				<td>体重</td>
				<td>
				<input id="weight"   name="weight" >kg</td>
				<td>血型</td>
				<td><select id="bloodtype"><option value="A型">A型</option><option value="B型">B型</option><option value="AB型">AB型</option><option value="O型">O型</option></select></td>
			</tr>
			<tr>
				<td>籍贯</td>
				<td><input id="nativePlace"></td>
				<td>出生日期</td>
				<td><input id="birthdate"></td>
				<td>身份证号</td>
				<td><input id="idNumber"></td>
			</tr>
			<tr>
				<td>电话号码</td>
				<td><input id="telNumber"></td>
				<td>地址</td>
				<td><input id="address"></td>
				<td>职业</td>
				<td><input id="profession"></td>
			</tr>
			<tr>
				<td>档案编号</td>
				<td><input id="fileNum"></td>
				<td>家庭编号</td>
				<td><input id="familyNum"></td>
				<td>医疗证号</td>
				<td><input id="medicalCard"></td>
			</tr></tr>
			
			
			
			<tr>
				<td>备注</td>
				<td colspan="4">
					<input type="text" id="attribute" required="true" style="width: 400px;"/>
				</td>
			</tr>
<tr>	
				<td>建档人</td>
				<td><select id="buildAchive"   name="buildAchive" >
						<option value="0">请选择</option>
				        <option value="王诺">王诺</option>
				        <option value="王悦">王悦</option>
				        <option value="张诺">张诺</option>
				        <option value="王雪">王雪</option>
					</select></td>
				<td>建档日期</td>
				<td><input id="buildDate"  type="text" name="buildDate" onclick="showtime();" /></td>
				<!-- <span id="createDate_msg"></span> --><br>
			<!-- </tr>
			<tr>  -->
				<td>录入员</td>
				<td><select id="keyBorder"   name="keyBorder" >
						<option value="0">请选择</option>
				        <option value="王诺">王诺</option>
				        <option value="王悦">王悦</option>
				        <option value="张诺">张诺</option>
				        <option value="王雪">王雪</option>
				</select></td>
			</tr>
			<tr>
				<tr><td></td></tr>
				<td></td>
				<td></td>
				<td></td>
				<td><input value="重置" type="button" onclick="reset();">&nbsp;&nbsp;<input value="提交" type="button" onclick="submit();"></td>
				<td></td>
				<td></td>
			</tr>
		</table>
</center>
<input type="hidden" id="id" value="<%=id%>">
</body>
</html>

      

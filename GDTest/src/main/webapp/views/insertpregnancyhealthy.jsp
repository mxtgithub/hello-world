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
<title>新增家庭健康档案页面</title>
<script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
<script type="text/javascript" src="/GDTest/css/upfile.js"></script>
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
<script type="text/javascript" src="/GDTest/js/insertFamilyHealthyPage.js"></script>
</head>
<body>
<center><a href="/GDTest/views/personhealthy.jsp">返回</a><h3 style="margin-top: 80px;">新增孕产妇健康档案</h3>
	<fieldset width="">
	    <legend>新增孕产妇健康档案</legend>
	    <table  border="0" >
 <tr>
 <!-- <td width="" height="">
	<table>
			 --><tr>
				<!-- <td>用户名</td>
				<td><input id="userName"></td>
				<td>身&nbsp;&nbsp;&nbsp;份</td>
				<td><input id="identity"></td> -->
				
			</tr>
			<tr>
				<td>孕龄妇女编号</td>
				<td><input id="fileNum"></td>
				<td>档案编号</td>
				<td><input id="familyNum"></td>
				
			</tr>
			<tr>
				<td>姓&nbsp;&nbsp;&nbsp;名</td>
				<td><input id="trueName"></td>
				<td>职&nbsp;&nbsp;&nbsp;业</td>
				<td><input id="profession"></td>
			</tr>
			<tr>
				<td>性&nbsp;&nbsp;&nbsp;别</td>
				<td><select><option value="0">女</option><option value="1">男</option></select></td>
				<td>年&nbsp;&nbsp;&nbsp;龄</td>
				<td><select id="age"   name="age" >
<option value="0"></option>
        <option value="wdd">10</option>
        <option value="wdd">20</option>
        <option value="wdd">21</option>
        <option value="wdd">22</option>
        <option value="wdd">23</option>
        <option value="wdd">24</option>
        <option value="wdd">25</option>
        <option value="wdd">26</option>
        <option value="wdd">27</option>
        <option value="wdd">28</option>
        <option value="wdd">29</option>
        <option value="wdd">32</option>
        <option value="wdd">34</option>
        <option value="wdd">35</option>
        <option value="wdd">42</option>
        <option value="wdd">46</option>
        <option value="wdd">52</option>
        <option value="wdd">54</option>
        <option value="wdd">55</option>
</select></td>
				
			</tr>
			<tr>
				<td>身&nbsp;&nbsp;&nbsp;高</td>
				<td>
				<select id="height"   name="height" >
<option value="0"></option>
        <option value="wdd">120</option>
        <option value="wdd">132</option>
        <option value="wdd">142</option>
        <option value="wdd">152</option>
        <option value="wdd">155</option>
        <option value="wdd">160</option>
        <option value="wdd">162</option>
        <option value="wdd">164</option>
        <option value="wdd">166</option>
        <option value="wdd">168</option>
        <option value="wdd">170</option>
        <option value="wdd">175</option>
        <option value="wdd">180</option>
        <option value="wdd">182</option>
        <option value="wdd">185</option>
        <option value="wdd">187</option>
</select>cm</td>
				<td>体&nbsp;&nbsp;&nbsp;重</td>
				<td>
				<select id="weight"   name="weight" >
<option value="0"></option>
        <option value="wdd">30</option>
        <option value="wdd">40</option>
        <option value="wdd">41</option>
        <option value="wdd">42</option>
        <option value="wdd">45</option>
        <option value="wdd">48</option>
        <option value="wdd">50</option>
        <option value="wdd">52</option>
        <option value="wdd">54</option>
        <option value="wdd">56</option>
        <option value="wdd">60</option>
        <option value="wdd">64</option>
        <option value="wdd">70</option>
        <option value="wdd">75</option>
        <option value="wdd">82</option>
        <option value="wdd">87</option>
</select>kg</td>
				
			</tr>
			<tr>
				<td>血&nbsp;&nbsp;&nbsp;型</td>
				<td><select><option value="A型">A型</option><option value="B型">B型</option><option value="AB型">AB型</option><option value="O型">O型</option></select></td>
				<td>籍&nbsp;&nbsp;&nbsp;贯</td>
				<td><input id="nativePlace"></td>
			</tr>
			<tr>	
				<td>出生日期</td>
				<td><input id="birthdate"></td>
				<td>身份证号</td>
				<td><input id="idNumber"></td>
			</tr>
			<tr>
				<td>电话号码</td>
				<td><input id="telNumber"></td>
				<td>家庭住址</td>
				<td >
					<input type="text" id="address">
				</td>
				
			</tr>
			
			<tr>
				<td>医疗证号</td>
				<td><input id="fileNum"></td>
				<td>持续时间</td>
				<td><input id="familyNum"></td>
				
			</tr>
			
			<tr>
				<td>月经周期</td>
				<td><input id="fileNum"></td>
				<td>月经量</td>
				<td><input id="familyNum"></td>
			</tr>
			<tr>	
				<td>孕&nbsp;&nbsp;&nbsp;次</td>
				<td><input id="medicalCard"></td>
				<td>产&nbsp;&nbsp;&nbsp;次</td>
				<td><input id="medicalCard"></td>
			</tr>
			<tr>
				<td>备&nbsp;&nbsp;&nbsp;注</td>
				<td colspan="4">
					<input type="text" id="address" name="user.address" class="easyui-validatebox" required="true" style="width: 405px;"/>
				</td>
			</tr>
<tr>	
	 			

				<td>建档人</td>
				<td><select id="createdBy"   name="createdBy" >
<option value="0">请选择</option>
        <option value="wdd">王诺</option>
        <option value="wdd">王悦</option>
        <option value="wdd">张诺</option>
        <option value="wdd">王雪</option>
</select></td>
				<td>建档日期</td>
				<td><input id="createDate"  type="text" name="createDate" onclick="showtime();" /></td>
				<span id="createDate_msg"></span><br>
		    </tr>
			<tr>  
				<td>录入员</td>
				<td>
				<select id="keyBorder"   name="keyBorder" >
<option value="0">请选择</option>
        <option value="wdd">王诺</option>
        <option value="wdd">王悦</option>
        <option value="wdd">张诺</option>
        <option value="wdd">王雪</option>
</select></td>
			</tr>
			
		</table>
		<br>
		<input value="重置" type="button" onclick="reset();">&nbsp;&nbsp;<input value="提交" type="button" onclick="submit();">
		</td>
<!--  </tr>   
</table> -->
		</fieldset>
</center>
<input type="hidden" id="id" value="<%=id%>">
</body>
</html>

      

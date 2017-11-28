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
<title>新增Ecg数据页面</title>
<script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
<script type="text/javascript" src="/GDTest/css/upfile.js"></script>
<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />

<!--   主治医生 医生工号 级联菜单 -->
<script>
		//var data = [
		//	['请选择'],
		//	['1'],
		//	['2'],
		//	['3']
	//];
		//function change(){
		//	var doctor  = document.getElementById("doctor");
			//selectedIndex获取下拉的选择的序号 1
			//var index = doctor.selectedIndex;
			//获取对应的数据
			//var number = data[index];
			//获得子下拉框
			//var doctorNumber = document.getElementById("doctorNumber");
			//清空子下拉框
			//doctorNumber.innerHTML = "";
			//根据课程数据信息，创建新选项
		//	for(var i=0; i<number.length; i++){
				//var c = number[i];
				//创建option 元素
				//var e = document.createElement("option");
				//e.setAttribute("value", i);
				//e.innerHTML = c;
				//option 元素添加到 doctorNumber 下拉框中
				//doctorNumber.appendChild(e);
			//}
		//}
		</script>
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

<script type="text/javascript">
window.onload=function(){ 
var otxt=document.getElementById("ecgAttribute");
 otxt.onkeyup=function(){
this.size=(this.value.length>4?this.value.length:4);
}
}
</script>

</head>

<body>


<br>
<br>
<br>

<h1>上传用户身份证号为<span id="idNumber">${idNumber}</span>的信息</h1>

<form method="post" 
	action="<%=request.getContextPath()%>/fileUpLoad/${idNumber}" enctype="multipart/form-data">
<label for="">数据信息:</label>
<input id="ecgData"  type="file" name="ecgData" style="color: red;"/><span id="ecgData_msg"></span><br/>         


<label for="" >文    件   名:</label>
<input id="dataname" size="5"  type="text" name="dataname"/>
<label for="">类型：</label>
	<select id="type" style="color: black;" name="type">
	  <option value=".txt">.txt</option>
	  <option value =".png">.png</option>
	  <option value =".mat">.mat</option>
	  <option value=".jpg">.jpg</option>
	</select>
	<br>
<!--  
<input id="createdBy"  type="text" name="createdBy"/><span id="createdBy_msg"></span><br> -->
<label for="" >主治社区:</label>
<!-- <input id="community"  type="text" name="community"/><span id="community_msg"></span><br>  -->
<select  id="community"  name="community" >
<option value="0">请选择</option>
        <option value="西工新苑">西工新苑</option>
          <option value="沁园小区" >沁园小区</option>
          <option value="白桦林">白桦林</option>
          <option value="御锦城">御锦城</option>
</select>
<span id="community_msg"></span><br>
<label for="">主治医生:</label>      <!-- onchange="change();" -->
        <select id="doctor" name="doctor"  >
        <option value="0">请选择</option>
        <option value="张三">张三</option>
          <option value="李四" >李四</option>
          <option value="王五">王五</option>
          <option value="婷婷">婷婷</option>
        </select><span id="doctor_msg"></span><br> 
  <!--      
<label for="">医生工号:</label>
 <input id="doctorNumber"  type="text" name="doctorNumber"/> <span id="doctorNumber_msg"></span><br>  
<select id="doctorNumber"  name="doctorNumber" >
<option value="请选择">请选择</option>
</select><span id="doctorNumber_msg"></span><br>
 --> 
 
<label for="" >备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
&nbsp;<input id="ecgAttribute"  type="text" name="ecgAttribute" size="10"/><span id="ecgAttribute_msg"></span><br>
<label for="">建档日期:</label>
<input id="createDate"  type="text" name="createDate" onclick="showtime();" style="width:195px;" maxlength="24"/>
<span id="createDate_msg"></span><br>
<label for="">建&nbsp;档&nbsp;人:</label>
&nbsp;<select id="createdBy"   name="createdBy" >
<option value="0">请选择</option>
        <option value="wdd">wdd</option>
        <option value="wdd">mxt</option>
</select><span id="createdBy_msg"></span><br>
<p>
<input id="submit"  type="submit" value="新增"/>
<input type="reset" value="重填">
<a href="<%=request.getContextPath()%>/noSavePerson" >  
<input type="button" value="取消"/>
</a>
 <!-- style="font-size:14px; padding:2px 6px; display:block; color:red;" -->
<p>
</form>



</body>
</html>

      

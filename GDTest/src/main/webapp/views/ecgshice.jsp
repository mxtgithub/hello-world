<%@page pageEncoding="UTF-8"%>
<%@page import="com.dto.*,java.util.*" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>信号显示</title>
	
    	<link rel="stylesheet" href="../css/ecg.css">
	    <script type="text/javascript" src="../js/clickChange.js"></script>
	    <script type="text/javascript" src="../js/jquery-1.11.0.js"></script>
	    <script type="text/javascript" src="../js/ecgMsg.js"></script>
	    <style type="text/css">
	    	body{
	    		background-image: url(../picture/big_2.jpg);;
	    	}
	    	table{
	    		  border-top:#000 1px solid;
	    		  border-bottom:#000 1px solid;
	    		  border-left:#000 1px solid;
	    		  border-right:#000 1px solid;
	    		  cellspacing:0px;
	    	}
	    	#table2div{
	    		position: absolute;
	    		left:700px;
	    		top:200px;
	    	}
	    	#tb1{
	    		position: absolute;
	    		left:10px;
	    		top:170px;
	    	}
	    	img{
	    		width: 630px;
	    	}
	    </style>
</head>
<body>
<div class="headSpace">

</div>
<div class="select-control">
    <div class="select-control-all">
		<div name="002" class="select-control-all-main">
        	<a href="javascript:history.go(-1)">首页</a>
        </div>
        <div name="002" class="select-control-all-source">
            <input id="source" type="button" value="原始图像">
        </div>

        <div class="select-control-all-JXPY">
        	<input id="lvbo" type="button" value="滤波">
        </div>
        <div class="select-control-all-JDGR">
            <input id="jiance" type="button" value="检测">
        </div>
        <div name="002" class="select-control-all-exe">
            <input id="zhenduan" type="button" value="诊断">
        </div>
    </div>
</div>
<br/>
<div class="person">
	 <table>
	 <%
	// Person p = (Person)request.getAttribute("person");
	 
	 %>
		  <tr>
		    <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;住院号：</th>
		    <th id="p_id">${person.p_id}&nbsp;&nbsp;&nbsp;&nbsp;</th>
		    <th>姓名：</th>
		    <th>${person.name}&nbsp;&nbsp;&nbsp;&nbsp;</th>
		    <th>性别：</th>
		    <th>${person.gender}&nbsp;&nbsp;&nbsp;&nbsp;</th>
		    <th>年龄：</th>
		    <th>${person.age}&nbsp;&nbsp;&nbsp;&nbsp;</th>

		    
		  </tr>  
    </table>
</div>
<div id="tb1">
</div>
<div id="table2div">
	<table id="table2" border="1" cellspacing="1">
	<caption align="top">心电信号检测结果</caption>
		<thead>
			<tr>
				<th style="width: 70px;">RR间期</th>
				<th  style="width: 70px;">R个数</th>
				<th  style="width: 60px;">心率</th>
			</tr>
		<thead>
		<tbody id="tbody2" >
			<tr><th>1111</th></tr>
		</tbody>
	</table>
</div>
</body>

</html>
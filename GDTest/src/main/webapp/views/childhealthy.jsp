<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	window.contextPath="<%=request.getContextPath()%>";
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/GDTest/css/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="/GDTest/js/childhealthy.js"></script>
<link rel="stylesheet" type="text/css" href="/GDTest/css/person.css" />

<title>个人健康档案</title>
</head>
<body>
	
<td><a href="/GDTest/views/first.jsp">返回</a><br></td>
 <input type="" value="" size="1"/><td href="/GDTest/views/first.jsp">当前功能:健康档案管理》儿童健康档案</td>
			<center>
			<h3>儿童健康档案</h3>

			档案编号：    <input type="text" name="listid"><input type="submit" value="检索">
	<input type="button" value="新增" onclick="newPerson();">
			
			<table cellpadding="0" cellspacing="0" border="1px" id="content" style="margin-top: 20px;width:80%;">
				<tr>
					<th>编号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>年龄</th>
					<th>身份证号</th>
					<th>住址</th>
					<th>联系电话</th>
					<!-- <th>建档人</th>
					<th>建档日期</th> -->
					<th>操作</th>
				</tr>
			</table>

			<table>
				<tr>
					<td><input id="upPage" type="button" value="上一页" /></td>
					<td><div id="pageNo"></div></td>
					<td><input id="downPage" type="button" value="下一页" /></td>
				</tr>
			</table>
		</div>
	</center>

</body>
</html>
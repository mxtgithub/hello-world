<%@ page language="java" import="java.util.*"
	pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>添加管理员</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
	<link rel="stylesheet" type="text/css" href="/GDTest/css/person.css">
	

	</head>

	<body>
		<form action="AddUserServlet" method="post">
		<fieldset>
		<legend>
			添加新管理员
		</legend>
		<table>
			<tr>
				<td>
					用户名
				</td>
				<td>
					<input type="text" name="username">
				</td>
			</tr>
			<tr>
				<td>
					密&nbsp;&nbsp;码
				</td>
				<td>
					<input type="password" name="password">
				</td>
			</tr>
			<tr>
				<td>
					姓名
				</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>
					性别
				</td>
				<td>
					<input type="radio" name="sex" checked />
					男
					<input type="radio" name="sex" />
					女
				</td>
			</tr>
			<tr>
				<td>
					年龄
				</td>
				<td>
					<input type="text" name="age">
				</td>
			</tr>
			<tr>
				<td>
					电话
				</td>
				<td>
					<input type="text" name="phone">
				</td>
			</tr>
			<tr>
				<td>
					职位
				</td>
				<td>
					<select name="position">
						<option>院长
						<option selected>经理
						<option selected>主任医师
						<option selected>主管
					 </select>
				</td>
				<tr>
				<td>
				管理员编号
				<select name="a_id">
						<option>1
						<option selected>2
						<option>3
						<option>4
						<option>5
						<option>6
						<option>7
						<option>8
						
					 </select>
					 </td></tr>
		
	    <tr>
				 
				<td>
					<input type="submit" value="提交" />
				</td>
				<td>
					<input type="reset"  value="复位">
				</td>
			</tr>
			 
		</table>
		    </fieldset>
		</form>
	</body>
</html>

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

		<title>��ӹ���Ա</title>

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
			����¹���Ա
		</legend>
		<table>
			<tr>
				<td>
					�û���
				</td>
				<td>
					<input type="text" name="username">
				</td>
			</tr>
			<tr>
				<td>
					��&nbsp;&nbsp;��
				</td>
				<td>
					<input type="password" name="password">
				</td>
			</tr>
			<tr>
				<td>
					����
				</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>
					�Ա�
				</td>
				<td>
					<input type="radio" name="sex" checked />
					��
					<input type="radio" name="sex" />
					Ů
				</td>
			</tr>
			<tr>
				<td>
					����
				</td>
				<td>
					<input type="text" name="age">
				</td>
			</tr>
			<tr>
				<td>
					�绰
				</td>
				<td>
					<input type="text" name="phone">
				</td>
			</tr>
			<tr>
				<td>
					ְλ
				</td>
				<td>
					<select name="position">
						<option>Ժ��
						<option selected>����
						<option selected>����ҽʦ
						<option selected>����
					 </select>
				</td>
				<tr>
				<td>
				����Ա���
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
					<input type="submit" value="�ύ" />
				</td>
				<td>
					<input type="reset"  value="��λ">
				</td>
			</tr>
			 
		</table>
		    </fieldset>
		</form>
	</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
<script type="text/javascript">
	function checkForm(){
		 var trueName=$("#trueName").val();
		 var password=$("#password").val();
		 var birthday=$("#birthday").val();
		 var mobile=$("#mobile").val();
		 var address=$("#address").val();
		 var dentityCode=$("#dentityCode").val();
		 var email=$("#email").val();
		 if(trueName==""){
			 $("#error").html("姓名不能为空！");
			 return false;
		 }
		 if(password==""){
			 $("#error").html("密码不能为空！");
			 return false;
		 }
		 if(birthday==""){
			 $("#error").html("出生日期不能为空！");
			 return false;
		 }
		 if(mobile==""){
			 $("#error").html("手机号码不能为空！");
			 return false;
		 }
		 if(address==""){
			 $("#error").html("送货地址不能为空！");
			 return false;
		 }
		 if(dentityCode==""){
			 $("#error").html("身份证不能为空！");
			 return false;
		 }
		 if(email==""){
			 $("#error").html("邮件不能为空！");
			 return false;
		 }
	}
</script>
<link rel="stylesheet" type="text/css" href="css/person.css">
</head>
<body>
<h2>修改用户信息</h2>
	<div>
			&nbsp;档案编号：&nbsp;<input type="text" id="s_userName" size="20" onkeydown="if(event.keyCode==13) searchUser()"/>
			<a href="javascript:searchUser()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>

			<a href="javascript:openUserAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
			<a href="javascript:openUserModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
			<a href="javascript:deleteUser()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
		</div>	
	<div id="dlg" class="easyui-dialog" style="width: 570px;height:300px;padding: 10px 20px"
	  closed="true" buttons="#dlg-buttons">
	 	<form id="fm" method="post">
	 		<table cellspacing="8px">
	 			<tr>
	 				<td>真实姓名：</td>
	 				<td><input type="text" id="trueName" name="user.trueName" class="easyui-validatebox" required="true"/></td>
	 				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	 				<td>用户名：</td>
	 				<td><input type="text" id="userName" name="user.userName" class="easyui-validatebox" required="true"/></td>
	 			</tr>
	 			<tr>
	 				<td>密码：</td>
	 				<td><input type="text" id="password" name="user.password" class="easyui-validatebox" required="true"/></td>
	 				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	 				<td>性别：</td>
	 				<td>
	 					<select class="easyui-combobox" id="sex" name="user.sex" style="width: 154px;" editable="false" panelHeight="auto">
	 						<option value="">请选择性别</option>
	 						<option value="男">男</option>
	 						<option value="女">女</option>
	 					</select>
	 				</td>
	 			</tr>
	 			<tr>
	 				<td>出生日期：</td>
	 				<td><input type="text" id="birthday" name="user.birthday" class="easyui-datebox" editable="false" required="true"/></td>
	 				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	 				<td>身份证：</td>
	 				<td><input type="text" id="dentityCode" name="user.dentityCode" class="easyui-validatebox" required="true"/></td>
	 			</tr>
	 			<tr>
	 				<td>邮件：</td>
	 				<td><input type="text" id="email" name="user.email" class="easyui-validatebox" validType="email" required="true"/></td>
	 				<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	 				<td>联系电话：</td>
	 				<td><input type="text" id="mobile" name="user.mobile" class="easyui-validatebox" required="true"/></td>
	 			</tr>
	 			<tr>
	 				<td>收货地址：</td>
	 				<td colspan="4">
	 					<input type="text" id="address" name="user.address" class="easyui-validatebox" required="true" style="width: 350px;"/>
	 				</td>
	 			</tr>
	 		</table>
	 	</form>
	</div>

<div class="manage" >
	<form action="user_save.action" method="post" onsubmit="return checkForm()">
		<table class="form">
			<tr>
				<td class="field">档案编号：</td>
				<td><input type="text" class="text" name="user.userName"   value="${user.userName }" readonly="readonly" /></td>
			</tr>
			<tr>
				<td class="field">姓名：</td>
				<td><input type="text" class="text"  id="trueName" name="user.trueName" value="${user.trueName }" /></td>
			</tr>

			<tr>
				<td class="field">性别：</td>
				<td>
					<c:choose>
						<c:when test="${user.sex=='男' }">
							<input type="radio" name="user.sex"  value="男" checked="checked" />男 <input type="radio" name="user.sex" value="女" />女
						</c:when>
						<c:otherwise>
							<input type="radio" name="user.sex"  value="男"  />男 <input type="radio" name="user.sex" value="女"  checked="checked"/>女
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
						<tr>
				<td class="field">年龄：</td>
				<td><input type="text" class="text" id="password" name="user.password" value="${user.password }" /></td>
			</tr>
			<tr>
				<td class="field">出生日期：</td>
				<td>
					<input  type="text"  id="birthday"  name="user.birthday" value="<fmt:formatDate value="${user.birthday }" type="date" pattern="yyyy-MM-dd"/>"  class="Wdate" onClick="WdatePicker()"/>	
				</td>
			</tr>
			<tr>
				<td class="field">身份证号：</td>
				<td><input class="text" type="text" id="dentityCode" name="user.dentityCode"  value="${user.dentityCode }" /></td>
			</tr>
			<tr>
				<td class="field">手机号码：</td>
				<td><input type="text" id="mobile" class="text" name="user.mobile" value="${user.mobile }" /></td>
			</tr>
			<tr>
				<td class="field">家庭住址：</td>
				<td><input type="text" class="text"  id="address" name="user.address" value="${user.address }" /></td>
			</tr>
			
			<tr>
				<td class="field">密码：</td>
				<td><input class="text" type="text" id="email" name="user.email"  value="${user.email}" /></td>
			</tr>
			<tr>
				<td>
				    <input type="hidden"  name="user.id" value="${user.id }"/>
					<input type="hidden"  name="user.status" value="${user.status }"/>
				</td>
				<td><label class="ui-blue"><input type="submit" name="submit" value="更新" /></label>
				 &nbsp; <label class="ui-blue"><input type="submit" name="submit" value="保存" /></label>
			     &nbsp; <label class="ui-blue"><input type="submit" name="submit" value="关闭" /></label></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><font id="error" color="red"></font> </td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
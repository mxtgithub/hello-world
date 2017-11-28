<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>社区用户注册</title>		
	</head>

    <style>
      body{
        font-family: '微软雅黑','黑体','文泉驿正黑';
        background: url('login_bg.jpg');
      }
      .form{
        width: 400px;
        /* 块元素居中 */
        margin: 0 auto;
        border: 4px solid #cff;
        background: #eee;
        /* css3 圆角 */
        border-radius: 10px;
      }
      .form h2{
        padding: 8px;
        margin: 0;
        background: #006;
        color: #fff;
        border-radius: 6px 6px 0 0;
        /*文字居中*/
        text-align: center;
      }
      .form p{
        margin: 0;
        padding: 8px;
        font-size: 16px;
        border-bottom: 2px solid #ddd;
      }
      .form label{
        display: inline-block;
        width: 80px;
        text-align: right;
      }
      .form p input{
        width: 80px;
      }
      .form p input:focus{
        background:#ffc;
      }
      .form div {
        padding: 10px;
        background: #828282;
        text-align: center;
        border-radius: 0 0 6px 6px;
      }
      /* 格式化登陆按钮 */
      .form div input{
        padding: 6px 16px; 
        border: 0;
        border-radius: 5px;
        background-color: #000099;
        color: #fff;
        font-family:'微软雅黑','黑体','文泉驿正黑';
        cursor: pointer;
      }
      /* 如下设置输入出现错误时候的样式 */
      input.error{  
        /* 设置输入框出现错误时候的样式*/
        background: #fbb;
        border: 2px solid #f00;
      }
      span.error{
        /* 设置出现错误时候的字体效果 */
        color: #f00;/* 红色 */
      }
    </style>
    <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
    
<script type="text/javascript">
      /* 验证用户名的规则, 返回true 表示
      验证通过，返回false表示验证失败*/
      function checkUser(){
        //1 获取用户的输入
        //2 检查用户输入信息是否合乎规则
        //3 检查通过 清空class属性 
        //   返回true
        //4 检查失败 设置class="error"
        //   .error 类选择器绑定了“飘红”
        //   样式。
        //   返回false
        var input = 
          document.getElementById("user");
        var user = input.value;
        var rule = /^\w{3,10}$/;
        var span = document
            .getElementById("userMsg");
        if(rule.test(user)){
    //span对象的className就是class属性
    //修改className属性就是修改class的值
          span.className = "";
          input.className = "";
          return true;
        }else{
          span.className = "error";
          input.className = "error";
          return false;
        }
      }

      function checkPwd(){
        var input = document
          .getElementById("pwd");
        var pwd = input.value;
        var rule = /^[\da-z]{15,18}$/i;
        var span = document
          .getElementById("pwdMsg");
        if(rule.test(pwd)){
          span.className = "";
          input.className = "";
          return true;
        }else{
          span.className = "error";
          input.className = "error";
          return false;
        }
      }
		
    </script>
    
    				<%			
				String notnull = (String)request.getAttribute("notnull"); 				
				%>   
    <script type="text/javascript">
    	$(function(){
    		//alert("222");
    		$("#submit").click(function(){
    		//alert("222");
    		//判断
    		var username = $("#username").val().trim();
    		var password = $("#password").val().trim();
    		var confirmPwd = $("#confirmPwd").val().trim();
    		alert(username);
    		alert(password);
    		alert(confirmPwd);
    		var flag = true;
    		if(username =="" || password=="" || confirmPwd==""){
    			flag = false;
    			alert("不能为空");
    		}
    		if(password != confirmPwd) {
    			flag = false;
    			alert("密码不相等");	
    		}
    		//2.发送ajax请求
								if(flag) {
									$.ajax({
									url:"regist.do",------------------------------------------------
										type:"post",
										data:{"username":username,"password":password},
										success:function(result){
											window.location.href="melogin.jsp";
												//$("#1_msg").html(result.msg);
												//$("#1_msg").html(result.msg);
										},
										error:function() {
											
											alert(<%=notnull %>);
										}							
									});
									}		
		});
    });   
    </script>

 </head>
  <body style="background-image:url(../images/nongtian3.jpg); background-size:cover;">
   <br> <center><h1>欢迎注册</h1></center><br><br>
    <div  class="form">
    
            <h2>注册系统</h2>
        <p> 
	<body style="text-align: left;">
	<!--
		<form action="regist.do" method="post">   -->
			<table width="100%" border="2">
				<tr>
					<td align="center">用户名:</td>
					<td align="center">
						<%--使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)--%>
						<input id="username" type="text" name="username" value="${formbean.userName}">${formbean.errors.userName}
						<span id="name_msg">&nbsp;3-12个字符</span>
					</td>
					<tr>
					<td align="center">真实姓名:</td>
					<td align="center">
						<%--使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)--%>
						<input id="username" type="text" name="username" value="${formbean.userName}">${formbean.errors.userName}
						<span id="name_msg">&nbsp;3-10个字符</span>
					</td>
					
					  <tr>
					<td align="center">身份证号:</td>
					<td align="center">
						<%--使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)--%>
						&nbsp;<input id="username" type="text" name="username" value="${formbean.userName}">${formbean.errors.userName}
						<span id="name_msg">15-18个字符</span>
					</td></tr>
					<tr>
					<!-- <td class="field">性别(*)：</td>
						<td>
					    <input type="radio"   name="user.sex" value="男" checked="checked"/>男&nbsp;&nbsp;
					    <input type ="radio" name="user.sex" value="女"/>女					    					    
					    </td></br> -->
					<%-- <td align="center">性别:</td>
					<td align="center">
						使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)
						<input id="username" type="text" name="username" value="${formbean.userName}">${formbean.errors.userName}
						<span id="name_msg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					</td></tr> --%>
					<td  align="center">
									性&nbsp;别:
								</td>
								<td valign="middle" align="left">
									
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" class="inputgri" name="user.userSex" value="m"
										checked="checked" />男
									
									<input type="radio" class="inputgri" name="user.userSex" value="f" />女
								</td></tr>
					
					<tr>
					<td align="center">年&nbsp;龄:</td>
					<td align="center">
						<%--使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)--%>
						<input id="username" type="text" name="username" value="${formbean.userName}">${formbean.errors.userName}
						<span id="name_msg">&nbsp;&nbsp;&nbsp;1-3个字符</span>
					</td></tr>
					<tr>
					<td align="center">电话号码:</td>
					<td align="center">
						<%--使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)--%>
						<input id="username" type="text" name="username" value="${formbean.userName}">${formbean.errors.userName}
						<span id="name_msg">&nbsp;7-11个字符</span>
					</td></tr>
					<tr>
					<td align="center">家庭住址:</td>
					<td align="center">
						<%--使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)--%>
						<input id="username" type="text" name="username" value="${formbean.userName}">${formbean.errors.userName}
						<span id="name_msg">&nbsp;3-10个字符</span>
					</td></tr>
					
					
				</tr>
				<tr>
					<td align="center">密&nbsp;码:</td>
					<td align="center">
						<input id="password" type="password" name="password" value="${formbean.userPwd}">${formbean.errors.userPwd}
						<span id="">15-18个字符</span>
					</td>
				</tr>
				<tr>
					<td align="center">确认密码:</td>
					<td align="center">
						<input id="confirmPwd" type="password" name="confirmPwd" value="${formbean.confirmPwd}">${formbean.errors.confirmPwd}
						<span id="">15-18个字符</span>
					</td>
				
				<tr>
					<td align="center">健康状态：</td>
								<td valign="middle" align="left">
									&nbsp;&nbsp;&nbsp;&nbsp;<input name="user.userStatus" type="radio" id="jiangkang" value="健康"
										checked>
									<span class="quanxian"> 健康 </span>
										<input name="user.userStatus" type="radio" id="jiangkang" value="良好"
										>
									<span class="quanxian"> 良好 </span>
										<input name="user.userStatus" type="radio" id="jiangkang" value="一般"
										>
									<span class="quanxian"> 一般 </span>
										<input name="user.userStatus" type="radio" id="jiangkang" value="差"
										>
									<span class="quanxian"> 差 </span>
								</td>           
                </tr>
				<tr>
					<td align="center">
					<div>
						<input type="reset" value="清空">
					</div>
					</td>
					<td align="center">
					<div>
						<input id="submit" type="submit" value="注册">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="submit" type="submit" value="已有账号登录">
					</div>
					
					</td>					
					
				</tr>
			</table>
	<!-- </form>  -->

	</body>
</html>

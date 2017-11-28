<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title>社区医疗信息系统</title>
    <meta http-equiv="Content-Type"
      content="text/html; charset=utf-8">
    <style>
      body{
        font-family: '微软雅黑','黑体','文泉驿正黑';
        
   /*  background: url('login_bg.jpg'); */
      }
      .form{
        width: 300px;
        /* 块元素居中 */
        margin: 0 auto;
        border: 4px solid #cff;
        background: #aab;
        /* css3 圆角 */
        border-radius: 10px;
      }
      .form h2{
        padding: 8px;
        margin: 0;
        background: #fcc;
        color: #0;
        border-radius: 6px 6px 0 0;
        /*文字居中*/
        text-align: center;
      }
      .form p{
        margin: 0;
        padding: 8px;
        font-size: 16px;
        border-bottom: 2px solid #aad;
      }
      .form label{
        display: inline-block;
        width: 70px;
        text-align: right;
      }
      .form p input{
        width: 80px;
      }
      .form p input:focus{
        background:#eee;
      }
      .form div {
        padding: 10px;
        background: #88888;
        text-align: center;
        border-radius: 0 0 6px 6px;
      }
      /* 格式化登陆按钮 */
      .form div input{
        padding: 6px 16px; 
        border: 0;
        border-radius: 5px;
        background-color: #77777777;
        color: #000;
        font-family:'微软雅黑','黑体','文泉驿正黑';
        cursor: pointer;
      }
      /* 如下设置输入出现错误时候的样式 */
      input.error{  
        /* 设置输入框出现错误时候的样式*/
        background: #ffb;
        border: 2px solid #f00;
      }
      span.error{
        /* 设置出现错误时候的字体效果 */
        color: #ff0;/* 红色 */
      }
    </style>
    <script type="text/javascript">
      /* 验证用户名的规则, 返回true 表示
      验证通过，返回false表示验证失败*/
    </script>
   <script type="text/javascript" src="/GDTest/css/jquery-1.11.0.js"></script>
  </head>
  <body>
    <h1>社区医疗信息平台</h1>
    <div class="form">
      <form action="<%=request.getContextPath()%>/goLogin " method="post">

        <h2>登录系统</h2>
        <td><div>
          <label>用户名:</label>
          <input type="text"  name="name" >
          <span id="userMsg" style="font-size:10px;color:red;font-family:verdana"></span></div>
        </td></tr>
        <td><div>
          <label>真实姓名:</label>
          <input type="text"  name="realname">
          <span id="userMsg" style="font-size:10px;color:red;font-family:verdana"></span></div>
        </td></tr>
        <td><div>
          <label>身份证号:</label>
          <input type="text"  name="name">
          <span id="userMsg" style="font-size:10px;color:red;font-family:verdana"></span></div>
        </td></tr>
        <td><div>
          <label>密&nbsp;&nbsp;码:</label>
          <input type="password" name="idNumber">
          <span id="pwdMsg"  style="font-size:10px;color:red;font-family:verdana"></span></div>
        </td></tr>
        <td><div>
        <label>验证码:</label>
		<td><input  class="text" style="width: 80px;margin-right: 10px;"
					type=text value="${imageCode }" name="imageCode" id="imageCode">
					&nbsp;&nbsp;<img onclick="javascript:loadimage();" title="换一张试试" name="randImage"
					id="randImage" src="checkcode.jsp" width="60" height="20" border="1"
					align="absmiddle">					
		</td></div></td><div>
        <td>
					<input type="radio" name="user" value="0" checked>
					普通用户
					<input type="radio" name="user" value="1">
					医生
					<input type="radio" name="user" value="2">
					管理员
					<br>
				</div>	
               </td> <div>
          <input type="submit" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="register.jsp">
          <input type="button" value="注册" >
          </a>
        </div>
      </form>
    </div>
  </body>
</html>





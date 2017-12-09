<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"
	pageEncoding="UTF-8"%>
<%@page
	import='java.text.SimpleDateFormat,java.util.Date,java.text.DateFormat,java.text.ParseException'%>
<style type="text/css">   
 
    table {    
        border: 2px #CCCCCC solid;    
            
    }    
        
    td,th {    
        height: 30px;  
        
        border: #00000f 1px solid;    
    }    
    </style>
    <link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />
<%
	//驱动程序名     
	String driverName = "com.mysql.jdbc.Driver";
	//数据库用户名     
	String userName = "root";
	//密码     
	String userPasswd = "maxiaoting";
	//数据库名     
	String dbName = "cd_db";
	//表名     
	String tableName = "real_monitor";
	//联结字符串     
	String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
			+ userName + "&password=" + userPasswd;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	//获得链接
	Connection connection = DriverManager.getConnection(url);
	//创建语句执行者
	Statement statement = connection.createStatement();
	//查詢数据
	 String sql = "SELECT * FROM " + tableName;  
	 ResultSet rs = statement.executeQuery(sql); 
%>
<input type="" value="" size="1"/><td href="/GDTest/views/first.jsp">当前功能:远程监测管理》实时监测</td></br></br>
<fieldset>
<legend>心率实时监测</legend>
<table align="left">    
        <tr> 
        <th>    
            <%    
                out.print("档案编号");    
            %>    
        </th> 
                    <th>    
            <%    
                out.print("所在社区");    
            %>    
        </th> 
        <th>    
                <%    
                    out.print("姓名");    
                %>    
            </th>   
            <th>    
                <%    
                    out.print("性别");    
                %>    
            </th>    
            <th>    
                <%    
                    out.print("年龄");    
                %>    
            </th>     
            <th>    
                <%    
                    out.print("血压"+"/mmHg");    
                %>    
            </th> 
                        <th>    
                <%    
                    out.print("血氧"+"/%");    
                %>    
            </th>  
            <th>    
                <%    
                    out.print("心率"+"/bpm");    
                %>    
            </th> 
                        <th>    
                <%    
                    out.print("体温"+"/℃");    
                %>    
            </th> 
            <th align="center">    
                <%    
                    out.print("疾病史");    
                %>    
            </th> 
            <th>操作</th>
        </tr>    
        <%    
            while (rs.next()) {    
        %>    
        <tr>   
            <td width="80" align="center">   
                <%    
                    out.print(rs.getString(2));    
                %>  
            </td>    
            <td width="80" align="center">    
                <%    
                    out.print(rs.getString(3));    
                %>    
            </td>    
            <td width="60" align="center">    
                <%    
                    out.print(rs.getString(4));    
                %>    
            </td>  
            <td width="60" align="center">    
                <%    
                    out.print(rs.getString(5));    
                %>    
            </td>  
            <td width="70" align="center">    
                <%    
                    out.print(rs.getString(6));    
                %>    
            </td> 
             <td width="110" align="center">    
                <%    
                    out.print(rs.getString(7));    
                %>    
            </td>           
             <td width="80" align="center">    
                <%    
                    out.print(rs.getString(8));    
                %>    
            </td>  
            <td  width="100" align="center">    
                <%    
                    out.print(rs.getString(9));    
                %>    
            </td> 
            <td  width="70" align="center">    
                <%    
                    out.print(rs.getString(10));    
                %>    
            </td>
            <td  width="120" align="center">    
                <%    
                    out.print(rs.getString(11));    
                %>    
            </td>  
            <th><a href="realtimemonitorHighchart.jsp"><input type="button" value="查看历史心率数据" onclick="edit(1)"> 
            <input type="button" value="详情" onclick="edit(1)">
            <input type="button" value="下载" onclick="edit(1)"></th>        
        </tr>  
         
        <%    
            }    
        %>    
</table>
</fieldset>  
</br>
    <div align="center">    
        <span><font color="black"><%
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		out.println(df.format(new Date()));// new Date()为获取当前系统时间 
		%></font></span>     
    </div>    
    <%    
        rs.close();    
        statement.close();    
        connection.close();    
    %>   
  </body>
</html>

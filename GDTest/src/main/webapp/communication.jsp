<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"
	pageEncoding="UTF-8"%>
<%@page
	import='java.text.SimpleDateFormat,java.util.Date,java.text.DateFormat,java.text.ParseException'%>
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
	//定义
	 String st="heartrate";	//APP那边定义的的第一个参数heartrate心率
	 String ss="time";		//APP那边定义的第二个参数time时间戳
	//查詢数据
	 String sql = "SELECT * FROM " + tableName;  
    //执行SQL语句，并返回结果集
     ResultSet rs = statement.executeQuery(sql); 
                out.print(st+" ");
        		out.print(ss+" ");
	while (rs.next()) {
		out.print(rs.getString(1) + ","); //编号
		out.print(rs.getString(2) + ","); //真实姓名
		out.print(rs.getString(3) + ","); //性别
		out.print(rs.getString(4) + ","); //年龄
		out.print(rs.getString(5) + ","); //所在社区
		out.print(rs.getString(6) + ","); //档案编号
		out.print(rs.getString(7) + ","); //血压
		out.print(rs.getString(8) + ","); //心率
		out.print(rs.getString(9) + ","); //疾病
		out.print(rs.getString(10) + ","); //备注	
		out.print(rs.getString(11) + ","); //时间
		/* DateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		try {
			Date myDate = format.parse(rs.getString(11));
			String time = myDate.getTime() + "";
			out.print(time + ","); //日期
		} catch (ParseException e1) {
			e1.printStackTrace();
		} */
	}
	rs.close();
	statement.close();
	connection.close();
%>

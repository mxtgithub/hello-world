package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.jdbc2.optional.PreparedStatementWrapper;

public class DBUtil {
	public static Connection getConnection() throws Exception{
		Connection conn = null;
		try {
			Class.forName(
					"com.mysql.jdbc.Driver");
			conn = DriverManager
			.getConnection(
			"jdbc:mysql://localhost:3306" +
			"/cd_db?useUnicode=true&characterEncoding=utf8",
			"root","maxiaoting");
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return conn;
	}
	
	//下面这部分是从APP获取数据进行解析。然后插入到数据库。进行下一步的增删改查操作
	public static int insert(Real_monitor real_monitor) {
	    Connection conn = getConn();
	    int i = 0;
	    String sql = "insert into real_monitor (heart,realtime) values(?,?)"; //增加字段
	    
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setInt(2, real_monitor.getHeart());//分别对各个字段进行值的设置
	        pstmt.setTimestamp(11, new Timestamp(new Date().getTime()));
	        									//其他的字段设置写在这里
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return i;
	}
	
	private static Connection getConn() {
		// TODO Auto-generated method stub
		return null;
	}

	public static Integer getAll() {
	    Connection conn = getConn();
	    //查询后n行记录 select * from table order by id desc limit n；//倒序排序（desc）
	    String sql = "select * from real_monitor ";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement)conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();
	        int col = rs.getMetaData().getColumnCount();
	        System.out.println("====================================");
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	//到这里结束操作
	
	public static void close(Connection conn){
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
	}
	
	public static void main(String[] args) throws Exception {
		Connection conn = getConnection();
		System.out.println(conn);
	}

}

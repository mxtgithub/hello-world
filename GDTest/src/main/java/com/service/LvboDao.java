package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dto.LvBo;
import com.util.DBUtil;

public class LvboDao {
	/*
	 * 
	 * 根据p_id查询滤波数据
	 */
	
	public LvBo findAllByPid(int p_id){
		LvBo lvbo = null;
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		String sql = "select * from lvbo where p_id =?;";
		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setInt(1, p_id);
			rs = prep.executeQuery();
			while(rs.next()){
				lvbo = new LvBo();
				lvbo.setL_id(rs.getInt("l_id"));
				lvbo.setP_id(rs.getInt("p_id"));
				lvbo.setSnr(rs.getString("snr"));
				lvbo.setMse(rs.getString("mse"));
				lvbo.setP1(rs.getString("p1"));
				lvbo.setP2(rs.getString("p2"));
				lvbo.setP3(rs.getString("p3"));
				lvbo.setP4(rs.getString("p4"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return lvbo;
	}
	/*
	 * 保存滤波后的数据
	 */
	public void saveLvBo(LvBo lvbo){
		Connection conn = null;
		PreparedStatement prep = null;
		String sql = "insert into lvbo(p_id,snr,mse,p1,p2,p3,p4) values(?,?,?,?,?,?,?);";
		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setInt(1, lvbo.getP_id());
			prep.setString(2, lvbo.getSnr());
			prep.setString(3, lvbo.getMse());
			prep.setString(4, lvbo.getP1());
			prep.setString(5, lvbo.getP2());
			prep.setString(6, lvbo.getP3());
			prep.setString(7, lvbo.getP4());
			int exeupdate = prep.executeUpdate();
			System.out.println("插入情况："+exeupdate);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
	}
	
	
}

package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dto.JianCe;
import com.util.DBUtil;


public class JianCeDao {
	
	public JianCe findAllByPid(int p_id){
		JianCe jiance = null;
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		String sql = "select * from jiance where p_id =?;";
		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setInt(1, p_id);
			rs = prep.executeQuery();
			while(rs.next()){
				jiance = new JianCe();
				jiance.setJ_id(rs.getInt("j_id"));
				jiance.setP_id(rs.getInt("p_id"));
				jiance.setImg_path(rs.getString("img_path"));
				jiance.setR_r(rs.getString("r_r"));
				jiance.setHeart_rate(rs.getString("heart_rate"));
				jiance.setR_number(rs.getString("r_number"));
				jiance.setP2(rs.getString("p2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return jiance;
	}
	
	
	
	/*
	 * 将检测后的数据存到数据库
	 */
	public void savePicMsg(JianCe jiance) {
		//�
		Connection conn = null;
		PreparedStatement prep = null;
		String sql = "insert into jiance(p_id,img_path,p2,r_r,heart_rate,r_number) values(?,?,?,?,?,?);";
		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setInt(1, jiance.getP_id());
			prep.setString(2, jiance.getImg_path());
			prep.setString(3, jiance.getP2());
			prep.setString(4, jiance.getR_r());
			prep.setString(5, jiance.getHeart_rate());
			prep.setString(6, jiance.getR_number());
			
			
			int exeupdate = prep.executeUpdate();
			System.out.println("插入情况："+exeupdate);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		
	}
	
}

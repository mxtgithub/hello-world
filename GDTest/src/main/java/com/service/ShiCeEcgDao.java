package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dto.ShiCe;
import com.util.DBUtil;

/**
 *	
 */
public class ShiCeEcgDao {
	/*
	 * 根据person的id查询数据
	 */
	public List<ShiCe> findShiByPersonId(int p_id) {
		List<ShiCe> ecgs = new ArrayList<ShiCe>();
		Connection conn = null;
		String sql = "select * from shice where p_id=?;";
		PreparedStatement prep = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setInt(1, p_id);
			rs = prep.executeQuery();
			while(rs.next()) {
				ShiCe ecg = new ShiCe();
				ecg.setId(rs.getInt("id"));
				ecg.setImgPath(rs.getString("imgPath"));
				ecg.setPicName(rs.getString("picName"));
				ecg.setType(rs.getString("type"));
				ecg.setInfo(rs.getString("info"));
				ecg.setDataMsg(rs.getString("dataMsg"));
				
				ecgs.add(ecg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return ecgs;
	}
	/*
	 */
	public List<ShiCe> findShiCeAll() {
		List<ShiCe> ecgs = new ArrayList<ShiCe>();
		Connection conn = null;
		String sql = "select * from shice;";
		PreparedStatement prep = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			prep = conn.prepareStatement(sql);
			rs = prep.executeQuery();
			while(rs.next()) {
				ShiCe ecg = new ShiCe();
				ecg.setId(rs.getInt("id"));
				ecg.setImgPath(rs.getString("imgPath"));
				ecg.setPicName(rs.getString("picName"));
				ecg.setType(rs.getString("type"));
				ecg.setInfo(rs.getString("info"));
				ecg.setDataMsg(rs.getString("dataMsg"));
				
				ecgs.add(ecg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(conn);
		}
		return ecgs;
	}
	
}

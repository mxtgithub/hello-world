package com.dto;
/**
 * 滤波数据实体类
 * @author 任潇洒
 *
 */
public class LvBo {
	
	private Integer l_id; //滤波id    --主键
	private Integer p_id; //person的id   --外键
	private String snr;  //信噪比
	private String mse;  //均方误差
	private String p1;  //图片地址
	private String p2;
	private String p3;
	private String p4;
	public Integer getL_id() {
		return l_id;
	}
	public void setL_id(Integer l_id) {
		this.l_id = l_id;
	}
	public Integer getP_id() {
		return p_id;
	}
	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}
	public String getSnr() {
		return snr;
	}
	public void setSnr(String snr) {
		this.snr = snr;
	}
	public String getMse() {
		return mse;
	}
	public void setMse(String mse) {
		this.mse = mse;
	}
	public String getP1() {
		return p1;
	}
	public void setP1(String p1) {
		this.p1 = p1;
	}
	public String getP2() {
		return p2;
	}
	public void setP2(String p2) {
		this.p2 = p2;
	}
	public String getP3() {
		return p3;
	}
	public void setP3(String p3) {
		this.p3 = p3;
	}
	public String getP4() {
		return p4;
	}
	public void setP4(String p4) {
		this.p4 = p4;
	}
	
	
	
}

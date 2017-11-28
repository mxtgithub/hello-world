package com.dto;

public class JianCe {
	private Integer j_id;  //检测的id
	private Integer p_id;  //外键   连接person表
	private String img_path;  //图片地址
	private String p2;
	private String r_r;      //RR间期
	private String heart_rate;//心率
	private String r_number;  //R波的数量
	
	
	public String getP2() {
		return p2;
	}
	public void setP2(String p2) {
		this.p2 = p2;
	}
	public Integer getJ_id() {
		return j_id;
	}
	public void setJ_id(Integer j_id) {
		this.j_id = j_id;
	}
	public Integer getP_id() {
		return p_id;
	}
	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public String getR_r() {
		return r_r;
	}
	public void setR_r(String r_r) {
		this.r_r = r_r;
	}
	public String getHeart_rate() {
		return heart_rate;
	}
	public void setHeart_rate(String heart_rate) {
		this.heart_rate = heart_rate;
	}
	public String getR_number() {
		return r_number;
	}
	public void setR_number(String r_number) {
		this.r_number = r_number;
	}
	
}

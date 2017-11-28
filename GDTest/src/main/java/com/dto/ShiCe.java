package com.dto;

public class ShiCe {

	//图片地址，id，类型，图片名字，图片介绍，数据介绍
	private Integer id;
	private String picName;
	private String imgPath;
	private String type;
	private String info;
	private String dataMsg;
	
	public String getDataMsg() {
		return dataMsg;
	}
	public void setDataMsg(String dataMsg) {
		this.dataMsg = dataMsg;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}

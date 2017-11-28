package com.dto;

public class Person {
	/**
age	int	4	0	-1	0	0	0	0		0	年龄				0	0
idNumber	varchar	255	0	-1	0	0	0	0		0	身份证号	utf8	utf8_general_ci		0	0
telNumber	int	11	0	-1	0	0	0	0		0	电话号码				0	0
address	varchar	255	0	-1	0	0	0	0		0	地址	utf8	utf8_general_ci		0	0
createDate	varchar	255	0	-1	0	0	0	0		0	建档日期	utf8	utf8_general_ci		0	0
createdBy	varchar	255	0	-1	0	0	0	0		0	建档人	utf8	utf8_general_ci		0	0
community	varchar	255	0	-1	0	0	0	0		0	主治社区	utf8	utf8_general_ci		0	0
doctor	varchar	255	0	-1	0	0	0	0		0	主治医生	utf8	utf8_general_ci		0	0
doctorNumber	varchar	255	0	-1	0	0	0	0		0	医生工号	utf8	utf8_general_ci		0	0
	 */	
	private Long p_id;
	private String name;
	private String gender;
	private int age;
	private String idNumber;
	private String telNumber;
	private String address;
	private  String createDate;
	private String createdBy;
	private String community;
	private String doctor;
	private String doctorNumber;
	//private String image;图片
	private String  data;
	private String attribute;
	private int cursor;
	
	

	public Long getP_id() {
		return p_id;
	}
	public void setP_id(Long p_id) {
		this.p_id = p_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getTelNumber() {
		return telNumber;
	}
	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCommunity() {
		return community;
	}
	public void setCommunity(String community) {
		this.community = community;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getDoctorNumber() {
		return doctorNumber;
	}
	public void setDoctorNumber(String doctorNumber) {
		this.doctorNumber = doctorNumber;
	}
	
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getAttribute() {
		return attribute;
	}
	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}
	public int getCursor() {
		return cursor;
	}
	public void setCursor(int cursor) {
		this.cursor = cursor;
	}
	
	
	
	
	
	

}

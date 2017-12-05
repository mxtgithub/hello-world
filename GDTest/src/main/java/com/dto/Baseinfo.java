package com.dto;

import java.util.Date;

public class Baseinfo {
    private Integer id;

    private String username;

    private String identity;

    private String truename;

    private String gender;

    private Integer age;

    private String height;

    private String weight;

    private String bloodtype;

    private String nativeplace;

    private Date birthdate;

    private String idnumber;

    private String telnumber;

    private String address;

    private String profession;

    private String filenum;

    private String familynum;

    private String medicalcard;

    private String attribute;

    private String buildachive;

    private Date builddate;

    private String keyborder;
    
	private int cursor;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename == null ? null : truename.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height == null ? null : height.trim();
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight == null ? null : weight.trim();
    }

    public String getBloodtype() {
        return bloodtype;
    }

    public void setBloodtype(String bloodtype) {
        this.bloodtype = bloodtype == null ? null : bloodtype.trim();
    }

    public String getNativeplace() {
        return nativeplace;
    }

    public void setNativeplace(String nativeplace) {
        this.nativeplace = nativeplace == null ? null : nativeplace.trim();
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
    }

    public String getTelnumber() {
        return telnumber;
    }

    public void setTelnumber(String telnumber) {
        this.telnumber = telnumber == null ? null : telnumber.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession == null ? null : profession.trim();
    }

    public String getFilenum() {
        return filenum;
    }

    public void setFilenum(String filenum) {
        this.filenum = filenum == null ? null : filenum.trim();
    }

    public String getFamilynum() {
        return familynum;
    }

    public void setFamilynum(String familynum) {
        this.familynum = familynum == null ? null : familynum.trim();
    }

    public String getMedicalcard() {
        return medicalcard;
    }

    public void setMedicalcard(String medicalcard) {
        this.medicalcard = medicalcard == null ? null : medicalcard.trim();
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute == null ? null : attribute.trim();
    }

    public String getBuildachive() {
        return buildachive;
    }

    public void setBuildachive(String buildachive) {
        this.buildachive = buildachive == null ? null : buildachive.trim();
    }

    public Date getBuilddate() {
        return builddate;
    }

    public void setBuilddate(Date builddate) {
        this.builddate = builddate;
    }

    public String getKeyborder() {
        return keyborder;
    }

    public void setKeyborder(String keyborder) {
        this.keyborder = keyborder == null ? null : keyborder.trim();
    }

	public int getCursor() {
		return cursor;
	}

	public void setCursor(int cursor) {
		this.cursor = cursor;
	}
    
}
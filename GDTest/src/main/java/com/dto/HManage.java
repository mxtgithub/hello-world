package com.dto;

import java.util.Date;

public class HManage {
    private Integer id;

    private String identity;

    private String truename;

    private String gender;

    private Integer age;

    private Date birthdate;

    private String address;

    private String filenum;

    private String hearttype;

    private String symptom;

    private String complication;

    private String urinesugar;

    private String diabetes;

    private String habit;

    private String alcohol;

    private String sport;

    private String medcinal;

    private String buildachive;

    private Date builddate;

    private String keyborder;

    private String attribute;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getFilenum() {
        return filenum;
    }

    public void setFilenum(String filenum) {
        this.filenum = filenum == null ? null : filenum.trim();
    }

    public String getHearttype() {
        return hearttype;
    }

    public void setHearttype(String hearttype) {
        this.hearttype = hearttype == null ? null : hearttype.trim();
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom == null ? null : symptom.trim();
    }

    public String getComplication() {
        return complication;
    }

    public void setComplication(String complication) {
        this.complication = complication == null ? null : complication.trim();
    }

    public String getUrinesugar() {
        return urinesugar;
    }

    public void setUrinesugar(String urinesugar) {
        this.urinesugar = urinesugar == null ? null : urinesugar.trim();
    }

    public String getDiabetes() {
        return diabetes;
    }

    public void setDiabetes(String diabetes) {
        this.diabetes = diabetes == null ? null : diabetes.trim();
    }

    public String getHabit() {
        return habit;
    }

    public void setHabit(String habit) {
        this.habit = habit == null ? null : habit.trim();
    }

    public String getAlcohol() {
        return alcohol;
    }

    public void setAlcohol(String alcohol) {
        this.alcohol = alcohol == null ? null : alcohol.trim();
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport == null ? null : sport.trim();
    }

    public String getMedcinal() {
        return medcinal;
    }

    public void setMedcinal(String medcinal) {
        this.medcinal = medcinal == null ? null : medcinal.trim();
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

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute == null ? null : attribute.trim();
    }
}
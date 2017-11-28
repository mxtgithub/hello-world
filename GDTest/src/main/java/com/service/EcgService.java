package com.service;

import java.util.List;

import com.dto.Ecg;
import com.dto.Person;
import com.dto.Result;

public interface EcgService {
	//显示出来
	List<Ecg> getAll(Ecg  ecg);
	//保存信息
	
	Result saveEcg(String idNumber,String ecgData,String type,String createDate,
			String createdBy, String community,
			String doctor,String ecgAttribute);
	
	Ecg findByIdNumber(String idNumber);
	Ecg  selectOneEcg(int  ecgId);//查找个人信息
	int update(Ecg  ecg);
	//int   insertEcg(Ecg  ecg);
	
	int delete(int  ecgId);
	
}

package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dto.Ecg;
import com.dto.Person;
import com.dto.Result;
import com.mapper.EcgMapper;
import com.service.EcgService;

@Service
@Transactional
public class EcgServiceImpl implements EcgService{
	@Autowired
	EcgMapper ecgMapper;

	public List<Ecg> getAll(Ecg  ecg) {	
		return ecgMapper.getAll(ecg);
	}

	 //保存个人信息
	public Result saveEcg( String idNumber,String ecgData,String type,String createDate,
			String createdBy, String community,
			String doctor,String ecgAttribute){
		
		Result result = new Result();
		Ecg ecg  = new Ecg();
		System.out.println("idNumber:"+idNumber);
		System.out.println("ecgData:"+ecgData);
		System.out.println("type:"+type);
		System.out.println("createDate:"+createDate);
		System.out.println("createdBy:"+createdBy);
		System.out.println("community:"+community);
		System.out.println("doctor:"+doctor);
		System.out.println("ecgAttribute:"+ecgAttribute);
		
		ecg.setIdNumber(idNumber);
		String data1 ="Persons/"+ecgData+type;//修改
		ecg.setEcgData(data1);
		ecg.setCreateDate(createDate);
		ecg.setCreatedBy(createdBy);
		ecg.setCommunity(community);
		ecg.setDoctor(doctor);
		//ecg.setDoctor(doctorNumber);
		ecg.setEcgAttribute(ecgAttribute);
				
		ecgMapper.insertEcg(ecg);

		result.setMsg("插入成功");
		result.setStatus(0);
		return result;
	}

	public Ecg findByIdNumber(String idNumber) {
		// TODO Auto-generated method stub
		return null;
	}
	public Ecg selectOneEcg(int ecgId) {
		return ecgMapper.selectOneEcg(ecgId);
	}
	public int update(Ecg  ecg) {
		return ecgMapper.update(ecg);
	}
	
	public int delete(int ecgId) {
		return ecgMapper.delete(ecgId);
	}
	

}

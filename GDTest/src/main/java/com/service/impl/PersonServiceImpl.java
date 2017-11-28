package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dto.Person;
import com.dto.Result;
import com.mapper.PersonMapper;
import com.service.PersonService;

@Service("personService")
@Transactional
public class PersonServiceImpl implements PersonService{
	@Autowired
	PersonMapper personMapper;

	public List<Person> getAll(Person person) {
		return personMapper.getPerson(person);
	}

	public int delete(Long  id) {
		return personMapper.delete(id);
	}

	public Person checkLogin(String name) {
		return personMapper.checkPerson(name);
	}

//	public int inserPerson(Person person) {
//		return personMapper.inserPerson(person);
//	}
	
	//保存个人信息
//	public Result savePerson(String name,String gender,int age, String idNumber,
//			String telNumber,String address,String createDate,
//			String createdBy, String community,
//			String doctor,String doctorNumber,String data,String attribute){
//		
//		Result result = new Result();
//		Person person = new Person();
//		person.setGender(gender);
//		person.setAge(age);
//		person.setName(name);
//		person.setGender(gender);
//		person.setAge(age);
//		person.setIdNumber(idNumber);
//		person.setTelNumber(telNumber);
//		person.setAddress(address);
//		person.setCreateDate(createDate);
//		person.setCreatedBy(createdBy);
//		person.setCommunity(community);
//		person.setDoctor(doctor);
//		person.setDoctorNumber(doctorNumber);
//		//"/Persons/"+name
//		String data1 ="Persons/"+name+"/"+data;
//		person.setData(data1);
//		person.setAttribute(attribute);
//		
//		personMapper.inserPerson(person);
//		result.setMsg("插入成功");
//		result.setStatus(0);
//		return result;
//	}

//	public int inserPerson(Person person) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

	public Person selectOne(String idNumber) {
		return personMapper.selectOne(idNumber);
	}

	public int update(Person person) {
		return personMapper.update(person);
	}

	public Person selectOneR(int p_id) {
		return personMapper.selectOneR(p_id);
	}
	
}

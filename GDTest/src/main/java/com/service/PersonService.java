package com.service;

import java.util.List;


import com.dto.Person;
import com.dto.Result;


public interface PersonService {
	List<Person>  getAll(Person person);
	int delete(Long  id);
	Person  checkLogin(String name);//登录校验
//	int   inserPerson(Person person);
	Person selectOne(String idNumber);//查找个人信息
	//修改个人信息
	int update(Person person);
	
	Person selectOneR(int p_id);

}

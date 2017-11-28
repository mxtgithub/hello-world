package com.mapper;

import java.util.List;

import com.dto.Person;

public interface PersonMapper {
	List<Person>  getPerson(Person person);
	int delete(Long id);
	Person  checkPerson(String name);//登录校验
	void    inserPerson(Person person);//新插入数据
	Person selectOne(String idNumber);//查找个人信息
	//修改个人信息
	int update(Person person);
	Person selectOneR(int p_id);
}

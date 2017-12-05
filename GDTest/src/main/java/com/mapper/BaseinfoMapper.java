package com.mapper;

import java.util.List;

import com.dto.Baseinfo;

public interface BaseinfoMapper {
	List<Baseinfo> getBaseinfo(Baseinfo baseinfo);
	
    int deleteByPrimaryKey(Integer id);

    int insert(Baseinfo record);

    int insertSelective(Baseinfo record);

    Baseinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Baseinfo record);

    int updateByPrimaryKey(Baseinfo record);
}
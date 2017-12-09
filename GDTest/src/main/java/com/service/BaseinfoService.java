package com.service;

import java.util.List;

import com.dto.Baseinfo;

public interface BaseinfoService {
	List<Baseinfo>  getAll(Baseinfo baseinfo);
	int delete(Long  id);
	boolean insert(Baseinfo baseinfo);
	boolean update(Baseinfo baseinfo);
	Baseinfo selectByPrimaryKey(Baseinfo baseinfo);
}

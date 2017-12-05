package com.service;

import java.util.List;

import com.dto.Baseinfo;

public interface BaseinfoService {
	List<Baseinfo>  getAll(Baseinfo baseinfo);
	int delete(Long  id);
	int insert(Baseinfo baseinfo);
	int update(Baseinfo baseinfo);
}

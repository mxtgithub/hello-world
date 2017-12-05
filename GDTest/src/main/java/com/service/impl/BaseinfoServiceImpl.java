package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dto.Baseinfo;
import com.mapper.BaseinfoMapper;
import com.service.BaseinfoService;

@Service("baseinfoService")
@Transactional
public class BaseinfoServiceImpl implements BaseinfoService {
	
	@Autowired
	BaseinfoMapper baseinfoMapper;
	
	public List<Baseinfo> getAll(Baseinfo baseinfo) {
		// TODO Auto-generated method stub
		return baseinfoMapper.getBaseinfo(baseinfo);
	}

	public int delete(Long id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Baseinfo baseinfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(Baseinfo baseinfo) {
		// TODO Auto-generated method stub
		return 0;
	}

}

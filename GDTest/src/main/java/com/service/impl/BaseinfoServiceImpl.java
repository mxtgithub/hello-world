package com.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dto.Baseinfo;
import com.exception.BusinessException;
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

	public boolean insert(Baseinfo baseinfo) {
		// TODO Auto-generated method stub
		try {
			
			baseinfoMapper.insert(baseinfo);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			throw new BusinessException("1000", "新增baseinfo失败："+e.getMessage());
		}
		
	}

	public boolean update(Baseinfo baseinfo) {
		try {
			
			baseinfoMapper.updateByPrimaryKey(baseinfo);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			throw new BusinessException("1000", "更新baseinfo失败："+e.getMessage());
		}
	}

	public Baseinfo selectByPrimaryKey(Baseinfo baseinfo) {
		// TODO Auto-generated method stub
		return baseinfoMapper.selectByPrimaryKey(baseinfo.getId());
	}

}

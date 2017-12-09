package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dto.BpManage;
import com.mapper.BpManageMapper;
import com.service.ChronicService;

@Service("chronicService")
@Transactional
public class ChronicServiceImpl implements ChronicService {
	
	@Autowired
	BpManageMapper bpManageMapper;
	
	public List<BpManage> getAllBp(BpManage bp) {
		// TODO Auto-generated method stub
		return bpManageMapper.getBpList(bp);
	}

}

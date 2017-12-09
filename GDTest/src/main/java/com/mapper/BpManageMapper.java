package com.mapper;

import java.util.List;

import com.dto.BpManage;

public interface BpManageMapper {
	List<BpManage> getBpList(BpManage bp);
	
    int deleteByPrimaryKey(Integer id);

    int insert(BpManage record);

    int insertSelective(BpManage record);

    BpManage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BpManage record);

    int updateByPrimaryKey(BpManage record);
}
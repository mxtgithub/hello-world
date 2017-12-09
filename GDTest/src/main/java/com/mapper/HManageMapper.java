package com.mapper;

import com.dto.HManage;

public interface HManageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HManage record);

    int insertSelective(HManage record);

    HManage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HManage record);

    int updateByPrimaryKey(HManage record);
}
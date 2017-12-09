package com.mapper;

import com.dto.BsManage;

public interface BsManageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BsManage record);

    int insertSelective(BsManage record);

    BsManage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BsManage record);

    int updateByPrimaryKey(BsManage record);
}
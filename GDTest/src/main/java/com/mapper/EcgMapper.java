package com.mapper;

import java.util.List;

import com.dto.Ecg;

public interface EcgMapper {
	//显示出来
		List<Ecg> getAll(Ecg  ecg);
		
		void insertEcg(Ecg ecg);//新插入数据
		
		Ecg  selectOneEcg(int  ecgId);//查找一个Ecg
		int update(Ecg  ecg);//更新Ecg信息
		int delete(int  ecgId);

}

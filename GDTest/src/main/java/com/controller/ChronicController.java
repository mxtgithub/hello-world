package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.BpManage;
import com.exception.BusinessException;
import com.service.ChronicService;

@Controller
public class ChronicController extends BaseController {

	@Autowired
	private ChronicService chronicService; 
	
	//提交baseinfo信息
			@RequestMapping("/bpmanageQueryList")
			public @ResponseBody Map<String, Object> bpmanageQueryList() {

				Map<String, Object> map = new HashMap<String, Object>();
				
				try {
					BpManage bp = new BpManage();
					bp.setCursor((pageNo-1)*10);
					List<BpManage> list = chronicService.getAllBp(bp);
					
					map.put("list", list);
					map.put("result", "success");
					map.put("pageNo", pageNo);
					
				} catch (BusinessException be){
					be.printStackTrace();
					
					map.put("result", "error");
					map.put("errCode", be.getRetCode());
					map.put("errMsg", "提交失败！         错误原因：" + be.getRetMsg());
				} catch (Exception e) {
					e.printStackTrace();

					map.put("result", "error");
					map.put("errorCode", "9999");
					map.put("errorMsg", "查询列表失败！         错误原因：" + e.getMessage());
				}

				return map;
			}
}

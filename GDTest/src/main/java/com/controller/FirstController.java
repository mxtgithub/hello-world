package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class FirstController {
	
	//健康档案管理
	@RequestMapping( value="/healthy")
	public String goHealthy(){ 
		return "healthy";
	}
	
	//慢性病管理
	@RequestMapping( value="/slow")
	public String goSlow(){ 
		return "slow";
	}
	
	//医疗保健管理
	@RequestMapping( value="/protect")
	public String goProtect(){ 
		return "protect";
	}
	
	//数据信息管理
		@RequestMapping( value="/select")
		public String goSelect(){ 
			return "select";
		}
	
	//系统用户管理
	@RequestMapping( value="/system")
	public String goSystem(){ 
		return "system";
	}
	
	
}

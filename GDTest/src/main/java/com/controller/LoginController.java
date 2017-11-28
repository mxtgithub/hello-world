package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.PersonService;

@Controller
public class LoginController {
	    @Autowired
		PersonService personService;
	
	    //登录
		@RequestMapping( value="/goLogin")
		public String goLogin(
			@RequestParam(value="idNumber") String idNumber
				,@RequestParam(value="name") String name ,Model  model
				){ 
			System.out.println(idNumber+name);
			//登录判断
			if(personService.checkLogin(name) != null){
				if(personService.checkLogin(name).getIdNumber().equals(idNumber) &&
						personService.checkLogin(name).getName().equals(name)){
					
					 model.addAttribute("idNumber", idNumber);
					 model.addAttribute("name", name);
					return "first";
				}else{
					return "melogin";
				}
			}else{
				return "melogin";	
			}
		}	
}

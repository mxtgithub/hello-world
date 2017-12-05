package com.controller;

import java.io.File;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.Baseinfo;
import com.dto.Ecg;
import com.dto.Person;
import com.dto.Result;
import com.service.BaseinfoService;
import com.service.PersonService;



@Controller
public class PersonController extends BaseController{
	@Autowired
	PersonService personService;
	@Autowired
	BaseinfoService baseinfoService;
	
	//显示所属患者信息
	@RequestMapping("/getPersonR")
	public String getPersonR(HttpServletRequest request,Map<String, Object> map,Model model){
		Person person = new Person();
		int page=1;
		person.setCursor((page-1)*10);
		List<Person>  list = personService.getAll(person);		
		map.put("list",personService.getAll(person));
		model.addAttribute("page", page);
		//request.setAttribute("page", page);
		return "personMessage";
	}
	//读取数据
	@RequestMapping("/getPerson")
	public String getPerson(HttpServletRequest request,Map<String, Object> map,Model model){
		Person person = new Person();
		int page=1;
		person.setCursor((page-1)*10);
		List<Person>  list = personService.getAll(person);		
		map.put("list",personService.getAll(person));
		model.addAttribute("page", page);
		//request.setAttribute("page", page);
		return "person_d";
	}
	
	//用户修改个人信息  点击修改按钮  跳转页面
		 @RequestMapping("/EditPerson/{idNumber}")
		 public String update(@PathVariable("idNumber") String  idNumber,Model model ){
			 Person person = new Person();
			 person= personService.selectOne(idNumber);
			 model.addAttribute("person", person);
			 return "editPerson";
		 }
		 
		 //更改Person数据
		 @RequestMapping(value="/updatePerson/{idNumber}",  method = RequestMethod.POST)
		 public String edit(HttpServletRequest request,Model model,
				 @PathVariable("idNumber") String  idNumber,
				 @RequestParam(value="name") String name,
				 @RequestParam(value="age") int  age,
				 @RequestParam(value="telNumber") String  telNumber,
				 @RequestParam(value="address") String address,
				 @RequestParam(value="attribute") String  attribute
				 )  {
			    Person person = new Person();
			    person.setIdNumber(idNumber);
			    person.setName(name);
			    person.setAge(age);
			    person.setTelNumber(telNumber);
			    person.setAddress(address);
			    person.setAttribute(attribute);
			
			    personService.update(person);
			 //返回到自己的信息页面
			    personService.selectOne(idNumber); 
			    model.addAttribute("person", person); 
			 return "person_p";
		 }

			//显示一个用户信息
			@RequestMapping("/oneSelect/{idNumber}")
			public String oneSelect(HttpServletRequest request,Map<String, Object> map,
					Model model,
					@PathVariable("idNumber") String idNumber){
				Person person = personService.selectOne(idNumber);
				model.addAttribute("person", person);
				return "person_p";
			}	
	//显示一个用户信息
	@RequestMapping("/oneSelectR/{p_id}")
	public String oneSelectR(HttpServletRequest request,Map<String, Object> map,
			Model model,
			@PathVariable("p_id") int p_id){
		Person person = personService.selectOneR(p_id);
		model.addAttribute("person", person);
		return "ecgshice";
	}
	
	//显示用户信息
	@RequestMapping("/personSelect")
	public String personSelect(HttpServletRequest request,Map<String, Object> map,Model model){
		Person person = new Person();
		int page=1;
		person.setCursor((page-1)*3);
		List<Person>  list = personService.getAll(person);		
		map.put("list",personService.getAll(person));
		model.addAttribute("page", page);
		request.setAttribute("page", page);
		return "person_p";
	}
	
	@RequestMapping("/personDM")
	public String personDM(HttpServletRequest request,Map<String, Object> map,Model model){
		Person person = new Person();
		int page=1;
		person.setCursor((page-1)*3);
		List<Person>  list = personService.getAll(person);		
		map.put("list",personService.getAll(person));
		model.addAttribute("page", page);
		request.setAttribute("page", page);
		return "person_DM";
	}
	
	//删除数据
	@RequestMapping("/delete/{id}")
	public String Delete(@PathVariable("id") Long  id,Map<String, Object> map,Model model){
		personService.delete(id);
		Person person = new Person();
		int page=1;
		person.setCursor((page-1)*3);
		List<Person>  list = personService.getAll(person);		
		map.put("list",personService.getAll(person));
		model.addAttribute("page", page);
		return "person_DM";
	}
	
	
	 //用户数据处理上一页
	 @RequestMapping("/upPage_userDM/{page}")
	 public String upPage_userDM(@PathVariable("page") int page,Map<String, Object> map
			 ,HttpServletRequest request,Model model){
		 Person person = new Person();
		 if(page>1){
		 page = page-1;//上一页
		 person.setCursor((page-1)*10);
		 List<Person> list = personService.getAll(person);
	    map.put("list", personService.getAll(person));
	    model.addAttribute("page", page);
		 }else{
			 page =1;
			 person.setCursor((page-1)*10);
				List<Person> list =  personService.getAll(person);
		    	map.put("list", personService.getAll(person));
		    	model.addAttribute("page", page);
		 }
		 return "personMessage";
	 }
	 //用户数据处理下一页
	 @RequestMapping("/downPage_userDM/{page}")
	 public String downPage_userDM(@PathVariable("page") int page,Map<String, Object> map
			 ,HttpServletRequest request,Model  model ){
		 page = page+1;//下一页		 
		 Person person = new Person();
		 person.setCursor((page-1)*10);
		 List<Person> list =  personService.getAll(person);
	    map.put("list", personService.getAll(person));
	    model.addAttribute("page", page);
		 return "personMessage";
	 }	 
	 
	 
	 
	
	 //上一页
	 @RequestMapping("/upPage/{page}")
	 public String upPage(@PathVariable("page") int page,Map<String, Object> map
			 ,HttpServletRequest request,Model model){
		 Person person = new Person();
		 if(page>1){
		 page = page-1;//上一页
		 person.setCursor((page-1)*10);
		 List<Person> list = personService.getAll(person);
	    map.put("list", personService.getAll(person));
	    model.addAttribute("page", page);
		 }else{
			 page =1;
			 person.setCursor((page-1)*10);
				List<Person> list =  personService.getAll(person);
		    	map.put("list", personService.getAll(person));
		    	model.addAttribute("page", page);
		 }
		 return "person_d";
	 }
	 
	 @RequestMapping("/upPage_pDM/{page}")
	 public String upPage_pDM(@PathVariable("page") int page,Map<String, Object> map
			 ,HttpServletRequest request,Model model){
		 Person person = new Person();
		 if(page>1){
		 page = page-1;//上一页
		 person.setCursor((page-1)*10);
		 List<Person> list = personService.getAll(person);
	    map.put("list", personService.getAll(person));
	    model.addAttribute("page", page);
		 }else{
			 page =1;
			 person.setCursor((page-1)*10);
				List<Person> list =  personService.getAll(person);
		    	map.put("list", personService.getAll(person));
		    	model.addAttribute("page", page);
		 }
		 return "person_DM";
	 }
	 
	 
	 //下一页
	 @RequestMapping("/downPage/{page}")
	 public String downPage(@PathVariable("page") int page,Map<String, Object> map
			 ,HttpServletRequest request,Model  model ){
		 page = page+1;//下一页		 
		 Person person = new Person();
		 person.setCursor((page-1)*10);
		 List<Person> list =  personService.getAll(person);
	    map.put("list", personService.getAll(person));
	    model.addAttribute("page", page);
		 return "person_d";
	 }	 
	 
	 @RequestMapping("/downPage_pDM/{page}")
	 public String downPage_pDM(@PathVariable("page") int page,Map<String, Object> map
			 ,HttpServletRequest request,Model  model ){
		 page = page+1;//下一页		 
		 Person person = new Person();
		 person.setCursor((page-1)*10);
		 List<Person> list =  personService.getAll(person);
	    map.put("list", personService.getAll(person));
	    model.addAttribute("page", page);
		 return "person_DM";
	 }	 
	 
	 //下载功能
	 @RequestMapping("/downloadPerson")
	 public ResponseEntity<byte[]> downloadData(
			 @RequestParam("data") String data,
			 HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 data = URLDecoder.decode(data, "UTF-8");
		 File file = new File(File.separator + data);
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			headers.setContentDispositionFormData("attchement",
					new String(data.getBytes("UTF-8"), "ISO-8859-1"));
      return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
			headers, HttpStatus.CREATED);
	 }
	
	 //新增数据 跳转页面
	 @RequestMapping("/insertPage/{idNumber}")
	 public String insertPage(
			 @PathVariable("idNumber") String idNumber,Model  model){
		 model.addAttribute("idNumber", idNumber);
		 return "insertPage";
	 }
	 
	 
	     //取消新增数据
		 @RequestMapping("/noSavePerson")
		 public String noSavePerson(){
			 return "first";
		 }
		 
	// 查询列表
	@RequestMapping("/queryBaseinfoList")
	public @ResponseBody Map<String, Object> queryList() {

		Map<String, Object> map = new HashMap<String, Object>();
		
		try {

			Baseinfo baseinfo = new Baseinfo();
			baseinfo.setCursor((pageNo-1)*10);
			List<Baseinfo>  list = baseinfoService.getAll(baseinfo);		
			map.put("list",baseinfoService.getAll(baseinfo));
			//request.setAttribute("page", page);

			map.put("result", "success");
			map.put("pageNo", pageNo);

		} catch (Exception e) {
			e.printStackTrace();

			map.put("result", "error");
			map.put("errorCode", "9999");
			map.put("errorMsg", "查询列表失败！         错误原因：" + e.getMessage());
		}

		return map;
	}
	
	//查询baseinfo信息
	@RequestMapping("/queryBaseinfo")
	public @ResponseBody Map<String, Object> queryBaseinfo() {

		Map<String, Object> map = new HashMap<String, Object>();
		
		try {

			Baseinfo baseinfo = new Baseinfo();
			baseinfo.setId(Integer.parseInt(request.getParameter("id")));
			baseinfo.setCursor((pageNo-1)*10);
			List<Baseinfo>  list = baseinfoService.getAll(baseinfo);		
			map.put("list",baseinfoService.getAll(baseinfo));
			//request.setAttribute("page", page);

			map.put("result", "success");
			map.put("pageNo", pageNo);

		} catch (Exception e) {
			e.printStackTrace();

			map.put("result", "error");
			map.put("errorCode", "9999");
			map.put("errorMsg", "查询失败！         错误原因：" + e.getMessage());
		}

		return map;
	}
}


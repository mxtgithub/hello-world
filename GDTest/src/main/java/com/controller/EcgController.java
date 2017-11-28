package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.Ecg;
import com.dto.Person;
import com.dto.Result;
import com.service.EcgService;
import com.service.PersonService;


@Controller
public class EcgController {
	
	@Autowired
	EcgService ecgService;
	
	@Autowired
	PersonService personService;
	//新增数据，新增至ecg数据库  ajax
		@ResponseBody
		@RequestMapping(value="/save")
		public Result save(String idNumber,String ecgData,String type,String createDate,
				String createdBy, String community,String doctor,String ecgAttribute) {
			 Result result =
					 ecgService.saveEcg(idNumber,ecgData,type, createDate, createdBy, 
							 community, doctor, ecgAttribute);
				return result;
			}

	//修改用户的备注信息
	 @RequestMapping("/update/{idNumber}")
	 public String update(@PathVariable("idNumber") String  idNumber,Model model ){
//		 Ecg ecg = new Ecg();
//		 ecg=ecgService.findByIdNumber(idNumber);
//		 model.addAttribute("ecg", ecg);
		 return "update";
	 }
	 
	 //查看用户的ecg数据信息
	 @RequestMapping("/getEcg/{idNumber}")
		public String selectEcg(@PathVariable("idNumber") String idNumber,
				HttpServletRequest request,
				Map<String, Object> map,Model model){
			Ecg ecg = new Ecg();
			int page=1;
			ecg.setCursor((page-1)*10);
			ecg.setIdNumber(idNumber);
			List<Ecg>  list = ecgService.getAll(ecg);
			map.put("list",ecgService.getAll(ecg));
			model.addAttribute("page", page);
			return "ecgDM";
		}
 
	 //查看用户的ecg数据信息  修改 
	 @RequestMapping("/getEcg_u/{idNumber}")
		public String selectEcg_u(@PathVariable("idNumber") String idNumber,
				HttpServletRequest request,
				Map<String, Object> map,Model model){
			Ecg ecg = new Ecg();
			int page=1;
			ecg.setCursor((page-1)*10);
			ecg.setIdNumber(idNumber);
			List<Ecg>  list = ecgService.getAll(ecg);
			map.put("list",ecgService.getAll(ecg));
			model.addAttribute("page", page);
			return "ecgDM_u";
		}
	 //查看用户的ecg数据信息  删除
	 @RequestMapping("/getEcg_d/{idNumber}")
		public String selectEcg_d(@PathVariable("idNumber") String idNumber,
				HttpServletRequest request,
				Map<String, Object> map,Model model){
			Ecg ecg = new Ecg();
			int page=1;
			ecg.setCursor((page-1)*10);
			ecg.setIdNumber(idNumber);
			List<Ecg>  list = ecgService.getAll(ecg);
			map.put("list",ecgService.getAll(ecg));
			model.addAttribute("page", page);
			return "ecgDM_d";
		}
	 //查看用户的ecg数据信息  下载
	 @RequestMapping("/getEcg_l/{idNumber}")
		public String selectEcg_l(@PathVariable("idNumber") String idNumber,
				HttpServletRequest request,
				Map<String, Object> map,Model model){
			Ecg ecg = new Ecg();
			int page=1;
			ecg.setCursor((page-1)*10);
			ecg.setIdNumber(idNumber);
			List<Ecg>  list = ecgService.getAll(ecg);
			map.put("list",ecgService.getAll(ecg));
			model.addAttribute("page", page);
			return "ecgDM_l";
		}

	 //删除delete/${tom.ecgId}

	 
	//医生修改用户的ECG信息UpdateEcg/${tom.ecgId}
	 	@RequestMapping("/UpdateEcg/{ecgId}")
		 public String updateEcg(@PathVariable("ecgId") int  ecgId,Model model){
	 			Ecg ecg = new Ecg();
	 		ecg= ecgService.selectOneEcg(ecgId);
			 model.addAttribute("ecg", ecg);
			 return "editEcg";
		 }
	 		
	 	//将修改好的数据再次保存回数据库==UpdatedEcg/${tom.ecgId}
	 	@RequestMapping(value="/UpdatedEcg/{ecgId}",method = RequestMethod.POST)
			 public String edit(HttpServletRequest request,Model model,
					 @PathVariable("ecgId") Long  ecgId,
					 @RequestParam(value="community") String community,
					 @RequestParam(value="createDate") String createDate,
					 @RequestParam(value="doctor") String  doctor,
					 @RequestParam(value="ecgData") String ecgData,
					 @RequestParam(value="createdBy") String  createdBy,
					 @RequestParam(value="ecgAttribute") String ecgAttribute
					 ,Map<String, Object> map)  {
	 		Ecg ecg = new Ecg();
	 		ecg.setEcgId(ecgId);
	 		ecg.setCreateDate(createDate);
	 		ecg.setCommunity(community);
	 		ecg.setDoctor(doctor);
	 		ecg.setEcgData(ecgData);
	 		ecg.setCreatedBy(createdBy);
	 		ecg.setEcgAttribute(ecgAttribute);
	 		ecgService.update(ecg); //更新修改过的数据  
			//返回到自己的信息页面   如何调另外一个命令只能用ajax   ????  传一个不要参数的变量
	// personService.selectOne(idNumber); 
			model.addAttribute("ecg", ecg); 
				 //return "first";
				 Person person = new Person();
					int page=1;
					person.setCursor((page-1)*3);
					List<Person>  list = personService.getAll(person);		
					map.put("list",personService.getAll(person));
					model.addAttribute("page", page);
					model.addAttribute("person", person); 
					return "person_DM";				 
			 }
	
	 	//删除数据
		@RequestMapping("/deleteEcg/{ecgId}")
		public String Delete(
	@PathVariable("ecgId") int  ecgId,Map<String, Object> map,Model model){
			ecgService.delete(ecgId);//删除
			 Person person = new Person();
				int page=1;
				person.setCursor((page-1)*10);
				List<Person>  list = personService.getAll(person);		
				map.put("list",personService.getAll(person));
				model.addAttribute("page", page);
				model.addAttribute("person", person); 
				return "person_DM";			
		}
		
/**
 
		Person person = new Person();
		int page=1;
		person.setCursor((page-1)*3);
		List<Person>  list = personService.getAll(person);		
		map.put("list",personService.getAll(person));
		model.addAttribute("page", page);
		return "person_DM";
 */
		

}


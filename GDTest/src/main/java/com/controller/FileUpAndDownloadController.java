package com.controller;
import java.io.File;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class FileUpAndDownloadController {
	private static Log logger = LogFactory
			.getLog(FileUpAndDownloadController.class);
	/**
	 * fileUpLoad1 文件上传方法一：利用commons-fileupload
	 * jar包中FileUtils类的copyInputStreamToFile方法进行文件的读写
	  :这个参数作为文件上传的功能来说，是可以不需要的，但是因为后面下载文件时需要传递一些参数，我就加了ModelMap这个参数，
	 这个参数的作用其实就相当于request一样 ，可以在请求之间传递参数，而且ModelMap中存放数据的方式跟HashMap类似，也是
	通过键值对存放的；modelMap.put("username","zhangsan")作用等同于request.setAttribute("username","zhangsan");
	 在jsp页面都可以通过request.getAttribute("username")或${username}来获取值
	 */
	//将文件数据保存至tomcat服务器上
	@RequestMapping(value="/fileUpLoad/{idNumber}", method=RequestMethod.POST)
	public String fileUpLoad(@RequestParam("ecgData") MultipartFile file,
			HttpServletRequest request, ModelMap modelMap) {
		logger.info("***************************进入文件上传请求***********************");
		String viewName = "";
		try {
			if (file.isEmpty()) {//如果还没有选择文件，则跳转到提示页面
				logger.info("***************************上传文件为空***********************");
				modelMap.put("errorMsg", "请选择文件后上传");
				viewName = "error";
			}else{
				//文件存放路径，上传的文件放在项目的Persons文件夹下
				String ecgData = request.getParameter("ecgData");
				System.out.println("ecgData:"+ecgData);
				String realName = file.getOriginalFilename();
				String savePath = request.getSession().getServletContext().getRealPath("/Persons");
				System.out.println(savePath);
				//日志打印上传文件的信息
//				logger.info("***************************[realName:"+realName+"]***********************");
//				logger.info("***************************[fileName:"+file.getName()+"]***********************");
//				logger.info("***************************[fileSize:"+file.getSize()/1024+"KB]***********************");
//				logger.info("***************************[fileType:"+file.getContentType()+"]***********************");
				
				//将文件信息存放到modelMap中,在成功页面读取文件信息
				modelMap.put("fileName", realName);
				modelMap.put("fileSize", file.getSize()/1024+"KB");
				modelMap.put("fileType", file.getContentType());
				modelMap.put("filePath", savePath);
				//将上传的文件存放到upload下
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath + File.separator + realName));
				logger.info("***************************上传文件为空***********************");
				viewName = "success";
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			logger.info("***************************文件上传失败***********************");
			modelMap.put("errorMsg", "文件上传失败");
			return "error";
		}
		return viewName;
	}
}

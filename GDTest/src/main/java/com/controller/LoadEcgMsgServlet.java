package com.controller;
//马晓婷
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.JianCe;
import com.dto.LvBo;
import com.dto.ShiCe;
import com.service.JianCeDao;
import com.service.LvboDao;
import com.service.ShiCeEcgDao;

import jiance0603.Jiance0603;
import net.sf.json.JSONArray;
import xbq_0603.Xboqi_0603;
import xbq_0603.Xbq_0603MCRFactory;

public class LoadEcgMsgServlet extends HttpServlet{

	public void service(HttpServletRequest request,HttpServletResponse response)
			throws IOException{
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		PrintWriter out = response.getWriter();
		System.out.println("uri:" + uri);
		String action = uri.substring(uri.lastIndexOf("/"),
					uri.lastIndexOf("."));
		System.out.println("action:" + action);
		
		if("/loadJianCe".equals(action)) {
			JianCe jiance = new JianCe();
			//获取p_id
			int p_id = Integer.parseInt(request.getParameter("p_id"));
			try {
				JianCeDao dao  = new JianCeDao();
				jiance = dao.findAllByPid(p_id);
				
				JSONArray json = JSONArray.fromObject(jiance);
				String jsonStr = json.toString();
				System.out.println("检测查询结果："+jsonStr);
				out.println(jsonStr);
			} catch (Exception e) {
				e.printStackTrace();
			}

			
		}else if("/loadLvBo".equals(action)) {
			/*
			 * 返回某人滤波后的信息
			 */
			LvBo lvbo = new LvBo();
			//获取p_id
			int p_id = Integer.parseInt(request.getParameter("p_id"));
			try {
				LvboDao dao = new LvboDao();
				lvbo = dao.findAllByPid(p_id);
				
				JSONArray json = JSONArray.fromObject(lvbo);
				String jsonStr = json.toString();
				System.out.println("滤波查询结果："+jsonStr);
				out.println(jsonStr);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if("/load".equals(action)) {
			/*
			 * 点击原始图像，滤波，检测等出现图像
			 */
			List<ShiCe> ecgMsg = null;
			try {
				ShiCeEcgDao dao = new ShiCeEcgDao();
				int p_id = Integer.parseInt(request.getParameter("p_id"));
				ecgMsg = dao.findShiByPersonId(p_id);
				
				JSONArray json = JSONArray.fromObject(ecgMsg);
				String jsonStr = json.toString();
				System.out.println(jsonStr);
				out.println(jsonStr);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if("/saveJianCe".equals(action)) {
			/*
			 * 保存检测后的数据
			 */
			
			//String p1 = "F:\\mat\\6";
			//String p2 = "F:\\mat\\7";
			//String matfile="F:/ecg103lvbo.mat";
			
			//图片名字
			String p1 = request.getParameter("p1");//保存路径
			String p2 = request.getParameter("p2");
			//图片路径
			String p1path =  request.getSession().getServletContext().getRealPath("/ecgPicture/jiance/"+p1+".png");
			String p2path =  request.getSession().getServletContext().getRealPath("/ecgPicture/jiance/"+p2+".png");
			//String p1path =  "F:/ecg/ecgPicture/jiance/"+p1+".png";
			//String p2path =  "F:/ecg/ecgPicture/jiance/"+p2+".png";
			System.out.println("p1path:"+p1path);			
			System.out.println("p2path:"+p2path);
			//文件名字
			String filename=request.getParameter("filename"); 
			//文件路径
			String matFile = request.getSession().getServletContext().getRealPath("/file/jiance/"+filename+".mat");
			System.out.println("filename:"+filename);
			//person的id
			int p_id = Integer.parseInt(request.getParameter("p_id"));
			
			System.out.println("p_id:"+p_id);
			System.out.println("不知道是啥："+request.getSession().getServletContext());
			System.out.println("项目路径："+request.getContextPath());
			
			Jiance0603 jiance;
			try {
				jiance = new Jiance0603();
				Object[] result = jiance.jiance0603(3,matFile,p1path,p2path);
				
				JianCe jc = new JianCe();
				JianCeDao dao = new JianCeDao();
				jc.setP_id(p_id);
				jc.setImg_path("ecgPicture/jiance/"+p2+".png");
				jc.setP2("ecgPicture/jiance/"+p1+".png");
				//jc.setImg_path(p1path);
				//jc.setP2(p2path);
				jc.setHeart_rate(result[1].toString());
				jc.setR_number(result[2].toString());
				jc.setR_r(result[0].toString());
				dao.savePicMsg(jc);
				
				//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				//rd.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if("/saveLvBo".equals(action)) {
			/*
			 * 保存滤波后的数据
			 */
			//图片名字
			String p1 = request.getParameter("p1");//保存路径
			String p2 = request.getParameter("p2");
			String p3 = request.getParameter("p3");//保存路径
			String p4 = request.getParameter("p4");
			//图片路径
			String p1path =  request.getSession().getServletContext().getRealPath("/ecgPicture/lvbo/"+p1+".png");
			String p2path =  request.getSession().getServletContext().getRealPath("/ecgPicture/lvbo/"+p2+".png");
			String p3path =  request.getSession().getServletContext().getRealPath("/ecgPicture/lvbo/"+p3+".png");
			String p4path =  request.getSession().getServletContext().getRealPath("/ecgPicture/lvbo/"+p4+".png");
			//String p1path =  "F:/ecg/ecgPicture/lvbo/"+p1+".png";
			//String p2path =  "F:/ecg/ecgPicture/lvbo/"+p2+".png";
			//String p3path =  "F:/ecg/ecgPicture/lvbo/"+p3+".png";
			//String p4path =  "F:/ecg/ecgPicture/lvbo/"+p4+".png";
			System.out.println("p1path:"+p1path);			
			System.out.println("p2path:"+p2path);
			System.out.println("p3path:"+p3path);			
			System.out.println("p4path:"+p4path);
			//文件名字
			String filename=request.getParameter("filename"); 
			//文件路径
			String txtFile = request.getSession().getServletContext().getRealPath("/file/txt/"+filename+".txt");
			System.out.println("filename:"+filename);
			//文件包含的点数
			double pointCount = Double.parseDouble(request.getParameter("pointCount"));
			System.out.println(pointCount);
			//person的id
			int p_id = Integer.parseInt(request.getParameter("p_id"));
			System.out.println("p_id:"+p_id);
			System.out.println("项目路径："+request.getContextPath());
			
			//Xbq0520 lvbo;
			Xboqi_0603 lvbo;
			try {
				lvbo = new Xboqi_0603();
				Object[] result = lvbo.xbq_0603(2,txtFile,pointCount, p1path,p2path,p3path,p4path);
				
				LvBo lvboo = new LvBo();
				LvboDao dao = new LvboDao();
				lvboo.setP_id(p_id);
				lvboo.setSnr(result[0].toString());
				lvboo.setMse(result[1].toString());
				lvboo.setP1("ecgPicture/lvbo/"+p1+".png");
				lvboo.setP2("ecgPicture/lvbo/"+p2+".png");
				lvboo.setP3("ecgPicture/lvbo/"+p3+".png");
				lvboo.setP4("ecgPicture/lvbo/"+p4+".png");
				dao.saveLvBo(lvboo);

				//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				//rd.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		out.close();
		
	}
	

}

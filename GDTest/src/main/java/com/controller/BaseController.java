package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;

public class BaseController<E>{

	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected HttpSession session;
	protected int pageNo;
	protected int pageSize;
	
	@ModelAttribute
	public void setReqAndRes(HttpServletRequest request,
			HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.session = request.getSession();
		this.pageNo = (null == request.getParameter("page")||request.getParameter("page").equals("")) ? 1 :Integer.parseInt(request.getParameter("page"));
		this.pageSize = (null == request.getParameter("rows")||request.getParameter("rows").equals("")) ? 10 :Integer.parseInt(request.getParameter("rows"));
	}
	
}

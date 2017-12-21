package com.blog.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.blog.model.Manager;
import com.blog.model.Topic;
import com.blog.service.ManagerService;
import com.blog.service.ManagerServiceImpl;
import com.blog.service.TopicService;
import com.blog.utils.Out;

@Controller
public class LoginController {
//	@Autowired
//	private ManagerService managerservice = new ManagerServiceImpl();
	@Autowired
	private ManagerService managerservice;
	
	/*
	 * Login
	 */
	@RequestMapping(value="/login")
	public String Login(){
		return "login";
	}
	
	/*
	 * Login
	 */
	@RequestMapping(value="/unlogin")
	public String UnLogin(){
		return "admin/unlogin";
	}
	
	/*
	 * Login
	 */
	@RequestMapping(value="/logout")
	public String Logout(HttpSession session){
		session.removeAttribute("BlogManagerId");
		session.removeAttribute("BlogManagerAccount");
		session.removeAttribute("BlogManagerManagerName");
		return "login";
	}
	
	/*
	 * Logining
	 */
	@RequestMapping(value="logining")
	public void Logining(HttpServletRequest request,HttpServletResponse response,HttpSession session,
			@RequestParam(value="account")String account,@RequestParam(value="password")String password) throws ServletException, IOException{
		Manager manager = new Manager();
		manager.setAccount(account);
		manager.setPassword(password);
		Out.println("manager");
		Out.println(manager);
		
		Manager manager2 = managerservice.GetManagerByAccount(account);
		Out.println("manager2");
		Out.println(manager2);
		
		boolean result = managerservice.VerifiedManager(manager, manager2);
		
		String pageName = "admin";
		if(result){
			session.setAttribute("BlogManagerId", manager2.getManagerId());
			session.setAttribute("BlogManagerAccount", manager2.getAccount());
			session.setAttribute("BlogManagerManagerName", manager2.getManagerName());
		}else{
			session.removeAttribute("BlogManagerId");
			session.removeAttribute("BlogManagerAccount");
			session.removeAttribute("BlogManagerManagerName");
			pageName = "login";
		}
		response.sendRedirect(pageName);
	}
}

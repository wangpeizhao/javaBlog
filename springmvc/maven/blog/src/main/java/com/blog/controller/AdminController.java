package com.blog.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.blog.model.Newsinfo;
import com.blog.model.Topic;
import com.blog.service.TopicService;
import com.blog.utils.Out;
import com.blog.utils.TimeFormat;

@Controller
public class AdminController {
	
	@Autowired
	private TopicService topicService;
	
	private HttpSession session;
	
	/*
	 * admin
	 */
	@RequestMapping(value="/admin")
	public String admin(){
		return "admin/index";
	}
	
	/*
	 * admin
	 */
	@RequestMapping(value="/admin/add")
	public ModelAndView adminAdd(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("title", "Add News");
		
		List<Topic> topicLists = topicService.getTopicLists();

		mav.addObject("topicLists",topicLists);
		
		mav.setViewName("admin/add");
		return mav;
	}
	
	/*
	 * 添加新闻
	 * Parker
	 */
	@RequestMapping(value="/admin/doAdd",method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String,String> doAdd(@RequestBody Newsinfo newsinfo,HttpServletRequest request) throws ParseException{
		Out.println("newsinfo");
		//设置管理ID和新增时间
		HttpSession session = request.getSession();
		Out.println("系统已登录ID："+session.getAttribute("BlogManagerId"));
		Integer uid = (Integer)session.getAttribute("BlogManagerId");
		newsinfo.setAuthorId(uid);
		newsinfo.setCreatedate(TimeFormat.getCurrentDateTime());
		
		Out.println(newsinfo);
		return null;
		
//		HashMap<String,String[]> postData = new HashMap<String,String[]>();
//		postData = (HashMap<String, String[]>) request.getParameterMap();
//		
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("title", "Add News");
//		
//		List<Topic> topicLists = topicService.getTopicLists();
//
//		mav.addObject("topicLists",topicLists);
//		
//		mav.setViewName("admin/add");
//		return mav;
	}
}

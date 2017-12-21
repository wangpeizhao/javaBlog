package com.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blog.model.Topic;
import com.blog.service.TopicService;

@Controller
public class AdminController {
	
	@Autowired
	private TopicService topicService;
	
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
	 * admin
	 */
	@RequestMapping(value="/admin/doAdd")
	public ModelAndView doAdd(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("title", "Add News");
		
		List<Topic> topicLists = topicService.getTopicLists();

		mav.addObject("topicLists",topicLists);
		
		mav.setViewName("admin/add");
		return mav;
	}
}

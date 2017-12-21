package com.blog.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blog.model.Topic;
import com.blog.service.TopicService;
import com.blog.utils.Out;

@Controller
public class HomeController {

	
	@Autowired
	private TopicService topicService;
	
	
	@RequestMapping(value = "/")
	public ModelAndView HomePage(HttpServletRequest request,HttpServletResponse response){
		Out.println("Server starting");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("title", "My First Spring MVC");
		
		List<Topic> topicLists = topicService.getTopicLists();
		
		ArrayList<String> lists = new ArrayList<String>();
		for(int i=0;i<10;i++){
			lists.add(i+"");
		}

		mav.addObject("topicLists",topicLists);
		mav.addObject("lists",lists);
		
		mav.setViewName("home");
		return mav;
	}
}

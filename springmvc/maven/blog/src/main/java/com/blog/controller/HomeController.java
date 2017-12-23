package com.blog.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blog.model.Newsinfo;
import com.blog.model.Topic;
import com.blog.service.NewsinfoService;
import com.blog.service.TopicService;
import com.blog.utils.Out;

@Controller
public class HomeController {

	@Autowired
	private NewsinfoService newsinfoService;
	
	@Autowired
	private TopicService topicService;
	
	
	@RequestMapping(value = "/")
	public ModelAndView HomePage(HttpServletRequest request,HttpServletResponse response){
		Out.println("Server starting");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("title", "My First Spring MVC");
		
		int page = 1;
		int pageSize = 20;
		
		//NewsinfoLists
		List<Newsinfo> newsinfoLists = newsinfoService.getNewsinfoLists(page,pageSize);
		mav.addObject("newsinfoLists",newsinfoLists);
		
		//NewsinfoLists
		List<Newsinfo> newsinfoListsGroupByTopic = newsinfoService.getNewsinfoListsGroupByTopic(4);
		
//		ArrayList<HashMap<String,Object>> listsGroupByTopic = new ArrayList<HashMap<String,Object>>();
		HashMap<Integer,Object> hp=new HashMap<Integer,Object>();
		if(newsinfoListsGroupByTopic.size()>0){
			for(Newsinfo k:newsinfoListsGroupByTopic){
				Integer topicId = k.getTopicId();
				if(!hp.containsKey(topicId)){
					ArrayList<Newsinfo> lt = new ArrayList<Newsinfo>();
					lt.add(k);
					hp.put(topicId, lt);
				}else{
					@SuppressWarnings("unchecked")
					ArrayList<Newsinfo> lt = (ArrayList<Newsinfo>) hp.get(topicId);
					lt.add(k);
					hp.put(topicId, lt);
				}
			}
		}
//		Out.println(hp.get(1));
		
		mav.addObject("newsinfoListsGroupByTopic",hp);
		
		//Topic
		List<Topic> topicLists = topicService.getTopicLists();
		mav.addObject("topicLists",topicLists);
		HashMap<Integer,String> topic=new HashMap<Integer,String>();
		if(topicLists.size()>0){
			for(Topic k:topicLists){
				int tid = k.getTopicId();
				topic.put(tid, k.getTopicName());
			}
		}
		mav.addObject("topics",topic);
//		Out.println(topic);
		
		//Test
		ArrayList<String> lists = new ArrayList<String>();
		for(int i=0;i<10;i++){
			lists.add(i+"");
		}
		mav.addObject("lists",lists);
		
		mav.setViewName("home");
		return mav;
	}
}

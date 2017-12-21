package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.dao.TopicMapper;
import com.blog.model.Topic;

@Service("TopicService")
public class TopicServiceImpl implements TopicService {
	
	@Autowired
	private TopicMapper topicMapper;
	
	@Override
	public List<Topic> getTopicLists(){
		
		List<Topic> lists = topicMapper.getTopicLists();
		return lists;
		
	}
}

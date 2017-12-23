package com.blog.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blog.model.Topic;

@Service("TopicService")
public interface TopicService {
	public List<Topic> getTopicLists();
}

package com.blog.dao;

import java.util.List;

import com.blog.model.Topic;

public interface TopicMapper {
	
	/*
	 * 读取new topic列表
	 */
	public List<Topic> getTopicLists();
	
}

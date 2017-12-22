package com.blog.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blog.model.Newsinfo;

@Service("NewsinfoServic")
public interface NewsinfoService {
	
	public List<Newsinfo> getNewsinfoLists(int page,int pageSize);
	
	//每个topic读取rows条记录
	public List<Newsinfo> getNewsinfoListsGroupByTopic(int rows);
	
}

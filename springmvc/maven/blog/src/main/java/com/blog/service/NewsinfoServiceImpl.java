package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.dao.NewsinfoMapper;
import com.blog.model.Newsinfo;

@Service("NewsinfoService")
public class NewsinfoServiceImpl implements NewsinfoService{
	
	@Autowired
	private NewsinfoMapper newsinfoMapper;
	
	@Override
	public List<Newsinfo> getNewsinfoLists(int page,int pageSize){
		List<Newsinfo> newsinfoLists = newsinfoMapper.getNewsinfoLists(page, pageSize);
		return newsinfoLists;
	}

	@Override
	public List<Newsinfo> getNewsinfoListsGroupByTopic(int rows){
		List<Newsinfo> newsinfoLists = newsinfoMapper.getNewsinfoListsGroupByTopic(rows);
		return newsinfoLists;
	}
}

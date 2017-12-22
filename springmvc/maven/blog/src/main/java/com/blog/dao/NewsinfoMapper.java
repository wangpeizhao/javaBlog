package com.blog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blog.model.Newsinfo;

public interface NewsinfoMapper {
	
	
	
    int deleteByPrimaryKey(Integer newsId);

    int insert(Newsinfo record);

    int insertSelective(Newsinfo record);

    Newsinfo selectByPrimaryKey(Integer newsId);

    int updateByPrimaryKeySelective(Newsinfo record);

    int updateByPrimaryKeyWithBLOBs(Newsinfo record);

    int updateByPrimaryKey(Newsinfo record);
    
    public List<Newsinfo> getNewsinfoLists(@Param(value = "page") int page,@Param(value = "pageSize") int pageSize);
    
    public List<Newsinfo> getNewsinfoListsGroupByTopic(@Param(value = "rows") int rows);
}
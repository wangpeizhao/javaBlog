package com.blog.dao;

import com.blog.model.Newsinfo;

public interface NewsinfoMapper {
    int deleteByPrimaryKey(Integer newsId);

    int insert(Newsinfo record);

    int insertSelective(Newsinfo record);

    Newsinfo selectByPrimaryKey(Integer newsId);

    int updateByPrimaryKeySelective(Newsinfo record);

    int updateByPrimaryKeyWithBLOBs(Newsinfo record);

    int updateByPrimaryKey(Newsinfo record);
}
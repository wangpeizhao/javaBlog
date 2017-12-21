package com.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.dao.ManagerMapper;
import com.blog.model.Manager;
import com.blog.service.ManagerService;
import com.blog.utils.Out;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	private ManagerMapper managerpadder;
	
	@Override
	public Manager GetManagerByAccount(String account){
		Manager manager = managerpadder.GetManagerByAccount(account);
		return manager;
	}
	
	@Override
	public Boolean VerifiedManager(Manager m1,Manager m2){
		if(m2 == null){
			Out.println("读取管理员数据失败");
			return false;
		}
		if(m1.getAccount().equals(m2.getAccount()) && m1.getPassword().equals(m2.getPassword())){
			return true;
		}
		return false;
	}
}

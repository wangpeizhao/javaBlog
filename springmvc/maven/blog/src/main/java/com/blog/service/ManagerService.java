package com.blog.service;

import org.springframework.stereotype.Service;

import com.blog.model.Manager;

@Service("managerService")
public interface ManagerService {
	public Manager GetManagerByAccount(String account);
	public Boolean VerifiedManager(Manager m1,Manager m2);
}

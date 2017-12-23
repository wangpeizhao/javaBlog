package com.blog.service;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.dao.ManagerMapper;
import com.blog.model.Manager;
import com.blog.service.ManagerService;
import com.blog.utils.Encrypt;
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
		String psw1 = null;
		try {
			psw1 = Encrypt.Md5(m1.getPassword());
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String psw2 = m2.getPassword();
		if(m1.getAccount().equals(m2.getAccount()) && psw1.equals(psw2)){
			return true;
		}
		return false;
	}
}

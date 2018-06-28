package com.xyf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xyf.mapper.AdminMapper;
import com.xyf.mapper.UserMapper;
import com.xyf.pojo.Admin;
import com.xyf.utils.CommonUtils;

import redis.clients.jedis.Protocol.Command;

@Service
public class AdminService extends BaseService<Admin>{

    @Autowired
    private AdminMapper adminMapper;
	
    /**
     * 检查账号密码的方法
     * @param account
     * @param password
     * @return
     */
    public Admin checkPassword(String name,String password)
    {
    	//先判断值是否为空
    	if(CommonUtils.isEmpty(name)||CommonUtils.isEmail(password))
    	{
    		return null;
    		
    	}
    	//开始登陆
    	else
    	{
    	Admin admin=new Admin();
    	admin.setName(name);
    	admin.setPassword(password);
        admin=selectOne(admin);
    	if(admin!=null)
    	{
    		return admin;
    	}
		return null;
    	}
    	
    }

	public List<Admin> select(Admin admin) {
       
		return adminMapper.select(admin);
		
	}
	
	
	
}

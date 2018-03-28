package com.xyf.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xyf.mapper.UserMapper;
import com.xyf.pojo.Admin;
import com.xyf.pojo.User;
import com.xyf.utils.CommonUtils;

@Service
public class UserService extends BaseService<User>{

    @Autowired
    private UserMapper userMapper;

    public int insert(User user) {
        return userMapper.insert(user);
    }

    public User checkPassword(String name,String password)
    {
    	//先判断值是否为空
    	if(CommonUtils.isEmpty(name)||CommonUtils.isEmail(password))
    	{
    		return null;
    		
    	}
    	//开始登陆
    	else
    	{
    		User user=new User();
    		user.setPhone(name);
    		user.setPassword(password);
    		user=selectOne(user);
    		
    	if(user!=null)
    	{
    		return user;
    	}
    	
    	
		return null;
    	}
    	
    }

	
}

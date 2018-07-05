package com.xyf.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
    public PageInfo<User> search(int pageNum, int pageSize, Map<String, Object> params) {
        PageHelper.startPage(pageNum, pageSize);//注意pageNum表示页码，从1开始
        List<User> list = userMapper.search(params);
        return new PageInfo<User>(list);
    }
    public User checkPassword(String name,String password)
    {
    	//鍏堝垽鏂�兼槸鍚︿负绌�
    	if(CommonUtils.isEmpty(name)||CommonUtils.isEmail(password))
    	{
    		return null;
    		
    	}
    	//寮�濮嬬櫥闄�
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

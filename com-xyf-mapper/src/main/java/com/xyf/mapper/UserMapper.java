package com.xyf.mapper;

import java.util.List;
import java.util.Map;

import com.xyf.pojo.User;

public interface UserMapper  extends IMapper<User> {

	 //可根据注册时间、姓名、邮箱、手机等进行模糊查询
    public List<User> search(Map<String, Object> params);
	

}

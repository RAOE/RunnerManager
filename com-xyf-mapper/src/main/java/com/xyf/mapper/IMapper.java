package com.xyf.mapper;

import java.util.List;
/**
 * 通用的mapper接口大家都可以继承
 * @author Ray
 *
 * @param <T>
 */
public interface IMapper<T>{

	
	    int insert(T pojo);

	    int update(T pojo); //根据id更新

	    int delete(Long id); //根据id删除

	    int delete(T pojo); //根据对象删除，方法重载


	    
	    List<T> select(T pojo); //以非空字段值作为查询条件进行查询
	


	    
}

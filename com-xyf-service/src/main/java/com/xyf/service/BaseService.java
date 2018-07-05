package com.xyf.service;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xyf.mapper.IMapper;

public class BaseService<T> {

    //可以自动根据泛型T的具体值注入对应的mapper！！！比如如果T是Subject，那么注入的mapper就是SubjectMapper的对象
    @Autowired
    private IMapper<T> mapper;

    //创建第一个泛型类的对象并设置id字段的值
    @SuppressWarnings("all")
    protected T createInstanceAndSetIdOfFirstGeneric(Long id) {
        //为了避免错误的将id设为null时把整张表都删除，在此检查
        if (id == null) {
            throw new RuntimeException("id不能为null");
        }
        try {
            //通过反射创建泛型类对象并调用其setId方法设置id字段值
            ParameterizedType type = (ParameterizedType) getClass().getGenericSuperclass();
            Class clazz = (Class) type.getActualTypeArguments()[0];
            T t = (T) clazz.newInstance();
            clazz.getDeclaredMethod("setId", Long.class).invoke(t, id);
            return t;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    public int insert(T pojo) {
        return mapper.insert(pojo);
    }

    public int update(T pojo) {
        return mapper.update(pojo);
    }

    public int delete(Long id) {
        
    	return mapper.delete(id);
    }
    
    public int delete(T pojo) {
        
    	return mapper.delete(pojo);
    }


    /**
     *没有查询条件，表示查询全部
     */
    public List<T> selectList() {
        return mapper.select(null);
    }

    public List<T> selectList(T pojo) {
        return mapper.select(pojo);
    }

    /**
     *
     * @param pojo
     * @param orderBy  排序规则，直接写如"age asc,name desc"
     * @return
     */
    public List<T> selectList(T pojo, String orderBy) {
        PageHelper.orderBy(orderBy);
        return mapper.select(pojo);
    }

    /**
     * 如果查询出多于1个结果，则抛出RuntimeException
     */
    public T selectOne(T pojo) {
        List<T> list = mapper.select(pojo);
        if (list == null || list.size() == 0) {
            return null;
        }
        if (list.size() > 1) {
            throw new RuntimeException("selectOne方法查询出了多于1个结果");
        }
        return list.get(0);
    }

    public T selectOne(Long id) {

        T pojo = createInstanceAndSetIdOfFirstGeneric(id);

        List<T> list = mapper.select(pojo);
        if (list == null || list.size() == 0) {
            return null;
        }
        if (list.size() > 1) {
            throw new RuntimeException("selectOne方法查询出了多于1个结果");
        }
        return list.get(0);
    }

 

    //判断是否已经存在
    public boolean isExisted(T pojo) {
        List<T> list = mapper.select(pojo);
        return list != null && list.size() > 0;
    }
/**
 * pagehelper插件 定义页码 分页大小  对象
 * @param pageNum
 * @param pageSize
 * @param pojo
 * @return
 */
    public PageInfo<T> page(int pageNum, int pageSize, T pojo) {
        PageHelper.startPage(pageNum, pageSize);//注意pageNum表示页码，从1开始
        List<T> list = mapper.select(pojo);//正常执行自己的Mapper的查询方法
        return new PageInfo<T>(list);
    }

    public PageInfo<T> page(int pageNum, int pageSize, T pojo, String orderBy) {
        PageHelper.startPage(pageNum, pageSize);//注意pageNum表示页码，从1开始
        PageHelper.orderBy(orderBy);
        List<T> list = mapper.select(pojo);//正常执行自己的Mapper的查询方法
        return new PageInfo<T>(list);
    }

    
    
    
}

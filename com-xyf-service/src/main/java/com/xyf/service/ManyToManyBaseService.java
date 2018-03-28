package com.xyf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.xyf.mapper.IManyToManyMapper;
import com.xyf.pojo.ProjectUser;


public class ManyToManyBaseService<T, F, S> extends BaseService<T> {

    @Autowired
    private IManyToManyMapper<T, F, S> manyToManyMapper;

    public int deleteByFirstId(long firstId) {
        return manyToManyMapper.deleteByFirstId(firstId);
    }

    public int deleteBySecondId(long secondId) {
        return manyToManyMapper.deleteBySecondId(secondId);
    }

    public List<F> selectFirstListBySecondId(Long secondId) {
        return manyToManyMapper.selectFirstListBySecondId(secondId);
    }

    public F selectFirstOneBySecondId(Long projectId) {
        List<F> list = manyToManyMapper.selectFirstListBySecondId(projectId);
        if (list == null || list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

    public List<S> selectSecondListByFirstId(Long id) {
        return manyToManyMapper.selectSecondListByFirstId(id);
    }
    
  
    public S selectSecondOneByFirstId(Long firstId) {
        List<S> list = manyToManyMapper.selectSecondListByFirstId(firstId);
        if (list == null || list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

  

}

package com.xyf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xyf.mapper.IMapper;
import com.xyf.mapper.UserScoreMapper;
import com.xyf.pojo.Project;
import com.xyf.pojo.UserScore;
@Service
public class UserScoreService extends BaseService<UserScore>{
    
    @Autowired
	private UserScoreMapper userScoremapper;


	   public List<UserScore> selectAll(UserScore userScore)
	   {
	        return userScoremapper.selectAll(userScore);
	    }

	    public List<UserScore> selectLast(UserScore userScore) {
        
		return userScoremapper.selectLast(userScore);
	}

		public List<Project> selectProject(UserScore userScore) {
			
			return userScoremapper.selectProject(userScore);

		}

	
	
}

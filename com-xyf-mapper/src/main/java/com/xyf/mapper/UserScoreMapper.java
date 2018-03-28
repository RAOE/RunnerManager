package com.xyf.mapper;

import java.util.List;

import com.xyf.pojo.Project;
import com.xyf.pojo.UserScore;

public interface UserScoreMapper extends IMapper<UserScore>{

	List<UserScore> selectAll(UserScore userScore);

	List<UserScore> selectLast(UserScore userScore);

	List<Project> selectProject(UserScore userScore);	
	
	
	
	
}

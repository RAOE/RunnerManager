package com.xyf.service;

import org.springframework.stereotype.Service;

import com.xyf.pojo.Project;
import com.xyf.pojo.ProjectUser;
import com.xyf.pojo.User;

@Service
public class ProjectUserSerivce extends ManyToManyBaseService<ProjectUser, Project, User>
{
	


}

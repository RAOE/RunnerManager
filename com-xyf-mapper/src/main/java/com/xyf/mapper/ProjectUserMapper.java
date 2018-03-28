package com.xyf.mapper;

import com.xyf.pojo.Project;
import com.xyf.pojo.ProjectUser;
import com.xyf.pojo.User;

public interface ProjectUserMapper extends IManyToManyMapper<ProjectUser, Project, User>{

}

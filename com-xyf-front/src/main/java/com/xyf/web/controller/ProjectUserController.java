package com.xyf.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xyf.pojo.Project;
import com.xyf.pojo.ProjectUser;
import com.xyf.pojo.User;
import com.xyf.pojo.UserScore;
import com.xyf.service.ProjectUserSerivce;
import com.xyf.service.UserScoreService;
import com.xyf.service.UserService;
import com.xyf.utils.AjaxResult;
@Controller
@RequestMapping("/projectUser")
public class ProjectUserController {
@Autowired
private ProjectUserSerivce projectUserSerivce;	
@Autowired
private UserService userService;
@Autowired
private UserScoreService userScoreService;


/**
 * 显示项目中的成员
 * @return
 */
  @RequestMapping("/update.do")
  public ModelAndView update(Long projectId,HttpServletRequest request,HttpServletResponse response)
  {
	  //根据当前的id查询出当前项目的所有运动员
	  //查询中间表
	   ModelAndView modelAndView=new ModelAndView("projectUser/update");
       List<User> userList=projectUserSerivce.selectSecondListByFirstId(projectId);	  
	   modelAndView.addObject("userList",userList);
       request.setAttribute("projectId", projectId);	   
	   return modelAndView;
	
  }

  /**
   * 返回比赛成员的添加页面
   * @param projectId
   * @param request
   * @param response
   * @return
   */
  @RequestMapping("/add.do")
  public ModelAndView add(String projectId,HttpServletRequest request,HttpServletResponse response)
  {
	  /**
	   * 遍历当前的所有成员
	   */
	  ModelAndView modelAndView=new ModelAndView("/projectUser/add");
	  List<User> userList = userService.selectList();
      System.out.println(userList.toString());
	  modelAndView.addObject("userList",userList);
      request.setAttribute("projectId", projectId);	   

      //需要添加项目的id     
 	  return modelAndView; 
	  
  }
  /**
   * 用于删除项目中的成员
   * @param projectId
   * @param request
   * @param response
   * @return
   */
  @RequestMapping("/delete.do")
  public @ResponseBody AjaxResult delete(Long id,Long projectId,HttpServletRequest request,HttpServletResponse response)
  {
	  /**
	   * 移除项目中的比赛成员
	   */  
	  
	  //根据用户的id以及项目id找到对应列并且删除
	 ProjectUser projectUser=new ProjectUser();
	 projectUser.setProjectid(projectId);
	 projectUser.setUserid(id);
	 projectUserSerivce.delete(projectUser);
	  
	  
	  
 	 return AjaxResult.successInstance("删除成功"); 
	  
  }
  
  
  
  /**
   * 将运动员添加到比赛项目中
   * @param request
   * @param response
   * @return
   */
  @RequestMapping("/addSubmit.do")
  public @ResponseBody AjaxResult  addSubmit(Long projectId,Long id)
  {
	  
	  //转换String为int
	  
	  if(id==0)
	  {
	      return new AjaxResult().errorInstance("添加失败");
		  
	  }
	  //1判断该成员是否已经在项目中，如果已经存在则不能反复添加
/**
 * select u.* from t_usertoproject up left join t_project p on up.projectid = p.id 
   left join t_users u on u.id = up.userid where p.id = 2 and u.id = 1
 */
	  else
	  {
//		  User user=projectUserSerivce.selectSecondOneByFirstId(projectId2);
	  //1.如果成员已经存在则不能反复添加	  
		  
		  
	  //2..项目的id
	  //3...成员的id
	  //4....插入中间表
		  ProjectUser projectUser=new ProjectUser();
		  
		  projectUser.setUserid(id);
		  projectUser.setProjectid(projectId);
		  	  
		  System.out.println(projectUser.toString());
		   
		  
		  if(projectUserSerivce.isExisted(projectUser))
		  {
			  return AjaxResult.errorInstance("用户已经存在,请不要反复添加 ");
			  
		  }
		  else
		  {

		  
		  projectUserSerivce.insert(projectUser);  
	  

          return new AjaxResult().successInstance("添加成功");
		  }
	  }

  }
 /**
  * 用于跳转到成绩页面 
  * 1.显示裁判
  * 2.显示裁判的成绩
  * 3.显示运动员
  * 4.显示比赛项目
  * 5.显示比赛 
  * 
  * @return
  */
  /**
   * 
   * select us.score,
 u.name as user_name , a.name as admin_name ,p.name as project_name

from t_usertoscore  us 
left join t_users u on u.id = us.userId
left join t_project p on p.id = us.projectId
left join t_admin a on a.id =us.adminId  where us.isDeleted =0
   * @return
   */
    @RequestMapping(value="showallscore.do",method=RequestMethod.GET)
	public  ModelAndView score(Long projectId)
	{
	    //需要projectid
	    UserScore userScore= new UserScore();
	    userScore.setProjectId(projectId);
	    List<UserScore> userScoreList=userScoreService.selectAll(userScore);
	    //测试ok	   
	    ModelAndView modelAndView = new ModelAndView("/score/showscore");
		modelAndView.addObject("userScoreList",userScoreList);
	    
	    return modelAndView;

	}
   
   
    @RequestMapping(value="scoreUp.do",method=RequestMethod.POST)
   	public  @ResponseBody AjaxResult scoreUp(Long id)
   	{
    	
    	//当前的id
    	UserScore userScore = new UserScore();
    	userScore.setId(id);
    	userScoreService.delete(userScore);	
    	return AjaxResult.successInstance("审核通过");
  	
   	}
   
	
}

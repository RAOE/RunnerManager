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
 * 鏄剧ず椤圭洰涓殑鎴愬憳
 * @return
 */
  @RequestMapping("/update.do")
  public ModelAndView update(Long projectId,HttpServletRequest request,HttpServletResponse response)
  {
	   ModelAndView modelAndView=new ModelAndView("projectUser/update");
       List<User> userList=projectUserSerivce.selectSecondListByFirstId(projectId);	  
	   modelAndView.addObject("userList",userList);
       request.setAttribute("projectId", projectId);	   
	   return modelAndView;
	
  }

  /**
   * 杩斿洖姣旇禌鎴愬憳鐨勬坊鍔犻〉闈�
   * @param projectId
   * @param request
   * @param response
   * @return
   */
  @RequestMapping("/add.do")
  public ModelAndView add(String projectId,HttpServletRequest request,HttpServletResponse response)
  {
	  /**
	   * 閬嶅巻褰撳墠鐨勬墍鏈夋垚鍛�
	   */
	  ModelAndView modelAndView=new ModelAndView("/projectUser/add");
	  List<User> userList = userService.selectList();
      System.out.println(userList.toString());
	  modelAndView.addObject("userList",userList);
      request.setAttribute("projectId", projectId);	   

      //闇�瑕佹坊鍔犻」鐩殑id     
 	  return modelAndView; 
	  
  }
  /**
   * 鐢ㄤ簬鍒犻櫎椤圭洰涓殑鎴愬憳
   * @param projectId
   * @param request
   * @param response
   * @return
   */
  @RequestMapping("/delete.do")
  public @ResponseBody AjaxResult delete(Long id,Long projectId,HttpServletRequest request,HttpServletResponse response)
  {
	  /**
	   * 绉婚櫎椤圭洰涓殑姣旇禌鎴愬憳
	   */  
	  
	  //鏍规嵁鐢ㄦ埛鐨刬d浠ュ強椤圭洰id鎵惧埌瀵瑰簲鍒楀苟涓斿垹闄�
	 ProjectUser projectUser=new ProjectUser();
	 projectUser.setProjectid(projectId);
	 projectUser.setUserid(id);
	 projectUserSerivce.delete(projectUser);
	  
	  
	  
 	 return AjaxResult.successInstance("删除成功"); 
	  
  }
  
  
  
  /**
   * 灏嗚繍鍔ㄥ憳娣诲姞鍒版瘮璧涢」鐩腑
   * @param request
   * @param response
   * @return
   */
  @RequestMapping("/addSubmit.do")
  public @ResponseBody AjaxResult  addSubmit(Long projectId,Long id)
  {
	  
	  //杞崲String涓篿nt
	  
	  if(id==0)
	  {
	      return new AjaxResult().errorInstance("提交成功");
		  
	  }
	  //1鍒ゆ柇璇ユ垚鍛樻槸鍚﹀凡缁忓湪椤圭洰涓紝濡傛灉宸茬粡瀛樺湪鍒欎笉鑳藉弽澶嶆坊鍔�
/**
 * select u.* from t_usertoproject up left join t_project p on up.projectid = p.id 
   left join t_users u on u.id = up.userid where p.id = 2 and u.id = 1
 */
	  else
	  {
//		  User user=projectUserSerivce.selectSecondOneByFirstId(projectId2);
	  //1.濡傛灉鎴愬憳宸茬粡瀛樺湪鍒欎笉鑳藉弽澶嶆坊鍔�	  
		  
		  
	  //2..椤圭洰鐨刬d
	  //3...鎴愬憳鐨刬d
	  //4....鎻掑叆涓棿琛�
		  ProjectUser projectUser=new ProjectUser();
		  
		  projectUser.setUserid(id);
		  projectUser.setProjectid(projectId);
		  	  
		  System.out.println(projectUser.toString());
		   
		  
		  if(projectUserSerivce.isExisted(projectUser))
		  {
			  return AjaxResult.errorInstance("提交失败，账户已经存在");
			  
		  }
		  else
		  {

		  
		  projectUserSerivce.insert(projectUser);  
	  

          return new AjaxResult().successInstance("添加成功");
		  }
	  }

  }
 /**
  * 鐢ㄤ簬璺宠浆鍒版垚缁╅〉闈� 
  * 1.鏄剧ず瑁佸垽
  * 2.鏄剧ず瑁佸垽鐨勬垚缁�
  * 3.鏄剧ず杩愬姩鍛�
  * 4.鏄剧ず姣旇禌椤圭洰
  * 5.鏄剧ず姣旇禌 
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
	    //闇�瑕乸rojectid
	    UserScore userScore= new UserScore();
	    userScore.setProjectId(projectId);
	    List<UserScore> userScoreList=userScoreService.selectAll(userScore);
	    //娴嬭瘯ok	   
	    ModelAndView modelAndView = new ModelAndView("/score/showscore");
		modelAndView.addObject("userScoreList",userScoreList);
	    
	    return modelAndView;

	}
   
   
    @RequestMapping(value="scoreUp.do",method=RequestMethod.POST)
   	public  @ResponseBody AjaxResult scoreUp(Long id)
   	{
    	
    	//褰撳墠鐨刬d
    	UserScore userScore = new UserScore();
    	userScore.setId(id);
    	userScoreService.delete(userScore);	
    	return AjaxResult.successInstance("提交成功");
  	
   	}
   
	
}

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

import com.xyf.pojo.Admin;
import com.xyf.pojo.AdminScore;
import com.xyf.pojo.Project;
import com.xyf.pojo.User;
import com.xyf.pojo.UserScore;
import com.xyf.service.AdminScoreService;
import com.xyf.service.AdminService;
import com.xyf.service.ProjectService;
import com.xyf.service.UserScoreService;
import com.xyf.service.UserService;
import com.xyf.utils.AjaxResult;
import com.xyf.utils.CommonUtils;

@Controller
@RequestMapping("/adminUser")

public class AdminController {

	@Autowired
	private UserScoreService userScoreService;
	
	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;

	@Autowired
	private AdminScoreService adminScoreService;
	
	/**
	 * 用户的登陆
	 * @return
	 */
	@RequestMapping(value="login.do",method=RequestMethod.GET)
	public ModelAndView login()
	{
		return new ModelAndView("adminUser/login");	
	}
	/**
	 * 用户登陆提交 校验
	 * 账号统一采用  用户名
	 */
	@RequestMapping(value="login.do",method=RequestMethod.POST)
	public ModelAndView login(String name,String password,HttpServletRequest request)
	{
		
		
      String isUser=request.getParameter("user");
      //运动员登陆 
      if(isUser!=null)
	   {
		 User user =userService.checkPassword(name, password);
		 if(user!=null)
		  {
		 
			  System.out.println("运动员登录成功");
			  //成功后保存账号session全局保存
			  ModelAndView modelAndView =new ModelAndView("redirect:/");	      
		      request.getSession().setAttribute("user", user);
			  return modelAndView;	
		  }	
		 
		 
	   }
      else
      {
			
		
      //测试，查询所有
//	  List<Admin> ListAdmin=adminService.selectAll();
//	  System.out.println(ListAdmin.get(0).getName());
	  Admin adminUser= adminService.checkPassword(name, password);
	  if(adminUser!=null)
	  {
		  System.out.println("登录成功");
		  //成功后保存账号session全局保存
		  ModelAndView modelAndView =new ModelAndView("redirect:/");	      
	      request.getSession().setAttribute("adminUser", adminUser);
		  return modelAndView;	

	  }
	    ModelAndView modelAndView=new ModelAndView("adminUser/login");
	    modelAndView.addObject("message","账号密码错误");
	    
		return modelAndView;
	  	

	}
        ModelAndView modelAndView=new ModelAndView("adminUser/login");
	    modelAndView.addObject("message","账号密码错误");
	    
		return modelAndView;

	}
	
	@RequestMapping(value="adminscore.do")
	public ModelAndView adminscore(HttpServletRequest request,HttpServletResponse response)
	{
		
		ModelAndView modelAndView =new ModelAndView("adminUser/listscore");		
		AdminScore adminScore=new AdminScore();
		Admin admin=(Admin) request.getSession().getAttribute("adminUser");
		System.out.println("当前"+admin.getId());
		adminScore.setAdminId(admin.getId());
        List<AdminScore> AdminScoreList=adminScoreService.selectList(adminScore);
		
		modelAndView.addObject("AdminScoreList",AdminScoreList);
		return modelAndView;
		
		
	}
	
	
	
	
/**
 * 账号的登出
 * @param account 
 * @param password
 * @return
 */
	@RequestMapping(value="logout.do")
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response)
	{
		//销毁账户数据
		request.getSession().invalidate();
		ModelAndView modelAndView =new ModelAndView("adminUser/login");		
		return modelAndView;
	}
	
	
	/**
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value="evaluate.do",method=RequestMethod.GET)
	public ModelAndView evaluate(HttpServletRequest req,HttpServletResponse resp)
	{
			
		List<Admin>adminList=adminService.selectList();
   		ModelAndView modelAndView = new ModelAndView("user/listadmin");
   		modelAndView.addObject("adminList",adminList);   		
   		return modelAndView;
		
	}	

	/**
	 * 转到密码修改页面
	 * @param resp
	 * @param req
	 * @return
	 */

	
	@RequestMapping(value="updatePassword.do",method=RequestMethod.GET)
	public ModelAndView updatePassword(HttpServletResponse resp,HttpServletRequest req)
	{
		
		return new ModelAndView("adminUser/resetPassword");	
	}
	/**
	 * 密码修改提交
	 * @param resp
	 * @param req
	 * @return
	 */
	@RequestMapping("resetPassword.do")
	public @ResponseBody AjaxResult updatePasswordSubmit(
			String password,Long id,HttpServletResponse resp,
			HttpServletRequest req)
	{
			
		//根据管理员的id来修改当前的账户密码
		Admin admin=new Admin();
		admin.setId(id);
		admin=adminService.selectOne(admin);//以对象来查询
		System.out.println(admin.toString());
		//修改密码并提交
		admin.setPassword(password);			
		adminService.update(admin);
		
		
		
		
		return new AjaxResult().successInstance("提交成功,重新登陆生效");
		
	}
	
	/**
	 * 转到裁判添加界面
	 * @return
	 */
	@RequestMapping(value="add.do",method=RequestMethod.GET)
	public  ModelAndView add()
	{
		return new ModelAndView("/adminUser/add");
		
		
	}
	/**
	 * 新建裁判账号
	 * @return
	 */
	@RequestMapping(value="add.do",method=RequestMethod.POST)
	public  @ResponseBody AjaxResult addSubmit(HttpServletRequest request,HttpServletResponse response)
	{
		
		
		String role=request.getParameter("role");
        String name=request.getParameter("name");
		String password=request.getParameter("password");
		String description=request.getParameter("description");
		String phone=request.getParameter("phone");
		String realname=request.getParameter("realname");

		/*
		 * 校验
		 */
		if(CommonUtils.isEmpty(name)||CommonUtils.isEmpty(password)||CommonUtils.isEmpty(description)
				||CommonUtils.isEmpty(phone)||CommonUtils.isEmpty(realname))
		{
			return AjaxResult.errorInstance("请填写所有信息");
			
		}
		/*
		 * 不允许重复id
		 * 
		 */
        
		
		
		
		Admin admin=new Admin();
		admin.setName(name);
	    if(adminService.isExisted(admin))
	    {
	    	return AjaxResult.errorInstance("提交失败，账号已经存在");
	    }

		
		admin.setPassword(password);
		admin.setRealname(name);
		admin.setDescription(description);
		admin.setRealname(realname);
		admin.setPhone(phone);
        if(role!=null)//当前是裁判长
        {
    	   admin.setRoleid(true);
    	  
        }
        else
        {
     	   admin.setRoleid(false);
        	
        }
        
        
        
        
        
        
        adminService.insert(admin);
		System.out.println(admin.toString()+role);
		
		
		
        return AjaxResult.successInstance("提交成功");
		
	}
	
	/**
	 * 转到裁判审核成绩界面
	 * @return
	 */
		@RequestMapping("/score2.do")
		public ModelAndView score(HttpServletRequest request,HttpServletResponse response)
		{
	        
			
			List<Project> projectList=projectService.selectList();	
			request.setAttribute("projectList", projectList);
			//遍历当前项目的所有项目并且将项目保存在score里的select标签里
			
			return new ModelAndView("/adminUser/score2");
					
		}	
	
		/**
		 * 显示以通过的成绩的信息
		 * @param request
		 * @param response
		 * @return
		 */
		
		@RequestMapping("/showscore.do")
		public ModelAndView showscore(HttpServletRequest request,HttpServletResponse response)
		{
			ModelAndView modelAndView = new ModelAndView("/adminUser/listscore");

			 //需要projectid
		    UserScore userScore= new UserScore();
			String name=request.getParameter("project");
			Project project = new Project();

			project.setName(name);
			project=projectService.selectOne(project);
            System.out.println(project.toString());

		    userScore.setProjectId(project.getId());
            System.out.println(userScore.toString());

		    
		    
		    userScore=userScoreService.selectOne(userScore);
		    
		    List<UserScore> userScoreList=userScoreService.selectLast(userScore);
		    //测试ok	   
			modelAndView.addObject("userScoreList",userScoreList);
		    
			
		    return modelAndView;
			
					
		}
		  
	
	
	
}

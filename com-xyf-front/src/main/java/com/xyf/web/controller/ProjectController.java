package com.xyf.web.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.xyf.pojo.Project;
import com.xyf.pojo.User;
import com.xyf.service.ProjectService;
import com.xyf.service.ProjectUserSerivce;
import com.xyf.service.UserService;
import com.xyf.utils.AjaxResult;
import com.xyf.utils.CommonUtils;

@Controller
@RequestMapping("/project")

public class ProjectController {

@Autowired
private ProjectUserSerivce projectUserSerivce;

	
	
	
	    @InitBinder
	    protected void initBinder(WebDataBinder binder) {
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	        //参数true表示允许日期为空（null、""）
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	    }
	
	/**
	 * 遍历当前的比赛项目
	 * @return
	 */
	 @Autowired
     private ProjectService projectService;
	 
	 
	@RequestMapping("/list.do")
	public ModelAndView list(HttpServletRequest request,HttpServletResponse response)
	{
		
		//查询出所有的比赛项目
		List<Project> projectList=projectService.selectList();
		
		request.setAttribute("projectList", projectList);
		return new ModelAndView("/project/list");
	}
   
	/**
	 * 转到添加页面
	 * @return
	 */
	@RequestMapping(value="/add.do",method=RequestMethod.GET)
	public ModelAndView add()
	{
		return new ModelAndView("/project/add");
	}
	/**
	 * 添加一个新的项目
	 * @return
	 */
	@RequestMapping(value="add.do",method=RequestMethod.POST)
	public @ResponseBody AjaxResult addSubmit(Date beginTime,String name,String description,
			String location,String country)
	{
		
		//先判断添加的是否为空如果为空则返回失败
		if(CommonUtils.isEmpty(name)||CommonUtils.isEmpty(description)||CommonUtils.isEmpty(location)
				||CommonUtils.isEmpty(country))
		{
			return new AjaxResult().errorInstance("添加项目失败,请填写完整信息！");
			
		}
		else
		{
		Project project=new Project();
		project.setName(name);
		project.setBegintime(beginTime);
		project.setDescription(description);
		project.setCountry(country);
		project.setLocation(location);
		//插入数据库
		projectService.insert(project);
		
		
		
		
		System.out.println(project.toString());
		
        return AjaxResult.successInstance("比赛项目添加成功");
		}
	}
	
	@RequestMapping("/delete.do")
	public @ResponseBody AjaxResult delete(Long id)
	{
		System.out.println(id);
        projectService.delete(id);			
		return new  AjaxResult().successInstance("删除成功");
			
	}

	
	
/**
 * 转到比赛的得分界面
 * @return
 */
	@RequestMapping("/score.do")
	public ModelAndView score(HttpServletRequest request,HttpServletResponse response)
	{
        
		
		List<Project> projectList=projectService.selectList();	
		request.setAttribute("projectList", projectList);
		//遍历当前项目的所有项目并且将项目保存在score里的select标签里
		
		return new ModelAndView("/project/score");
				
	}
	
	/**
	 * 显示成绩的信息
	 * @param request
	 * @param response
	 * @return
	 */
	
	@RequestMapping("/showscore.do")
	public ModelAndView showscore(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView modelAndView = new ModelAndView("/score/listscore");

		String name=request.getParameter("project");
		//根据比赛的名称找到当前比赛的成绩
		
		
		Project project = new Project();
		project.setName(name);
		project=projectService.selectOne(project);
//		找到当前比赛的所有成绩信息
		List<User> userList=projectUserSerivce.selectSecondListByFirstId(project.getId());	  
		modelAndView.addObject("userList",userList);
       
//		System.out.println("当前"+project.getId());
	    request.setAttribute("projectId", project.getId());	
		
		
		
		return modelAndView;
		
				
	}
	
	/**
	 * 转到审核比赛成绩界面
	 * @return
	 */
	@RequestMapping(value="verify.do",method=RequestMethod.GET)
	public  ModelAndView verify()
	{
		/*
		 *  遍历当前项目
		 */
		
		//查询出所有的比赛项目
		List<Project> projectList=projectService.selectList();
		
		ModelAndView modelAndView = new ModelAndView("/project/list2");
		modelAndView.addObject("projectList",projectList);
		return modelAndView;
		
		
		
		
	}
	
	
	
	
	
}

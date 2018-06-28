package com.xyf.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	        //鍙傛暟true琛ㄧず鍏佽鏃ユ湡涓虹┖锛坣ull銆�""锛�
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	    }
	
	/**
	 * 閬嶅巻褰撳墠鐨勬瘮璧涢」鐩�
	 * @return
	 */
	 @Autowired
     private ProjectService projectService;
	 
	 
	@RequestMapping("/list.do")
	public ModelAndView list(HttpServletRequest request,HttpServletResponse response)
	{
		
		//鏌ヨ鍑烘墍鏈夌殑姣旇禌椤圭洰
		List<Project> projectList=projectService.selectList();
		
		request.setAttribute("projectList", projectList);
		return new ModelAndView("/project/list");
	}
   
	/**
	 * 杞埌娣诲姞椤甸潰
	 * @return
	 */
	@RequestMapping(value="/add.do",method=RequestMethod.GET)
	public ModelAndView add()
	{
		return new ModelAndView("/project/add");
	}
	/**
	 * 娣诲姞涓�涓柊鐨勯」鐩�
	 * @return
	 */
	@RequestMapping(value="add.do",method=RequestMethod.POST)
	public @ResponseBody AjaxResult addSubmit(Date beginTime,String name,String description,
			String location,String country)
	{
		
		//鍏堝垽鏂坊鍔犵殑鏄惁涓虹┖濡傛灉涓虹┖鍒欒繑鍥炲け璐�
		if(CommonUtils.isEmpty(name)||CommonUtils.isEmpty(description)||CommonUtils.isEmpty(location)
				||CommonUtils.isEmpty(country))
		{
			return new AjaxResult().errorInstance("娣诲姞椤圭洰澶辫触,璇峰～鍐欏畬鏁翠俊鎭紒");
			
		}
		else
		{
		Project project=new Project();
		project.setName(name);
		project.setBegintime(beginTime);
		project.setDescription(description);
		project.setCountry(country);
		project.setLocation(location);
		//鎻掑叆鏁版嵁搴�
		projectService.insert(project);
		
		
		
		
		System.out.println(project.toString());
		
        return AjaxResult.successInstance("姣旇禌椤圭洰娣诲姞鎴愬姛");
		}
	}
	
	@RequestMapping("/delete.do")
	public @ResponseBody AjaxResult delete(Long id)
	{
		System.out.println(id);
        projectService.delete(id);			
		return new  AjaxResult().successInstance("鍒犻櫎鎴愬姛");
			
	}

	
	
/**
 * 杞埌姣旇禌鐨勫緱鍒嗙晫闈�
 * @return
 */
	@RequestMapping("/score.do")
	public ModelAndView score(HttpServletRequest request,HttpServletResponse response)
	{
        
		
		List<Project> projectList=projectService.selectList();	
		request.setAttribute("projectList", projectList);
		//閬嶅巻褰撳墠椤圭洰鐨勬墍鏈夐」鐩苟涓斿皢椤圭洰淇濆瓨鍦╯core閲岀殑select鏍囩閲�
		
		return new ModelAndView("/project/score");
				
	}
	
	/**
	 * 鏄剧ず鎴愮哗鐨勪俊鎭�
	 * @param request
	 * @param response
	 * @return
	 */
	
	@RequestMapping("/showscore.do")
	public ModelAndView showscore(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView modelAndView = new ModelAndView("/score/listscore");

		String name=request.getParameter("project");
		//鏍规嵁姣旇禌鐨勫悕绉版壘鍒板綋鍓嶆瘮璧涚殑鎴愮哗
		
		
		Project project = new Project();
		project.setName(name);
		project=projectService.selectOne(project);
//		鎵惧埌褰撳墠姣旇禌鐨勬墍鏈夋垚缁╀俊鎭�
		List<User> userList=projectUserSerivce.selectSecondListByFirstId(project.getId());	  
		modelAndView.addObject("userList",userList);
       
//		System.out.println("褰撳墠"+project.getId());
	    request.setAttribute("projectId", project.getId());	
		
		
		
		return modelAndView;
		
				
	}
	
	/**
	 * 杞埌瀹℃牳姣旇禌鎴愮哗鐣岄潰
	 * @return
	 */
	@RequestMapping(value="verify.do",method=RequestMethod.GET)
	public  ModelAndView verify()
	{
		/*
		 *  閬嶅巻褰撳墠椤圭洰
		 */
		
		//鏌ヨ鍑烘墍鏈夌殑姣旇禌椤圭洰
		List<Project> projectList=projectService.selectList();
		
		ModelAndView modelAndView = new ModelAndView("/project/list2");
		modelAndView.addObject("projectList",projectList);
		return modelAndView;
		
		
		
		
	}
	
	
	
	
	
}

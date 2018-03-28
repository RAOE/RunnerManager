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
import com.xyf.pojo.Evaluate;
import com.xyf.pojo.User;
import com.xyf.service.EvaluateService;
import com.xyf.service.UserService;
import com.xyf.utils.AjaxResult;


/**
 * 评价管理
 * @author Ray
 *
 */


@Controller
@RequestMapping("/evaluate")
public class EvaluateController 
{
@Autowired
private UserService userService;

@Autowired
private EvaluateService evaluateService;
  @RequestMapping("/list.do")
  public ModelAndView list()
  {
	return new ModelAndView("evaluate/list");
	  
  }
  /**
   * 删除评价
   * @return
   */
  @RequestMapping("/delete.do")
  public @ResponseBody AjaxResult delete(Long id)
  {
	  
	evaluateService.delete(id);  
	  
	  
	return AjaxResult.successInstance("删除成功");
			
	  
  }
  
  /**
   * 显示所有的
   * @return
   */
  @RequestMapping("/show.do")
  public ModelAndView show()
  {
	  
	  //查询出所有
    List<Evaluate> evaluateList=evaluateService.selectList();
    ModelAndView modelAndView =new ModelAndView("evaluate/show");
    modelAndView.addObject("evaluateList",evaluateList);
	return modelAndView;
	  
  }
  @RequestMapping(value="/add.do",method=RequestMethod.GET)
  public ModelAndView add(Long id)
  {
	  User user =new User();
	  user.setId(id);
	  user=userService.selectOne(user);
	  ModelAndView modelAndView =new ModelAndView("evaluate/add");
	  
	  modelAndView.addObject("user",user);
	  return modelAndView;
	  
  }
  @RequestMapping(value="/add.do",method=RequestMethod.POST)
  public @ResponseBody AjaxResult  add(Long adminId,Long id,HttpServletRequest request,HttpServletResponse response)
  {
	  
	  String message=request.getParameter("evaluate");
      if(message==null)
      {
    	  return AjaxResult.errorInstance("提交失败，填写评论");
    	  
      }
	  
	  //用户id
	  Evaluate evaluate=new Evaluate();
	  evaluate.setUserId(id);
	  evaluate.setEvaluate(message);
	  evaluate.setAdminId(adminId);
	  System.out.println(evaluate.toString());
	  //将评价插入数据库
	  evaluateService.insert(evaluate);
	  
	  
	  
	  return AjaxResult.successInstance("提交成功");	  
  }
	
}

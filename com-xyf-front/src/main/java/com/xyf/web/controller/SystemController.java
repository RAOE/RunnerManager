package com.xyf.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.xyf.pojo.SystemPojo;

@Controller
@RequestMapping("/system")

public class SystemController {

/*
 * 
 * Request.ServerVariables("REMOTE_ADDR")          '获取访问IP
Request.ServerVariables("LOCAL_ADDR")              '同上
Request.ServerVariables("SERVER_NAME") '获取服务器IP
Request.ServerVariables("HTTP_REFERER")        '获取访问来源页面
Request.ServerVariables("OS")                                '获取操作系统
request.ServerVariables("APPL_PHYSICAL_PATH")        '获取IIS物理路径
Request.ServerVariables("SCRIPT_NAME")                    '获取虚拟路径
Request.ServerVariables("NUMBER_OF_PROCESSORS")      '获取服务器CPU个数
Request.ServerVariables("SERVER_PORT")                  '服务器处理请求的端口
Request.ServerVariables["Url"] 返回服务器地址 
Request.ServerVariables["Path_Info"]                    客户端提供的路径信息 
Request.ServerVariables["Appl_Physical_Path"]     与应用程序元数据库路径相应的物理路径 
Request.ServerVariables["Path_Translated"]        通过由虚拟至物理的映射后得到的路径 
Request.ServerVariables["Script_Name"]              执行脚本的名称 
 */

	   @RequestMapping(value = "/list.do", method = RequestMethod.GET)
	    public ModelAndView register2Page(HttpServletRequest request) {

		   
		   		   SystemPojo system=new SystemPojo();
		   		  /*
		   		   system.setContextPath(request.getServletContext().getRealPath("/"));
                   system.setServletPath(request.getServletPath());   
                   system.setLocalAddr( request.getLocalAddr());
                   system.setLocalPort(request.getLocalPort());
		           system.setRequestedSessionId(request.getRequestedSessionId());
                   system.setRequestURI( request.getRequestURL().toString());
		           */
                   system.setPort(request.getLocalPort());
                   system.setAddress(request.getRemoteAddr());
                   system.setServletURL(request.getServletContext().getRealPath("/"));
                   system.setCharacter(request.getCharacterEncoding());

		   
	        ModelAndView modelAndView = new ModelAndView("system/list");
	        request.setAttribute("system", system);
	        
	        return modelAndView;
	    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
}

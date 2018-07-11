package com.xyf.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 讨论区的创建
 * @author Ray
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController {

	@RequestMapping("/show.do")
	public ModelAndView show()
	{
		return new ModelAndView("user/message");
	}
	
	
	
	
	
}

package com.xyf.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 作者模块 开发者说明等 作者介绍
 * 
 * @author Ray
 *
 */
@Controller
@RequestMapping("/author")
public class AuthorController {

	/**
	 * 跳转到介绍页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "about.do")
	public ModelAndView about() {
		return new ModelAndView("author/about");
	}

	/**
	 * 跳转到文档页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "document.do")
	public ModelAndView document() {
		return new ModelAndView("author/document");
	}

}

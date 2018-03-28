package com.xyf.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/question")
public class QuestionController {

	    @RequestMapping(value = "/ask.do", method = RequestMethod.GET)
	    public ModelAndView register2Page() {

	        ModelAndView modelAndView = new ModelAndView("register2");

	        return modelAndView;
	    }
	
	
}

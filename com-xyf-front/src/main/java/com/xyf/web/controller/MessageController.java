package com.xyf.web.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.xyf.pojo.Messages;
import com.xyf.service.MessageService;

/**
 * 讨论区的创建
 * @author Ray
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController {

	@Autowired
	private MessageService messagesService;

	/**
	 * 显示所有
	 * 
	 * @return
	 */
	@RequestMapping("/show.do")
	public ModelAndView show(Long id) {

		List<Messages> list = messagesService.selectList();
        ModelAndView modelAndView = new ModelAndView("user/message");
        modelAndView.addObject("messageList",list);
        return modelAndView;
        
	}

	/**
	 * 讨论区
	 * @return 
	 * 
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/submit.do")
	public ModelAndView submit( HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String content = req.getParameter("editorValue");
		Messages ms = new Messages();
		ms.setMessage(content);
		ms.setIsAdmin(true);
		ms.setCreateTime(new Date());
		ms.setName("用户");
		messagesService.insert(ms);
		resp.sendRedirect("./show.do");
		return null;
	}

}

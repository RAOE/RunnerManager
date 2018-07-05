package com.xyf.web.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.xyf.pojo.Admin;
import com.xyf.pojo.Project;
import com.xyf.pojo.User;
import com.xyf.pojo.UserScore;
import com.xyf.service.UserScoreService;
import com.xyf.service.UserService;
import com.xyf.utils.AjaxResult;
import com.xyf.utils.CommonUtils;

import okhttp3.Request;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserScoreService userScoreService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	public ModelAndView list() {
//		System.out.println("进入了登陆页面");
		return new ModelAndView("user/list");
	}

	/**
	 * show线上当前所有的运动员
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */

	@RequestMapping(value = "userManager.do", method = RequestMethod.GET)
	public ModelAndView loginSubmit(HttpServletRequest req, HttpServletResponse resp) {

		List<User> userList = userService.selectList();
		req.setAttribute("userList", userList);
		Map<String,Object> params=new HashMap<String,Object>();
        PageInfo<User> pageInfo = userService.search(1, 20, params);

		return new ModelAndView("user/list");

	}

	/**
	 * 返回用户的修改更新页面
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */

	@RequestMapping(value = "update.do", method = RequestMethod.GET)
	public ModelAndView update(HttpServletRequest req, HttpServletResponse resp) {
		ModelAndView modelAndView = new ModelAndView("user/update");
		return modelAndView;

	}

	@RequestMapping(value = "serach.do", method = RequestMethod.GET)
	public ModelAndView serach(String param, HttpServletRequest req, HttpServletResponse resp) {

		User user = new User();
		user.setName(param);

		ModelAndView modelAndView = new ModelAndView("user/list");
		List<User> userList = userService.selectList(user);
		modelAndView.addObject("userList", userList);

		return modelAndView;

	}

	/**
	 * 跳转到用户的添加页面
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */

	@RequestMapping(value = "add.do", method = RequestMethod.GET)
	public ModelAndView add(HttpServletRequest req, HttpServletResponse resp) {
		ModelAndView modelAndView = new ModelAndView("user/add");
		return modelAndView;

	}

	/**
	 * 用户添加的提交 检查运动员的个人信息 最后处理图片的上传
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */

	@RequestMapping(value = "addSubmit.do", method = RequestMethod.POST)
	public @ResponseBody AjaxResult addSubmit(String name, Boolean isMale, Long age, String phone, String team,
			Long weight, Long height, String description, String image, String password) {
		User user = new User();

		// 判断基本信息是否填写完整
		if (CommonUtils.isEmpty(name) || CommonUtils.isEmpty(phone) || CommonUtils.isEmpty(team)
				|| CommonUtils.isEmpty(description)) {
			return AjaxResult.errorInstance("添加运动员失败,请填写名称,电话,队伍,描述等基本信息");

		} else {

			user.setPassword(password);
			user.setPhone(phone);
			if (userService.isExisted(user)) {
				return AjaxResult.errorInstance("添加用户失败，已经存在账号");

			}
			user.setAge(age);
			user.setDescription(description);
			user.setImage(image);
			user.setIsMale(isMale);
			user.setName(name);
			user.setPhone(phone);
			user.setTeam(team);
			user.setWeight(weight);

			user.setcreateTime(new Date());
			userService.insert(user);
			return AjaxResult.successInstance("添加运动员成功");
		}
	}

	// delete.do
	@RequestMapping("delete.do")
	public @ResponseBody AjaxResult deleted(Long id) {
		if (id == 0) {
			return AjaxResult.errorInstance("删除运动员失败");
		} else {
			// 执行直接删除
			// 删除前先查找当前id的运动员信息
			userService.delete(id);

			return AjaxResult.successInstance("删除成功");
		}
	}

	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public ModelAndView registerPage(User user) {

		ModelAndView modelAndView = new ModelAndView("register");

		return modelAndView;
	}

	@RequestMapping(value = "/reg.do", method = RequestMethod.GET)
	public ModelAndView reg() {
		return new ModelAndView("reg");
	}

	@RequestMapping(value = "/reg.do", method = RequestMethod.POST)
	public ModelAndView regSubmit(HttpServletRequest req, HttpServletResponse resp) {
		User user = new User();
		String email = req.getParameter("user");
		String name = req.getParameter("Nickname");
		String pwd = req.getParameter("pwd");
		user.setName(name);
		user.setPassword(pwd);// 密码应该采用hash保存
		userService.insert(user);
//		System.out.println(user);
		return null;

	}

	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public ModelAndView registerSubmit(@Valid User user, BindingResult bindingResult) {

		if (bindingResult.getFieldError("email") != null || bindingResult.getFieldError("password") != null) {
			return registerPage(user);
		}

		userService.insert(user);

		ModelAndView modelAndView = new ModelAndView("registerSuccess");

		return modelAndView;
	}

	@RequestMapping(value = "/message.do")
	public ModelAndView message() {

		ModelAndView modelAndView = new ModelAndView("Message");

		return modelAndView;
	}

	/**
	 * 转到为一名运动员添加成绩
	 */
	@RequestMapping(value = "/addscore.do")
	public ModelAndView addscore(Long projectId, Long userId, HttpServletRequest request) {
		User user = new User();
		user.setId(userId);
		user = userService.selectOne(user);
		ModelAndView modelAndView = new ModelAndView("/score/addscore");
		modelAndView.addObject("user", user);
		modelAndView.addObject("projectId", projectId);

		return modelAndView;
	}

	/**
	 * 
	 * 提交用户的评分
	 * 
	 * @param id
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/addscoresubmit.do")
	public @ResponseBody AjaxResult addscoresubmit(Long projectId, Long adminId, Long id, HttpServletRequest request,
			HttpServletResponse response) {
		// 检查admin
		UserScore userScore = new UserScore();

		try {
			Long score = (long) Integer.parseInt(request.getParameter("score"));
			if (score < 0 || score > 100) {
				return AjaxResult.errorInstance("分数只能在0-100分以内");
			}
			userScore.setUserId(id);
			userScore.setScore(score);
			userScore.setAdminId(adminId);
			userScore.setProjectId(projectId);

			// 将数据插入数据库
			userScoreService.insert(userScore);

			return AjaxResult.successInstance("提交成功");

		} catch (NumberFormatException e) {

			return AjaxResult.successInstance("失败，只能填数字");

		}

	}

	/**
	 * 
	 * @param projectId
	 * @param userId
	 * @param request
	 * @return
	 */

	/**
	 * 显示用户页面的用户的当前的所有项目
	 * 
	 * @param id
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/showScore.do")
	public ModelAndView showScore(Long id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("/user/showScore");
		UserScore userScore = new UserScore();
		userScore.setUserId(id);
		// 通过用户id来查询
		List<UserScore> userScoresList = userScoreService.selectAll(userScore);

		modelAndView.addObject("userScoresList", userScoresList);

		return modelAndView;

	}

	@RequestMapping(value = "/showProject.do")
	public ModelAndView showProject(Long id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("/user/showProject");
		// 查询出当前用户id 的所有比赛
		UserScore userScore = new UserScore();
		userScore.setUserId(id);

		List<Project> projectList = userScoreService.selectProject(userScore);
		modelAndView.addObject("projectList", projectList);

		return modelAndView;

	}

	/**
	 * 转到密码修改页面
	 * 
	 * @param resp
	 * @param req
	 * @return
	 */

	@RequestMapping(value = "updatePassword.do", method = RequestMethod.GET)
	public ModelAndView updatePassword(HttpServletResponse resp, HttpServletRequest req) {

		return new ModelAndView("user/resetPassword");
	}

	/**
	 * 密码修改提交
	 * 
	 * @param resp
	 * @param req
	 * @return
	 */
	@RequestMapping("resetPassword.do")
	public @ResponseBody AjaxResult updatePasswordSubmit(String password, Long id, HttpServletResponse resp,
			HttpServletRequest req) {

		// 根据管理员的id来修改当前的账户密码
		User user = new User();
		user.setId(id);
		user = userService.selectOne(user);// 以对象来查询
		// 修改密码并提交
		user.setPassword(password);
//		System.out.println(user.toString());
		userService.update(user);

		return new AjaxResult().successInstance("提交成功,重新登陆生效");

	}

}

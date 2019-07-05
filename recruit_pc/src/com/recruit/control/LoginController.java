package com.recruit.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.recruit.dao.User;
import com.recruit.service.UserService;
import com.recruit.util.BaseResponse;
import com.recruit.util.UserUtil;

@Controller
@RequestMapping("/")
public class LoginController {
	@Resource
	UserService userService;

	/**
	 * 进入首页
	 * 
	 * @return
	 */
	@RequestMapping(value = "/goMain")
	public ModelAndView goMain() {
		ModelAndView view = new ModelAndView();
		view.setViewName("index");
		return view;
	}

	/**
	 * 进入登录页面
	 */
	@RequestMapping(value = "/goLogin")
	public ModelAndView enterPage() {
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
		return view;
	}

	@ResponseBody
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public BaseResponse getbyid(HttpSession session,
			HttpServletRequest request, String username, String pwd) {
		BaseResponse baseResponse = new BaseResponse();
		User user = new User();
		user.setUsername(username);
		user.setPwd(pwd);
		User us = userService.findByUsername(username);
		if(us.getPwd().equals(pwd)){
			request.getSession().setAttribute("user", us);
			baseResponse.setContent(user);
			user.setStatus(200);
			return BaseResponse.STATUS_200;
		}else{
			user.setStatus(0);
			return baseResponse;
		}
	}

	/**
	 * 进入管理员页面
	 */
	@RequestMapping(value = "/admin")
	public ModelAndView goAdminLogin() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/login");
		return view;
	}

	@ResponseBody
	@RequestMapping(value = "/doAdminLogin", method = RequestMethod.POST)
	public BaseResponse doAdminLogin(HttpSession session,
			HttpServletRequest request, String username, String pwd) {
		BaseResponse baseResponse = new BaseResponse();
		if(username.equals("admin")&&pwd.endsWith("root")){
			User user = new User();
			user.setUsername(username);
			user.setPwd(pwd);
			user.setStatus(3);
			baseResponse.setStatus(200);
			baseResponse.setContent(user);
		}else{
			baseResponse.setStatus(400);
		}
		return baseResponse;
	}

	/**
	 * 退出
	 * 
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request) {
		User user = UserUtil.getUser();
		if (user != null) {
			// 记录退出
			request.getSession().invalidate();
		}
		request.getSession().invalidate();
		ModelAndView view = new ModelAndView();
		view.setViewName("index");
		return view;
	}

}

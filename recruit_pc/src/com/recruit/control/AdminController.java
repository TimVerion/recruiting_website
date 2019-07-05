package com.recruit.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.recruit.dao.User;
import com.recruit.service.UserService;
import com.recruit.util.BaseResponse;
import com.recruit.util.JqueryDto;
import com.recruit.util.Pager;
import com.recruit.util.PagerUtils;




@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource
	UserService userService;
	
	/**
	 * 进入首页
	 */
	@RequestMapping(value = "/goMain")
	public ModelAndView  goMain() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/main");
		return view;
	}
	/**
	 * 进入数据录入页面
	 * @return
	 */
	@RequestMapping(value = "/goAdmin")
	public ModelAndView enterPage() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/adminManager");
		return view;
	}
	/**
	 * 进入数据录入页面
	 * @return
	 */
	@RequestMapping(value = "/goEmps")
	public ModelAndView goEmps() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/emps");
		return view;
	}
	/**
	 * 进入数据录入页面
	 * @return
	 */
	@RequestMapping(value = "/goComs")
	public ModelAndView goComs() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/coms");
		return view;
	}
	
	@RequestMapping(value = "/goJobs")
	public ModelAndView goJobs() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/jobs");
		return view;
	}
	@RequestMapping(value = "/goInfos")
	public ModelAndView goInfos() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/infos");
		return view;
	}
	
	@ResponseBody
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public BaseResponse getbyid(HttpSession session, HttpServletRequest request, String username,String pwd) {
		BaseResponse baseResponse=new BaseResponse();
		User user=new User();
		user.setUsername(username);
		user.setPwd(pwd);
		user.setStatus(0);
		user = userService.findByUsername(username);
		System.out.println(user);
		baseResponse.setContent(user);
		return baseResponse;
	}
	

	/**
	 * 退出
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request) {
		request.getSession().invalidate();
		ModelAndView view = new ModelAndView();
		view.setViewName("index");
		return view;
	}
	
	@ResponseBody
	@RequestMapping(value="findComList")
	public JqueryDto findComList(HttpServletRequest request,HttpServletResponse response,String param){

//	Company  c=companyService.findByUid(user.getId());
	
	//查询分数LIST	
	Pager	pager = PagerUtils.getPager(request);
	
		return userService.findAllCompanys(pager, param);
	}
	@ResponseBody
	@RequestMapping(value="findEmpList")
	public JqueryDto findEmpList(HttpServletRequest request,HttpServletResponse response,String param){

//	Company  c=companyService.findByUid(user.getId());
	
	//查询分数LIST	
	Pager	pager = PagerUtils.getPager(request);
	
		return userService.findAllEmps(pager,param);
	}
	
}

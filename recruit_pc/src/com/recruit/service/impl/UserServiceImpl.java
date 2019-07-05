package com.recruit.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.recruit.dao.User;
import com.recruit.dao.UserCriteria;
import com.recruit.mapper.UserMapper;
import com.recruit.dto.CompanyDto;
import com.recruit.dto.EmpDto;
import com.recruit.service.UserService;
import com.recruit.util.JqueryDto;
import com.recruit.util.Pager;
import com.recruit.mapper.AdminMapper;


@Service
public class UserServiceImpl  implements UserService{

	@Resource
	UserMapper userMapper;
	
	@Resource
	AdminMapper AdminMapper;

	@Override
	public User login(User user) {
		UserCriteria uc = new UserCriteria();
		List<User> users = new ArrayList<User>();
		uc.createCriteria().andUsernameEqualTo(user.getUsername()).andPwdEqualTo(user.getPwd());
		users = userMapper.selectByExample(uc);
		if (users.size() == 1) {
			return users.get(0);
		} else {
			return null;
		}
	}
	
    /**
     * 根据用户名查找用户
     * @param username
     * @return
     */
	@Override
    public User   findByUsername(String username) {
		User user = new User();
		UserCriteria userInfoCriteria = new UserCriteria();
		userInfoCriteria.createCriteria().andUsernameEqualTo(username);
		List<User> users = userMapper.selectByExample(userInfoCriteria);
		if(users.size()>0){
			user = users.get(0);
			return user;
		}else{
			return null;
		}

    }

	@Override
	public boolean saveUser(User user) {
	int i=	userMapper.insert(user);
	if(i>0){
		return true;
	}
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		int i =userMapper.updateByPrimaryKeySelective(user);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Override
	public JqueryDto findAllCompanys(Pager pager) {
		int total=AdminMapper.findAllCompanyscount();
		int start =Integer.parseInt(pager.getPage())-1;
		List<CompanyDto> list=AdminMapper.findAllCompanys(start, Integer.parseInt(pager.getRows()));
		JqueryDto dto=new JqueryDto();
		dto.setTotal(total);
		pager.setObj(list);
//		String json = net.sf.json.JSONArray.fromObject(pager.getObj()).toString();
		dto.setRows(list);
			//查询分页条数
			return dto;
	}

	@Override
	public JqueryDto findAllEmps(Pager pager,String param) {
		if(param!=null){
		param=	"%"+param+"%";
		}
		int total=AdminMapper.findAllEmpscount(param);
		int start =Integer.parseInt(pager.getPage())-1;
		List<EmpDto> list=AdminMapper.findAllEmpsList( param ,start,Integer.parseInt(pager.getRows()));
		JqueryDto dto=new JqueryDto();
		dto.setTotal(total);
		pager.setObj(list);
//		String json = net.sf.json.JSONArray.fromObject(pager.getObj()).toString();
		dto.setRows(list);
			//查询分页条数
			return dto;
	}

	@Override
	public JqueryDto findAllCompanys(Pager pager, String param) {
		if(param!=null){
		param=	"%"+param+"%";
		}
		int total=AdminMapper.findCompanyscount(param);
		int start =Integer.parseInt(pager.getPage())-1;
		List<CompanyDto> list=AdminMapper.findCompanys(param,start, Integer.parseInt(pager.getRows()));
		JqueryDto dto=new JqueryDto();
		dto.setTotal(total);
		pager.setObj(list);
//		String json = net.sf.json.JSONArray.fromObject(pager.getObj()).toString();
		dto.setRows(list);
			//查询分页条数
			return dto;
	}
    

}

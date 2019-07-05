package com.recruit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.recruit.dao.Emp;
import com.recruit.dao.EmpCriteria;
import com.recruit.mapper.EmpMapper;
import com.recruit.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {

	@Resource
	EmpMapper empMapper;

	@Override
	public boolean saveEmp(Emp user) {
		int i =0;
		try {
			i = empMapper.insert(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateEmp(Emp dp) {
		int i =0;
		try {
			i = empMapper.updateByPrimaryKeySelective(dp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Emp findById(Integer id) {
		EmpCriteria ec=new EmpCriteria();
		ec.createCriteria().andUserIdEqualTo(id);	
	List<Emp> list=	empMapper.selectByExample(ec);
	if(list.size()>0){
		return empMapper.selectByExample(ec).get(0);
	}
	return null;

	}

}

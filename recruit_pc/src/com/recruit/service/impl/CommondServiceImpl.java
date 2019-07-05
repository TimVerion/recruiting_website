package com.recruit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.recruit.dao.Commond;
import com.recruit.dto.CommondDto;
import com.recruit.service.CommondService;
import com.recruit.util.JqueryDto;
import com.recruit.util.Pager;
import com.recruit.mapper.CommondMapper;
import com.recruit.mapper.InfoMapper;

@Service
public class CommondServiceImpl implements CommondService {

	@Resource
	CommondMapper CommondMapper;

	@Resource
	InfoMapper InfoMapper;
	@Override
	public boolean saveCommond(Commond user) {
		int i = CommondMapper.insert(user);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateCommond(Commond dp) {
		int i =CommondMapper.updateByPrimaryKeySelective(dp);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Override
	public JqueryDto findByInfoId(Pager pager,Integer id) {
				//查询总数
				int total=InfoMapper.findCommondcount(id);
				int start =Integer.parseInt(pager.getPage())-1;
				List<CommondDto> list=InfoMapper.findCommondList(id, start, Integer.parseInt(pager.getRows()));
				JqueryDto dto=new JqueryDto();
				dto.setTotal(total);
				pager.setObj(list);
				dto.setRows(list);
				return dto;
	}

}

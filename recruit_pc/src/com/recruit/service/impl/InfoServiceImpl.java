package com.recruit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.recruit.dao.Info;
import com.recruit.mapper.InfoMapper;
import com.recruit.dto.InfoDto;
import com.recruit.service.InfoService;
import com.recruit.util.JqueryDto;
import com.recruit.util.Pager;

@Service
public class InfoServiceImpl implements InfoService {

	@Resource
	InfoMapper infoMapper;

	@Override
	public boolean saveInfo(Info user) {
		int i = infoMapper.insert(user);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateInfo(Info dp) {
		int i =infoMapper.updateByPrimaryKeySelective(dp);
		if (i > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Info findById(Integer id) {

	return infoMapper.selectByPrimaryKey(id);

	}

	@Override
	public JqueryDto findMyInfoList(Pager pager, int userId) {
		//查询总数
	int total=infoMapper.findMyInfocount(userId);
	int start =Integer.parseInt(pager.getPage())-1;
	List<InfoDto> list=null;
	try {
		list=infoMapper.findMyInfoList(userId, start, Integer.parseInt(pager.getRows()));
	} catch (Exception e) {
	}
	JqueryDto dto=new JqueryDto();
	dto.setTotal(total);
	pager.setObj(list);
//	String json = net.sf.json.JSONArray.fromObject(pager.getObj()).toString();
	dto.setRows(list);
		//查询分页条数
		return dto;
	}
	@Override
	public JqueryDto findInfoList(Pager pager, int userId,int status,int isApply) {
		//查询总数
	int total=infoMapper.findInfocount(userId,status,isApply);
	int start =Integer.parseInt(pager.getPage())-1;
	List<InfoDto> list=infoMapper.findInfoList(userId, status,isApply,start, Integer.parseInt(pager.getRows()));
	JqueryDto dto=new JqueryDto();
	dto.setTotal(total);
	pager.setObj(list);
//	String json = net.sf.json.JSONArray.fromObject(pager.getObj()).toString();
	dto.setRows(list);
		//查询分页条数
		return dto;
	}
}

package com.recruit.service;

import java.util.List;

import com.recruit.dao.Job;
import com.recruit.dto.JobDto;
import com.recruit.util.JqueryDto;
import com.recruit.util.Pager;




public interface JobService {

	public boolean saveJob(Job job);
	
	public boolean saveTopJob(int job);

	public boolean updateJob(Job dp);
	
	public List<JobDto> findTen();
	
	public JobDto findByJobId(int id);
	
	public JqueryDto findComJobList(Pager pager,int comid);

	public boolean del(int id);
	
	public JqueryDto findJobList(Pager pager,Job job);
	
	public JqueryDto findHistoryJobList(Pager pager,Job job,int userId);

	public List<JobDto> findAllJob();

//	public String editOrSavejob(Job job);
}

package com.recruit.mapper;

import com.recruit.dao.Job;
import com.recruit.dao.JobCriteria;
import com.recruit.dto.JobDto;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface JobMapper {
    int countByExample(JobCriteria example);

    int deleteByExample(JobCriteria example);

    int deleteByPrimaryKey(Integer jobId);

    int insert(Job record);

    int insertSelective(Job record);

    List<Job> selectByExample(JobCriteria example);

    Job selectByPrimaryKey(Integer jobId);

    int updateByExampleSelective(@Param("record") Job record, @Param("example") JobCriteria example);

    int updateByExample(@Param("record") Job record, @Param("example") JobCriteria example);

    int updateByPrimaryKeySelective(Job record);

    int updateByPrimaryKey(Job record);
    
	List<JobDto> findTopTen();
	
	public JobDto findByJobId(@Param("id") int id);
	
	public int  findComJobListcount(@Param("comid") int comid);
	
	public List<JobDto> findComJobList(@Param("comid") int comid,@Param("start") int start,@Param("end") int end);
	
	
	public int  findJobListcount(@Param("jobName") String jobName);
	
	public List<JobDto> findJobList(@Param("jobName") String jobName,@Param("start") int start,@Param("end") int end);
	
	public int updateTopJob(@Param("jobId") int jobId);
	
	public int  findHistoryJobListcount(@Param("jobName") String jobName,@Param("userId") int id);
	
	public List<JobDto> findHistoryJobList(@Param("jobName") String jobName,@Param("userId") int id,@Param("start") int start,@Param("end") int end);

	List<JobDto> findAll();
	
}
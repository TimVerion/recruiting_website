package com.recruit.mapper;

import com.recruit.dao.Info;
import com.recruit.dao.InfoCriteria;
import com.recruit.dto.CommondDto;
import com.recruit.dto.InfoDto;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface InfoMapper {
    int countByExample(InfoCriteria example);

    int deleteByExample(InfoCriteria example);

    int deleteByPrimaryKey(Integer infoId);

    int insert(Info record);

    int insertSelective(Info record);

    List<Info> selectByExample(InfoCriteria example);

    Info selectByPrimaryKey(Integer infoId);

    int updateByExampleSelective(@Param("record") Info record, @Param("example") InfoCriteria example);

    int updateByExample(@Param("record") Info record, @Param("example") InfoCriteria example);

    int updateByPrimaryKeySelective(Info record);

    int updateByPrimaryKey(Info record);
	public int  findMyInfocount(@Param("userId") int userId);
	
	public List<InfoDto> findMyInfoList(@Param("userId") int userId,@Param("start") int start,@Param("end") int end);
	
	public int  findInfocount(@Param("userId") int userId,@Param("status") int status,@Param("isApply") int isApply);
	
	public List<InfoDto> findInfoList(@Param("userId") int userId,@Param("status") int status,@Param("isApply") int isApply,@Param("start") int start,@Param("end") int end);
	public int  findCommondcount(@Param("infoId") int infoId);
	
	public List<CommondDto> findCommondList(@Param("infoId") int infoId,@Param("start") int start,@Param("end") int end);

}
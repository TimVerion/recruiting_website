package com.recruit.mapper;

import com.recruit.dao.ComResume;
import com.recruit.dao.ComResumeCriteria;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ComResumeMapper {
    int countByExample(ComResumeCriteria example);

    int deleteByExample(ComResumeCriteria example);

    int deleteByPrimaryKey(Integer resumeId);

    int insert(ComResume record);

    int insertSelective(ComResume record);

    List<ComResume> selectByExample(ComResumeCriteria example);

    ComResume selectByPrimaryKey(Integer resumeId);

    int updateByExampleSelective(@Param("record") ComResume record, @Param("example") ComResumeCriteria example);

    int updateByExample(@Param("record") ComResume record, @Param("example") ComResumeCriteria example);

    int updateByPrimaryKeySelective(ComResume record);

    int updateByPrimaryKey(ComResume record);
}
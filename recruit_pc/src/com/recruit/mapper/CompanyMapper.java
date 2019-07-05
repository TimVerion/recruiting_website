package com.recruit.mapper;

import com.recruit.dao.Company;
import com.recruit.dao.CompanyCriteria;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CompanyMapper {
    int countByExample(CompanyCriteria example);

    int deleteByExample(CompanyCriteria example);

    int deleteByPrimaryKey(Integer comId);

    int insert(Company record);

    int insertSelective(Company record);

    List<Company> selectByExample(CompanyCriteria example);

    Company selectByPrimaryKey(Integer comId);

    int updateByExampleSelective(@Param("record") Company record, @Param("example") CompanyCriteria example);

    int updateByExample(@Param("record") Company record, @Param("example") CompanyCriteria example);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);
}
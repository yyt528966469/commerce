package com.wm.edu.mapper.store;

import com.wm.edu.model.store.T_enterprise;

public interface T_enterpriseMapper {
    int deleteByPrimaryKey(String enterprise_id);

    int insert(T_enterprise record);

    int insertSelective(T_enterprise record);

    T_enterprise selectByPrimaryKey(String enterprise_id);

    int updateByPrimaryKeySelective(T_enterprise record);

    int updateByPrimaryKey(T_enterprise record);
}
package com.wm.edu.mapper.commerce;

import com.wm.edu.model.commerce.T_commerce_info;

import java.util.List;

public interface T_commerce_infoMapper {
    int insert(T_commerce_info record);

    int insertSelective(T_commerce_info record);

    T_commerce_info selectByPrimaryKey(String id);

    List<T_commerce_info> getCommerceList(T_commerce_info t_commerce_info);

    int updateByPrimaryKeySelective(T_commerce_info record);

    void deleteByPrimaryKey(String id);
}
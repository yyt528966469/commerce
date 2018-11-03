package com.wm.edu.mapper.store;

import com.wm.edu.model.store.T_store_info;

import java.util.List;

public interface T_store_infoMapper {
    int deleteByPrimaryKey(String store_id);

    int insert(T_store_info record);

    int insertSelective(T_store_info record);

    T_store_info selectByPrimaryKey(String store_id);

    int updateByPrimaryKeySelective(T_store_info record);

    int updateByPrimaryKey(T_store_info record);

    List<T_store_info> getStoreList(T_store_info t_store_info);
}
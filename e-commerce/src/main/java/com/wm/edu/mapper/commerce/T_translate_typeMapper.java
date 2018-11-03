package com.wm.edu.mapper.commerce;

import com.wm.edu.model.commerce.T_translate_type;

import java.util.List;

public interface T_translate_typeMapper {
    int deleteByPrimaryKey(String type_id);

    int insert(T_translate_type record);

    int insertSelective(T_translate_type record);

    T_translate_type selectByPrimaryKey(String type_id);

    int updateByPrimaryKeySelective(T_translate_type record);

    int updateByPrimaryKey(T_translate_type record);

    List<T_translate_type> getTypeList(T_translate_type t_translate_type);
}
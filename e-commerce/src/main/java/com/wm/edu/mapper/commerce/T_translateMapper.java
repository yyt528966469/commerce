package com.wm.edu.mapper.commerce;

import com.wm.edu.model.commerce.T_translate;

import java.util.List;

public interface T_translateMapper {
    int deleteByPrimaryKey(String translate_id);

    int insert(T_translate record);

    int insertSelective(T_translate record);

    T_translate selectByPrimaryKey(String translate_id);

    int updateByPrimaryKeySelective(T_translate record);

    int updateByPrimaryKey(T_translate record);

    List<T_translate> getTranslateList(T_translate t_translate);
}
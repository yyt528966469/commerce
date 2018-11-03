package com.wm.edu.mapper.adver;

import com.wm.edu.model.adver.T_notice;

import java.util.List;

public interface T_noticeMapper {
    int deleteByPrimaryKey(String notice_id);

    int insert(T_notice record);

    int insertSelective(T_notice record);

    T_notice selectByPrimaryKey(String notice_id);

    int updateByPrimaryKeySelective(T_notice record);

    int updateByPrimaryKey(T_notice record);

    List<T_notice> getNoticeList(T_notice t_notice);
}
package com.wm.edu.mapper.order;

import com.wm.edu.model.order.T_refund_apply;

public interface T_refund_applyMapper {
    int deleteByPrimaryKey(String id);

    int insert(T_refund_apply record);

    int insertSelective(T_refund_apply record);

    T_refund_apply selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(T_refund_apply record);

    int updateByPrimaryKey(T_refund_apply record);
}
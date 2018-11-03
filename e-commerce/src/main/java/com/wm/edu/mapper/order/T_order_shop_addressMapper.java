package com.wm.edu.mapper.order;

import com.wm.edu.model.order.T_order_shop_address;

public interface T_order_shop_addressMapper {
    int deleteByPrimaryKey(String order_address_id);

    int insert(T_order_shop_address record);

    int insertSelective(T_order_shop_address record);

    T_order_shop_address selectByPrimaryKey(String order_address_id);

    int updateByPrimaryKeySelective(T_order_shop_address record);

    int updateByPrimaryKey(T_order_shop_address record);
}
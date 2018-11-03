package com.wm.edu.service.store;

import com.wm.edu.mapper.store.T_enterpriseMapper;
import com.wm.edu.model.store.T_enterprise;
import com.wm.edu.utils.common.AttaUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class EnterpriseService {

    @Autowired
    private T_enterpriseMapper t_enterpriseMapper;

    public T_enterprise getEnterpriseById(String id){
        return t_enterpriseMapper.selectByPrimaryKey(id);
    }

    public String saveEnterprise(T_enterprise t_enterprise){
        String res="0";
        try {
            if(StringUtils.isNotEmpty(t_enterprise.getEnterprise_id())){
                t_enterpriseMapper.updateByPrimaryKeySelective(t_enterprise);
            }else {
                t_enterprise.setEnterprise_id(AttaUtils.getNo());
                t_enterprise.setCreate_time(new Date());
                t_enterpriseMapper.insertSelective(t_enterprise);
            }

        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }
        return res;
    }

}

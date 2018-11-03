package com.wm.edu.service.commerce;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.wm.edu.mapper.commerce.T_translate_typeMapper;
import com.wm.edu.model.commerce.T_translate_type;
import com.wm.edu.utils.common.AttaUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class TranslateTypeService {

    @Autowired
    private T_translate_typeMapper t_translate_typeMapper;

    public Page<T_translate_type> getTranslatePage(T_translate_type t_translate_type){
        Page<T_translate_type> page=PageHelper.startPage(t_translate_type.getPage(),t_translate_type.getRows(),t_translate_type.getOrderStandesc());
        t_translate_typeMapper.getTypeList(t_translate_type);
        return page;
    }

    /**
     *
     * @param id
     * @return
     */
    public T_translate_type getTypeById(String id){
        return t_translate_typeMapper.selectByPrimaryKey(id);
    }


    public String saveTranslateType(T_translate_type t_translate_type){
        String res="0";
        if(StringUtils.isNotEmpty(t_translate_type.getType_id())){
            t_translate_typeMapper.updateByPrimaryKeySelective(t_translate_type);
        }else {
            t_translate_type.setCreate_time(new Date());
            t_translate_type.setType_id(AttaUtils.getNo());
            t_translate_typeMapper.insertSelective(t_translate_type);
        }
        return res;
    }

    public String deleteTranslateType(String id){
        String res="0";
        try {
            t_translate_typeMapper.deleteByPrimaryKey(id);
        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }
        return res;
    }

    public List<T_translate_type> getAllType(){
        return t_translate_typeMapper.getTypeList(new T_translate_type());
    }

}

package com.wm.edu.service.commerce;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.wm.edu.mapper.commerce.T_translateMapper;
import com.wm.edu.model.commerce.T_translate;
import com.wm.edu.model.commerce.T_translate_type;
import com.wm.edu.utils.common.AttaUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class TranslateService {

    @Autowired
    private T_translateMapper t_translateMapper;
    @Autowired
    private TranslateTypeService translateTypeService;

    public Page<T_translate> getPageList(T_translate t_translate){
        Page<T_translate> page=PageHelper.startPage(t_translate.getPage(),t_translate.getRows(),t_translate.getOrderStandesc());
        t_translateMapper.getTranslateList(t_translate);
        return page;
    }

    public T_translate getTranslateById(String id){
        return t_translateMapper.selectByPrimaryKey(id);
    }

    public String saveTranslate(T_translate t_translate){
        String res="0";
        try {

            if(StringUtils.isNotEmpty(t_translate.getTranslate_id())){
                t_translateMapper.updateByPrimaryKeySelective(t_translate);
            }else {
                t_translate.setTranslate_id(AttaUtils.getNo());
                t_translate.setStatus(0);
                t_translate.setCreate_time(new Date());
                t_translateMapper.insertSelective(t_translate);
            }
        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }
        return res;
    }

    public String updateStatus(T_translate t_translate){
        String res="0";
        try {
            t_translateMapper.updateByPrimaryKeySelective(t_translate);
        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }

        return res;
    }


    public String deleteTranslate(String id){
        String res="0";
        try {
            t_translateMapper.deleteByPrimaryKey(id);
        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }
        return res;

    }

    public List<T_translate_type> getAllType(){
        return translateTypeService.getAllType();
    }

}

package com.wm.edu.controller.commerce;

import com.github.pagehelper.Page;
import com.wm.edu.model.commerce.T_translate_type;
import com.wm.edu.service.commerce.TranslateService;
import com.wm.edu.service.commerce.TranslateTypeService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/translatetype")
@Controller
public class TranslateTypeController {

    @Autowired
    private TranslateTypeService translateTypeService;
    @RequestMapping("/main")
    public String main(){

        return "translatetype/translatetypeList";
    }
    @RequestMapping("/list")
    @ResponseBody
    public Map<String,Object> list(T_translate_type t_translate_type){
        Map<String,Object> map=new HashMap<>();
        Page<T_translate_type> page=translateTypeService.getTranslatePage(t_translate_type);
        map.put("rows", page.getResult());//当前记录数
        map.put("records", page.getTotal());
        map.put("page",page.getPageNum());
        map.put("total",  page.getPages());
        return map;
    }
    @RequestMapping("/toAddOrEdit")
    public String toAddOrEdit(String type_id, Model model){
        T_translate_type t_translate_type=new T_translate_type();
        if(StringUtils.isNotEmpty(type_id)){
            t_translate_type=translateTypeService.getTypeById(type_id);
        }
        model.addAttribute("t_translate_type",t_translate_type);
        return "translatetype/addTranslatetype";
    }
    @RequestMapping("/saveTranslateType")
    @ResponseBody
    public Map<String,Object> saveTranslateType(T_translate_type t_translate_type){
        Map<String,Object> map=new HashMap<>();
        String res=translateTypeService.saveTranslateType(t_translate_type);
        map.put("result",res);
        return map;
    }
    @RequestMapping("/deleteTranslateType")
    @ResponseBody
    public Map<String,Object> deleteTranslateType(String type_id){
        Map<String,Object> map=new HashMap<>();
        String result=translateTypeService.deleteTranslateType(type_id);
        map.put("result",result);
        return map;
    }

}

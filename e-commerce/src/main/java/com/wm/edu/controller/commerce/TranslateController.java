package com.wm.edu.controller.commerce;

import com.github.pagehelper.Page;
import com.wm.edu.model.commerce.T_commerce_info;
import com.wm.edu.model.commerce.T_translate;
import com.wm.edu.model.commerce.T_translate_type;
import com.wm.edu.model.commodity.T_commodity_type;
import com.wm.edu.service.commerce.TranslateService;
import com.wm.edu.utils.common.AttaUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/translate")
@Controller
public class TranslateController {

    @Autowired
    private TranslateService translateService;

    @RequestMapping("/main")
    public String main(){

        return "translate/translateInfoList";
    }
    @RequestMapping("/list")
    @ResponseBody
    public Map<String,Object> list(T_translate t_translate){
        Map<String,Object> map=new HashMap<>();
        Page<T_translate> page=translateService.getPageList(t_translate);
        map.put("rows", page.getResult());//当前记录数
        map.put("records", page.getTotal());
        map.put("page",page.getPageNum());
        map.put("total",  page.getPages());
        return map;
    }

    @RequestMapping("/toAddOrEdit")
    public String toAddOrEdit(String translate_id,Model model){
        T_translate t_translate=new T_translate();
        if(StringUtils.isNotEmpty(translate_id)){
            t_translate = translateService.getTranslateById(translate_id);
        }
        List<T_translate_type> list=translateService.getAllType();
        model.addAttribute("t_translate",t_translate);
        model.addAttribute("typeList",list);
        return "translate/addTranslate";
    }

    @RequestMapping("/saveTranslate")
    @ResponseBody
    public Map<String,Object> saveTranslate(T_translate t_translate, HttpServletRequest request){
        Map<String,Object> map=new HashMap<>();
        t_translate.setImg_url(AttaUtils.getAllUrl(request,t_translate.getImg_url()));
        String res=translateService.saveTranslate(t_translate);
        map.put("result",res);
        return map;
    }
    @RequestMapping("/updateStatus")
    @ResponseBody
    public Map<String,Object> updateStatus(T_translate t_translate){
        Map<String,Object> map=new HashMap<>();
        String res=translateService.updateStatus(t_translate);
        map.put("result",res);
        return map;
    }
    @RequestMapping("/deleteTranslate")
    @ResponseBody
    public Map<String,Object> deleteTranslate(String translate_id){
        Map<String,Object> map=new HashMap<>();
        String res=translateService.deleteTranslate(translate_id);
        map.put("result",res);
        return map;
    }




}

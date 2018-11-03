package com.wm.edu.controller.commerce;

import com.github.pagehelper.Page;
import com.wm.edu.model.commerce.T_commerce_info;
import com.wm.edu.model.commodity.T_commodity_type;
import com.wm.edu.service.commerce.CommerceInfoService;
import com.wm.edu.utils.common.AttaUtils;
import com.wm.edu.utils.util.ExportExcelUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/commerce")
@Controller
public class CommerceInfoController {

    @Autowired
    private CommerceInfoService commerceInfoService;

    @RequestMapping("/main")
    public String main(Model model){
        List<T_commodity_type> list=commerceInfoService.getAllType();
        model.addAttribute("typeList",list);
        return "commerce/commerceInfoList";
    }
    @RequestMapping("/list")
    @ResponseBody
    public Map<String,Object> list(T_commerce_info t_commerce_info){
        Map<String,Object> map=new HashMap<>();
        Page<T_commerce_info> page=commerceInfoService.loadPage(t_commerce_info);
        map.put("rows", page.getResult());//当前记录数
        map.put("records", page.getTotal());
        map.put("page",page.getPageNum());
        map.put("total",  page.getPages());
        return map;
    }


    @RequestMapping("/toAddOrEdit")
    public String toAddOrEdit(String commerce_id,Model model){
        T_commerce_info commerce_info=new T_commerce_info();
        if(StringUtils.isNotEmpty(commerce_id)){
            commerce_info = commerceInfoService.getCommerceInfoById(commerce_id);
        }
        List<T_commodity_type> list=commerceInfoService.getAllType();
        model.addAttribute("commerce_info",commerce_info);
        model.addAttribute("typeList",list);
        return "commerce/addCommerceInfo";
    }

    @RequestMapping("/uploadImages")
    @ResponseBody
    public Map<String, Object> uploadImages(HttpServletRequest request, HttpServletResponse response, @RequestParam("image_file") MultipartFile image_file){
        return ExportExcelUtils.uploadFile(request,image_file);
    }

    @RequestMapping("/uploadHead")
    @ResponseBody
    public Map<String, Object> uploadHead(HttpServletRequest request, HttpServletResponse response, @RequestParam("photo_head") MultipartFile photo_head){
        return ExportExcelUtils.uploadFile(request,photo_head);
    }

    @RequestMapping("/saveCommerce")
    @ResponseBody
    public Map<String,Object> saveCommerce(T_commerce_info t_commerce_info,HttpServletRequest request){
        Map<String,Object> map=new HashMap<>();
        t_commerce_info.setImg_src(AttaUtils.getAllUrl(request,t_commerce_info.getImg_src()));
        String[] head_name=request.getParameterValues("head_name");
        String result=commerceInfoService.saveCommerceInfo(t_commerce_info,head_name,request);
        map.put("result",result);
        return map;
    }

    /**
     * 删除商品
     * @return
     */
    @RequestMapping("/deleteCommerce")
    @ResponseBody
    public Map<String,Object> deleteCommerce(String commerce_id){
        Map<String,Object> map=new HashMap<>();
        String result=commerceInfoService.deleteCommerce(commerce_id);
        map.put("result",result);
        return map;
    }


    /**
     * 更新状态
     * @param commerce_id
     * @param status
     * @return
     */
    @RequestMapping("/updateStatus")
    @ResponseBody
    public Map<String,Object> updateStatus(String commerce_id,Integer status){
        Map<String,Object> map=new HashMap<>();
        T_commerce_info commerce_info=new T_commerce_info();
        commerce_info.setCommerce_id(commerce_id);
        commerce_info.setStatus(status);
        String result=commerceInfoService.updateStatus(commerce_info);
        map.put("result",result);
        return map;
    }


}

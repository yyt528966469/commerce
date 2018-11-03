package com.wm.edu.controller.store;

import com.github.pagehelper.Page;
import com.wm.edu.model.store.T_base;
import com.wm.edu.model.store.T_enterprise;
import com.wm.edu.model.store.T_store_info;
import com.wm.edu.service.store.EnterpriseService;
import com.wm.edu.service.store.StoreInfoService;
import com.wm.edu.service.store.TBaseService;
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
import java.util.Map;

@Controller
@RequestMapping("/store")
public class StoreInfoController {
    @Autowired
    private StoreInfoService storeInfoService;
    @Autowired
    private TBaseService tBaseService;
    @Autowired
    private EnterpriseService enterpriseService;

    @RequestMapping("/main")
    public String main(Model model){
        T_enterprise t_enterprise=enterpriseService.getEnterpriseById("18110215570917880");
        //T_store_info store_info=storeInfoService.getStoreInfoById("180823141815751957");
        if(t_enterprise==null){
            t_enterprise=new T_enterprise();
            model.addAttribute("t_enterprise",t_enterprise);
            //model.addAttribute("t_base",new T_base());
            return "enterprise/editEnterprise";
        }else {
            model.addAttribute("t_enterprise",t_enterprise);
            //T_base t_base=tBaseService.getBaseById(store_info.getStore_id());
            //model.addAttribute("t_base",t_base);
            return "enterprise/enterpriseInfo";
        }


    }
    @RequestMapping("/getStoreEdit")
    public String getStoreEdit(Model model){

        T_enterprise t_enterprise=enterpriseService.getEnterpriseById("18110215570917880");
       // T_base t_base=tBaseService.getBaseById(store_info.getStore_id());
        model.addAttribute("t_enterprise",t_enterprise);
        //model.addAttribute("t_base",t_base);
        return "enterprise/editEnterprise";
    }

    /**
     * 保存商店信息
     * @param t_store_info
     * @return
     */
    @RequestMapping("/saveStoreInfo")
    @ResponseBody
    public Map<String,Object> saveStoreInfo(T_store_info t_store_info,HttpServletRequest request,T_base t_base){
        t_store_info.setImg_src(AttaUtils.getAllUrl(request,t_store_info.getImg_src()));
        Map<String,Object> map=new HashMap<>();
        String result=storeInfoService.saveStoreInfo(t_store_info);
        map.put("result",result);
        return map;
    }

    /**
     *
     * @param lng
     * @param lat
     * @param model
     * @return
     */
    @RequestMapping("/toMap")
    public String toMap(String lng,String lat,Model model){
        model.addAttribute("lng",lng);
        model.addAttribute("lat",lat);
        return "store/baiduMap";
    }

    @RequestMapping("/uploadImages")
    @ResponseBody
    public Map<String, Object> uploadImages(HttpServletRequest request, HttpServletResponse response, @RequestParam("image_file") MultipartFile image_file){
        return ExportExcelUtils.uploadFile(request,image_file);
    }

    /**
     * 加载线下商店
     * @return
     */
    @RequestMapping("/loadmain")
    public String loadmain(){

        return "store/storeInfoList";
    }


    @RequestMapping("/list")
    @ResponseBody
    public Map<String,Object> list(T_store_info t_store_info){
        Map<String,Object> map=new HashMap<>();
        Page<T_store_info> page=storeInfoService.getStoreList(t_store_info);
        map.put("rows", page.getResult());//当前记录数
        map.put("records", page.getTotal());
        map.put("page",page.getPageNum());
        map.put("total",  page.getPages());
        return map;
    }
    @RequestMapping("/toAddOrEdit")
    public String toAddOrEdit(String store_id,Model model){
        T_store_info store_info=new T_store_info();
        if(StringUtils.isNotEmpty(store_id)){
            store_info=storeInfoService.getStoreInfoById(store_id);
        }
        model.addAttribute("store_info",store_info);
        return "store/editStore";
    }

    /**
     * 保存
     * @param t_enterprise
     * @return
     */
    @RequestMapping("/saveEnterpriseInfo")
    @ResponseBody
    public Map<String,Object> saveEnterpriseInfo(T_enterprise t_enterprise,HttpServletRequest request){
        Map<String,Object> map=new HashMap<>();
        t_enterprise.setCertificates_img(AttaUtils.getAllUrl(request,t_enterprise.getCertificates_img()));
        String res=enterpriseService.saveEnterprise(t_enterprise);
        map.put("result",res);
        return map;
    }




}

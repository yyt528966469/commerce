package com.wm.edu.controller.adver;

import com.github.pagehelper.Page;
import com.wm.edu.model.adver.T_adver;
import com.wm.edu.model.adver.T_notice;
import com.wm.edu.service.adver.NoticeService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/notice")
@Controller
public class NoticeController {
    @Autowired
    private NoticeService noticeService;

    @RequestMapping("/main")
    public String main(){
        return "notice/noticeList";
    }
    @RequestMapping("/list")
    @ResponseBody
    public Map<String,Object> list(T_notice t_notice){
        Map<String,Object> map=new HashMap<>();
        Page<T_notice> page=noticeService.getPageList(t_notice);
        map.put("rows", page.getResult());//当前记录数
        map.put("records", page.getTotal());
        map.put("page",page.getPageNum());
        map.put("total",  page.getPages());
        return map;
    }
    @RequestMapping("/toAddOrEdit")
    public String toAddOrEdit(String notice_id, Model model){
        T_notice t_notice=new T_notice();
        if(StringUtils.isNotEmpty(notice_id)){
            t_notice=noticeService.getNoticeById(notice_id);
        }
        model.addAttribute("t_notice",t_notice);
        return "notice/addNotice";
    }

    @RequestMapping("/saveNotice")
    @ResponseBody
    public Map<String,Object> saveNotice(T_notice t_notice){
        Map<String,Object> map=new HashMap<>();
        String res=noticeService.saveNotice(t_notice);
        map.put("result",res);
        return map;
    }
    @RequestMapping("/updateStatus")
    @ResponseBody
    public Map<String,Object> updateStatus(String notice_id,Integer status){
        Map<String,Object> map=new HashMap<>();
        T_notice t_notice=new T_notice();
        t_notice.setStatus(status);
        t_notice.setNotice_id(notice_id);
        String res=noticeService.saveNotice(t_notice);
        map.put("result",res);
        return map;
    }

    @RequestMapping("/deleteNotice")
    @ResponseBody
    public Map<String,Object> deleteNotice(String notice_id){
        Map<String,Object> map=new HashMap<>();
        String res=noticeService.deleteNotice(notice_id);
        map.put("result",res);
        return map;
    }
}

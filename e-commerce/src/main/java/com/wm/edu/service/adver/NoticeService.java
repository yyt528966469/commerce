package com.wm.edu.service.adver;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.wm.edu.mapper.adver.T_noticeMapper;
import com.wm.edu.model.adver.T_notice;
import com.wm.edu.utils.common.AttaUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class NoticeService {

    @Autowired
    private T_noticeMapper t_noticeMapper;

    public Page<T_notice> getPageList(T_notice t_notice){
        Page<T_notice> page=PageHelper.startPage(t_notice.getPage(),t_notice.getRows(),t_notice.getOrderStandesc());
        t_noticeMapper.getNoticeList(t_notice);
        return page;
    }

    public T_notice getNoticeById(String id){
        return t_noticeMapper.selectByPrimaryKey(id);
    }

    public String saveNotice(T_notice t_notice){
        String res="0";
        try {
            if(StringUtils.isNotEmpty(t_notice.getNotice_id())){
                t_noticeMapper.updateByPrimaryKeySelective(t_notice);
            }else {
                t_notice.setNotice_id(AttaUtils.getNo());
                t_notice.setStatus(0);
                t_notice.setCreate_time(new Date());
                t_noticeMapper.insertSelective(t_notice);
            }

        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }
        return res;
    }

    public String deleteNotice(String id){
        String res="0";
        try {
            t_noticeMapper.deleteByPrimaryKey(id);
        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }
        return res;
    }


}

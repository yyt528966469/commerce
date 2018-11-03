package com.wm.edu.service.commerce;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.wm.edu.mapper.commerce.T_commerce_infoMapper;
import com.wm.edu.mapper.commodity.T_commodity_photoMapper;
import com.wm.edu.model.commerce.T_commerce_info;
import com.wm.edu.model.commodity.T_commodity_photo;
import com.wm.edu.model.commodity.T_commodity_type;
import com.wm.edu.service.commodity.CommodityTypeService;
import com.wm.edu.utils.common.AttaUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class CommerceInfoService {
    @Autowired
    private T_commerce_infoMapper t_commerce_infoMapper;
    @Autowired
    private CommodityTypeService commodityTypeService;
    @Autowired
    private T_commodity_photoMapper t_commodity_photoMapper;

    /**
     * 后台分页查询
     * @param t_commerce_info
     * @return
     */
    public Page<T_commerce_info> loadPage(T_commerce_info t_commerce_info){
        Page<T_commerce_info> page=PageHelper.startPage(t_commerce_info.getPage(),t_commerce_info.getRows());
        t_commerce_infoMapper.getCommerceList(t_commerce_info);
        return page;
    }

    /**
     * 获取所有商品类型
     * @return
     */
    public List<T_commodity_type> getAllType(){
        return commodityTypeService.getAllType();
    }

    /**
     * 根据Id获取商品信息
     * @param id
     * @return
     */
    public T_commerce_info getCommerceInfoById(String id){
        return t_commerce_infoMapper.selectByPrimaryKey(id);
    }


    @Transactional
    public String saveCommerceInfo(T_commerce_info t_commerce_info,String[] head_name,HttpServletRequest request){
        String result="0";
        try {
            if(StringUtils.isNotEmpty(t_commerce_info.getCommerce_id())){
                if(head_name!=null&&head_name.length!=0){
                    t_commodity_photoMapper.deletePhoto(t_commerce_info.getCommerce_id(),0);
                }
                t_commerce_infoMapper.updateByPrimaryKeySelective(t_commerce_info);
                List<T_commodity_photo> list=getPhotoList(head_name,t_commerce_info.getCommerce_id(),request);
                if(list.size()>0){
                    t_commodity_photoMapper.insertPhotoList(list);
                }
            }else {
                t_commerce_info.setCommerce_id(AttaUtils.getNo());
                t_commerce_info.setStatus(0);
                t_commerce_info.setCreate_time(new Date());
                t_commerce_infoMapper.insertSelective(t_commerce_info);

                List<T_commodity_photo> list=getPhotoList(head_name,t_commerce_info.getCommerce_id(),request);
                if(list.size()>0){
                    t_commodity_photoMapper.insertPhotoList(list);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            result="1";
            throw new RuntimeException();
        }
        return result;
    }

    private List<T_commodity_photo> getPhotoList(String[] head_name,  String commodity_id, HttpServletRequest request){
        List<T_commodity_photo> photoList=new ArrayList<>();
        if(head_name!=null&&head_name.length!=0){
            for (String head:head_name){
                T_commodity_photo photo=new T_commodity_photo();
                photo.setPhoto_id(AttaUtils.getNo());
                photo.setCommodity_id(commodity_id);
                photo.setImg_type(0);
                String[] arr=head.split(",");
                photo.setImg_url(AttaUtils.getAllUrl(request,arr[0]));
                photo.setSort(Integer.parseInt(arr[1]));
                photoList.add(photo);
            }
        }


        return photoList;
    }

    public String deleteCommerce(String commerce_id){
        String res="0";
        try {
            t_commodity_photoMapper.deletePhoto(commerce_id,0);
            t_commerce_infoMapper.deleteByPrimaryKey(commerce_id);
        }catch (Exception e){
            e.printStackTrace();
            res="1";
        }
        return res;
    }

    public String updateStatus(T_commerce_info t_commerce_info){
        String result="0";
        try {
            t_commerce_infoMapper.updateByPrimaryKeySelective(t_commerce_info);
        }catch (Exception e){
            e.printStackTrace();
            result="1";
        }
        return result;
    }


}

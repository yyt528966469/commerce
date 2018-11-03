package com.wm.edu.model.commerce;

import com.wm.edu.model.base.PageEntity;
import com.wm.edu.model.commodity.T_commodity_photo;
import com.wm.edu.model.commodity.T_commodity_type;

import java.util.Date;
import java.util.List;

public class T_commerce_info extends PageEntity {
    private String commerce_id;

    private String commerce_name;

    private String commerce_type;

    private Float price;

    private String img_src;

    private String commerce_introduction;

    private Integer status;

    private String reserved1;

    private String reserved2;

    private Date create_time;

    private Float old_price;

    private Float postage_price;

    private Integer stock;

    private String commerce_details;

    private T_commodity_type t_commodity_type;

    private List<T_commodity_photo> photoList;

    public List<T_commodity_photo> getPhotoList() {
        return photoList;
    }

    public void setPhotoList(List<T_commodity_photo> photoList) {
        this.photoList = photoList;
    }

    public T_commodity_type getT_commodity_type() {
        return t_commodity_type;
    }

    public void setT_commodity_type(T_commodity_type t_commodity_type) {
        this.t_commodity_type = t_commodity_type;
    }

    public String getCommerce_id() {
        return commerce_id;
    }

    public void setCommerce_id(String commerce_id) {
        this.commerce_id = commerce_id == null ? null : commerce_id.trim();
    }

    public String getCommerce_name() {
        return commerce_name;
    }

    public void setCommerce_name(String commerce_name) {
        this.commerce_name = commerce_name == null ? null : commerce_name.trim();
    }

    public String getCommerce_type() {
        return commerce_type;
    }

    public void setCommerce_type(String commerce_type) {
        this.commerce_type = commerce_type == null ? null : commerce_type.trim();
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getImg_src() {
        return img_src;
    }

    public void setImg_src(String img_src) {
        this.img_src = img_src == null ? null : img_src.trim();
    }

    public String getCommerce_introduction() {
        return commerce_introduction;
    }

    public void setCommerce_introduction(String commerce_introduction) {
        this.commerce_introduction = commerce_introduction == null ? null : commerce_introduction.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getReserved1() {
        return reserved1;
    }

    public void setReserved1(String reserved1) {
        this.reserved1 = reserved1 == null ? null : reserved1.trim();
    }

    public String getReserved2() {
        return reserved2;
    }

    public void setReserved2(String reserved2) {
        this.reserved2 = reserved2 == null ? null : reserved2.trim();
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Float getOld_price() {
        return old_price;
    }

    public void setOld_price(Float old_price) {
        this.old_price = old_price;
    }

    public Float getPostage_price() {
        return postage_price;
    }

    public void setPostage_price(Float postage_price) {
        this.postage_price = postage_price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getCommerce_details() {
        return commerce_details;
    }

    public void setCommerce_details(String commerce_details) {
        this.commerce_details = commerce_details == null ? null : commerce_details.trim();
    }
}
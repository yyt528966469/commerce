package com.wm.edu.model.commerce;

import com.wm.edu.model.base.PageEntity;

import java.util.Date;

public class T_translate extends PageEntity {
    private String translate_id;

    private String translate_name;

    private Float price;

    private Integer status;

    private String translate_url;

    private Date create_time;

    private String introduction;

    private String img_url;

    private String reserved1;

    private String translate_type;

    private T_translate_type t_translate_type;

    public T_translate_type getT_translate_type() {
        return t_translate_type;
    }

    public void setT_translate_type(T_translate_type t_translate_type) {
        this.t_translate_type = t_translate_type;
    }

    public String getTranslate_type() {
        return translate_type;
    }

    public void setTranslate_type(String translate_type) {
        this.translate_type = translate_type;
    }

    public String getTranslate_id() {
        return translate_id;
    }

    public void setTranslate_id(String translate_id) {
        this.translate_id = translate_id == null ? null : translate_id.trim();
    }

    public String getTranslate_name() {
        return translate_name;
    }

    public void setTranslate_name(String translate_name) {
        this.translate_name = translate_name == null ? null : translate_name.trim();
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getTranslate_url() {
        return translate_url;
    }

    public void setTranslate_url(String translate_url) {
        this.translate_url = translate_url == null ? null : translate_url.trim();
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url == null ? null : img_url.trim();
    }

    public String getReserved1() {
        return reserved1;
    }

    public void setReserved1(String reserved1) {
        this.reserved1 = reserved1 == null ? null : reserved1.trim();
    }
}
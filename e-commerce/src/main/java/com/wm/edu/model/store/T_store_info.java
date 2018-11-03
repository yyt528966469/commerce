package com.wm.edu.model.store;

import com.wm.edu.model.base.PageEntity;

import java.util.Date;

public class T_store_info extends PageEntity {
    private String store_id;

    private String store_name;

    private String img_src;

    private String work_time;

    private String start_str;

    private String end_str;

    private Float longitude;

    private Float latitude;

    private String address;

    private String province;

    private String city;

    private String county;

    private String store_intro;

    private Date create_time;

    private String phone;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public String getStore_id() {
        return store_id;
    }

    public void setStore_id(String store_id) {
        this.store_id = store_id == null ? null : store_id.trim();
    }

    public String getStore_name() {
        return store_name;
    }

    public void setStore_name(String store_name) {
        this.store_name = store_name == null ? null : store_name.trim();
    }

    public String getImg_src() {
        return img_src;
    }

    public void setImg_src(String img_src) {
        this.img_src = img_src == null ? null : img_src.trim();
    }

    public String getWork_time() {
        return work_time;
    }

    public void setWork_time(String work_time) {
        this.work_time = work_time;
    }

    public String getStart_str() {
        return start_str;
    }

    public void setStart_str(String start_str) {
        this.start_str = start_str;
    }

    public String getEnd_str() {
        return end_str;
    }

    public void setEnd_str(String end_str) {
        this.end_str = end_str;
    }

    public Float getLongitude() {
        return longitude;
    }

    public void setLongitude(Float longitude) {
        this.longitude = longitude;
    }

    public Float getLatitude() {
        return latitude;
    }

    public void setLatitude(Float latitude) {
        this.latitude = latitude;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county == null ? null : county.trim();
    }

    public String getStore_intro() {
        return store_intro;
    }

    public void setStore_intro(String store_intro) {
        this.store_intro = store_intro == null ? null : store_intro.trim();
    }
}
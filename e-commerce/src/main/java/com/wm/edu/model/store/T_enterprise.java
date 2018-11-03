package com.wm.edu.model.store;

import java.util.Date;

public class T_enterprise {
    private String enterprise_id;

    private String enterprise_name;

    private String type;

    private String store_name;

    private String certificates_img;

    private Date create_time;

    public String getEnterprise_id() {
        return enterprise_id;
    }

    public void setEnterprise_id(String enterprise_id) {
        this.enterprise_id = enterprise_id == null ? null : enterprise_id.trim();
    }

    public String getEnterprise_name() {
        return enterprise_name;
    }

    public void setEnterprise_name(String enterprise_name) {
        this.enterprise_name = enterprise_name == null ? null : enterprise_name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getStore_name() {
        return store_name;
    }

    public void setStore_name(String store_name) {
        this.store_name = store_name == null ? null : store_name.trim();
    }

    public String getCertificates_img() {
        return certificates_img;
    }

    public void setCertificates_img(String certificates_img) {
        this.certificates_img = certificates_img == null ? null : certificates_img.trim();
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }
}
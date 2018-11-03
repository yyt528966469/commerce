package com.wm.edu.model.order;

import java.util.Date;

public class T_refund_apply {
    private String id;

    private String c_user_id;

    private String c_reason;

    private Date create_time;

    private Integer status;

    private String s_reason;

    private Date sh_time;

    private String order_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getC_user_id() {
        return c_user_id;
    }

    public void setC_user_id(String c_user_id) {
        this.c_user_id = c_user_id == null ? null : c_user_id.trim();
    }

    public String getC_reason() {
        return c_reason;
    }

    public void setC_reason(String c_reason) {
        this.c_reason = c_reason == null ? null : c_reason.trim();
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getS_reason() {
        return s_reason;
    }

    public void setS_reason(String s_reason) {
        this.s_reason = s_reason == null ? null : s_reason.trim();
    }

    public Date getSh_time() {
        return sh_time;
    }

    public void setSh_time(Date sh_time) {
        this.sh_time = sh_time;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id == null ? null : order_id.trim();
    }
}
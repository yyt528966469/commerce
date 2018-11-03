package com.wm.edu.model.enums;

public enum ReturnPayEnum {
    r1("错拍/多拍/不想要了"),r2("协商一致退款"),r3("缺货"),r4("未按指定时间发货"),r5("其他");

    private String name;
    private ReturnPayEnum(String name){
        this.name=name;
    }

    public String getName() {
        return name;
    }
}

package com.zhixiang.health.modules.sys.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 进入系统方式，0 _SELF，1 _BLANK
 * @Date: 2020-07-02
 */
public enum SysSystemShowTypeEnum implements BaseEnum<String> {

    // SELF
    SELF("0", "SELF"),
    // BLANK
    BLANK("1", "BLANK");

    private String value;
    private String desc;

    SysSystemShowTypeEnum(String value, String desc) {
        this.value = value;
        this.desc = desc;
    }

    @Override
    public String getValue() {
        return this.value;
    }

    @Override
    public String getDesc() {
        return this.desc;
    }
}

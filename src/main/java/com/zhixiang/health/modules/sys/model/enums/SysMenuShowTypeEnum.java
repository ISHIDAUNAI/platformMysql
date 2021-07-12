package com.zhixiang.health.modules.sys.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 页面展示方式  0 HOME  1 SCREEN
 * @Date: 2020-07-02
 */
public enum SysMenuShowTypeEnum implements BaseEnum<String> {

    // HOME
    HOME("0", "HOME"),
    // SCREEN
    SCREEN("1", "SCREEN");

    private String value;
    private String desc;

    SysMenuShowTypeEnum(String value, String desc) {
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

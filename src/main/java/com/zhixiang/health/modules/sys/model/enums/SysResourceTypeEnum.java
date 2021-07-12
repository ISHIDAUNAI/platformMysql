package com.zhixiang.health.modules.sys.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 资源类型 1:System 2:Menu 3:Button
 * @Date: 2020-06-24
 */
public enum SysResourceTypeEnum implements BaseEnum<String> {

    // SYSTEM
    SYSTEM("1", "SYSTEM"),
    // MENU
    MENU("2", "MENU"),
    // BUTTON
    BUTTON("3", "BUTTON");

    private String value;
    private String desc;

    SysResourceTypeEnum(String value, String desc) {
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

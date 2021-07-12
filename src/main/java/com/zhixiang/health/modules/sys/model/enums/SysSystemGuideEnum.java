package com.zhixiang.health.modules.sys.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 是否是主页，1是，0否
 * @Date: 2020-06-24
 */
public enum SysSystemGuideEnum implements BaseEnum<String> {

    // 是引导页
    YES("1", "是引导页"),
    // 非引导页
    NO("0", "非引导页");

    private String value;
    private String desc;

    SysSystemGuideEnum(String value, String desc) {
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

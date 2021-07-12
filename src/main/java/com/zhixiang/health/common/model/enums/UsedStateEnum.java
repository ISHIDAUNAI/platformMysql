package com.zhixiang.health.common.model.enums;

/**
 * @author Admin
 * @Description: 启用状态 1启用 0禁用
 * @Date: 2020-04-20
 */
public enum UsedStateEnum implements BaseEnum<String> {

    // 启用
    YES("1", "启用"),
    // 停用
    NO("0", "停用");

    private String value;
    private String desc;

    UsedStateEnum(String value, String desc) {
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

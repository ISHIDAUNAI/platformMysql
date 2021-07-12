package com.zhixiang.health.common.model.enums;

/**
 * @author Admin
 * @Description: 性别枚举
 * @Date: 2020-04-20
 */
public enum SexEnum implements BaseEnum<String> {

    // 男
    MAN("1", "男"),
    // 女
    WOMAN("0", "女");

    private String value;
    private String desc;

    SexEnum(String value, String desc) {
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

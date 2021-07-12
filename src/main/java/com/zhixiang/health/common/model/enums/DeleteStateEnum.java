package com.zhixiang.health.common.model.enums;

/**
 * @author Admin
 * @Description: 使用状态枚举
 * @Date: 2020-04-20
 */
public enum DeleteStateEnum implements BaseEnum<String> {

    // 已删除
    YES("1", "已删除"),
    // 未删除
    NO("0", "未删除");

    private String value;
    private String desc;

    DeleteStateEnum(String value, String desc) {
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

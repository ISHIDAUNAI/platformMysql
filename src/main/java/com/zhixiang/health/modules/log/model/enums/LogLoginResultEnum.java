package com.zhixiang.health.modules.log.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 登录日志
 * @Date: 2020-07-08
 */
public enum LogLoginResultEnum implements BaseEnum<String> {

    // 失败
    ERROR("0", "失败"),
    // 成功
    SUCCESS("1", "成功");

    private String value;
    private String desc;

    LogLoginResultEnum(String value, String desc) {
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

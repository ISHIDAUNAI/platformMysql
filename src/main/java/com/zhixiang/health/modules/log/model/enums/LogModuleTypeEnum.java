package com.zhixiang.health.modules.log.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 日志记录模块类型
 * @Date: 2020-06-24
 */
public enum LogModuleTypeEnum implements BaseEnum<String> {

    // UNKNOWN
    UNKNOWN("00", "UNKNOWN"),
    // 系统配置模块
    SYS("01", "系统配置模块"),
    // 日志调阅模块
    LOG("02", "日志调阅模块");

    private String value;
    private String desc;

    LogModuleTypeEnum(String value, String desc) {
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

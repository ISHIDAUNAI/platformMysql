package com.zhixiang.health.modules.log.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 日志操作事件类型
 * @Date: 2020-06-24
 */
public enum LogEventTypeEnum implements BaseEnum<String> {

    // 综合操作
    UNKNOWN("0", "综合操作"),
    // 查找操作
    SELECT("1", "查找操作"),
    // 删除操作
    DELETE("2", "删除操作"),
    // 修改操作
    UPDATE("3", "修改操作"),
    // 新增操作
    INSERT("4", "新增操作");

    private String value;
    private String desc;

    LogEventTypeEnum(String value, String desc) {
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

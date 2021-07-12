package com.zhixiang.health.modules.sys.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description: 请求方法  1:Get，2:Post，3:Put，4:Delete
 * @Date: 2020-06-24
 */
public enum SysButtonMethodEnum implements BaseEnum<String> {

    // GET
    GET("1", "GET"),
    // POST
    POST("2", "POST"),
    // PUT
    PUT("3", "PUT"),
    // DELETE
    DELETE("4", "DELETE");

    private String value;
    private String desc;

    SysButtonMethodEnum(String value, String desc) {
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

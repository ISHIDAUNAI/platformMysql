package com.zhixiang.health.modules.sys.model.enums;

import com.zhixiang.health.common.model.enums.BaseEnum;

/**
 * @author Admin
 * @Description:
 *      机构类型，0开头为机构，1开头为医院，
 *      01 省级机构 02 市级机构 03 区级机构 04 社区机构
 *      11 省直医院 12 市直医院 13民营委管 14区直医院 15社区医院
 * @Date: 2020-07-16
 */
public enum SysDeptTypeEnum implements BaseEnum<String> {

    // 省级机构
    J01("01", "省级机构"),
    // 市级机构
    J02("02", "市级机构"),
    // 区级机构
    J03("03", "区级机构"),
    // 社区机构
    J04("04", "社区机构"),
    // 省直医院
    Y11("11", "省直医院"),
    // 市直医院
    Y12("12", "市直医院"),
    // 民营委管
    Y13("13", "民营委管"),
    // 区直医院
    Y14("14", "区直医院"),
    // 社区医院
    Y15("15", "社区医院")
    ;

    private String value;
    private String desc;

    SysDeptTypeEnum(String value, String desc) {
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

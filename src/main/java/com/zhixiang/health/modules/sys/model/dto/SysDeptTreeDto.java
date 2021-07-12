package com.zhixiang.health.modules.sys.model.dto;

import com.zhixiang.health.common.model.dto.BaseTreeDto;
import com.zhixiang.health.modules.sys.model.enums.SysDeptTypeEnum;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 机构树
 * @author Admin
 * @since 2020-04-28
 */
@Data
@Accessors(chain = true)
public class SysDeptTreeDto extends BaseTreeDto<SysDeptTreeDto> {

    /**
     * 部门名称
     */
    private String name;

    /**
     * 机构部门简称
     */
    private String nameSimple;

    /**
     * 机构拼音码
     */
    private String namePy;

    /**
     * 机构五笔码
     */
    private String nameWb;

    /**
     * 机构类型
     */
    private SysDeptTypeEnum type;

    /**
     * 机构级别
     */
    private Integer grade;

    /**
     * 机构编号
     */
    private String code;

    /**
     * 排序值
     */
    private Long sort;

    /**
     * 负责人
     */
    private String relationName;

    /**
     * 联系电话1
     */
    private String relationPhone1;

    /**
     * 联系电话2
     */
    private String relationPhone2;

    /**
     * 联系手机
     */
    private String relationMobile;

    /**
     * 详细地址
     */
    private String relationAddress;
}

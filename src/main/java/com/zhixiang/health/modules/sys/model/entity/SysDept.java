package com.zhixiang.health.modules.sys.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.zhixiang.health.common.model.entity.BaseEntity;
import com.zhixiang.health.modules.sys.model.enums.SysDeptTypeEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 部门信息
 * </p>
 *
 * @author Admin
 * @since 2020-04-28
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
public class SysDept extends BaseEntity<SysDept> {

    private static final long serialVersionUID=1L;

    /**
     * 主键ID
     */
    @TableId(value = "id", type = IdType.ASSIGN_UUID)
    private String id;

    /**
     * 上级部门ID, null为顶级部门
     */
    private String parentId;

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

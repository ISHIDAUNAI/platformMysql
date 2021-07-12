package com.zhixiang.health.common.model.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.zhixiang.health.common.model.enums.DeleteStateEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.apache.ibatis.type.JdbcType;
import org.hibernate.validator.constraints.Length;

import java.sql.Timestamp;
import java.util.Date;

/**
 * @author Admin
 * @Description: 基础实体信息
 * @Date: 2020-04-20
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
public abstract class BaseEntity<T extends BaseEntity<?>> extends Model<T> {

    /**
     * 创建日期
     */
    protected Timestamp createDate;

    /**
     * 创建人
     */
    @TableField(fill = FieldFill.INSERT)
    protected String createBy;

    /**
     * 最后修改日期
     */
    @TableField(fill = FieldFill.UPDATE, jdbcType = JdbcType.DATE)
    protected Timestamp updateDate;

    /**
     * 最后修改人
     */
    @TableField(fill = FieldFill.UPDATE)
    protected String updateBy;

    /**
     * 备注
     */
    @Length(max = 100, message = "备注长度不能超过100")
    protected String remark;

    /**
     * 使用状态 1正在使用 0未使用
     */
    @TableLogic
    protected DeleteStateEnum deleteState;
}

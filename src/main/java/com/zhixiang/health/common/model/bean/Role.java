package com.zhixiang.health.common.model.bean;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author Admin
 * @Description: 角色信息
 * @Date: 2020-04-23
 */
@Data
@Accessors(chain = true)
public class Role implements Serializable {

    /**
     * 角色id
     */
    private String id;

    /**
     * 角色名称
     */
    private String name;

    /**
     * 角色编码
     */
    private String code;
}

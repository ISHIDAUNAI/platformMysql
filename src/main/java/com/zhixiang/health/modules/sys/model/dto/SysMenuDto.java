package com.zhixiang.health.modules.sys.model.dto;

import com.zhixiang.health.modules.sys.model.entity.SysMenu;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 菜单配置
 * </p>
 *
 * @author Admin
 * @since 2020-07-07
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
public class SysMenuDto extends SysMenu {

    /**
     * 资源id sys_resource.id
     */
    private String resourceId;

    /**
     * 父资源id sys_resource.parent_id
     */
    private String resourceParentId;
}

package com.zhixiang.health.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zhixiang.health.common.utils.TreeUtil;
import com.zhixiang.health.modules.sys.model.dto.SysDeptTreeDto;
import com.zhixiang.health.modules.sys.model.entity.SysDept;
import com.zhixiang.health.modules.sys.mapper.SysDeptMapper;
import com.zhixiang.health.modules.sys.service.ISysDeptService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhixiang.health.modules.sys.service.ISysUserDeptService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 部门信息 服务实现类
 * </p>
 *
 * @author Admin
 * @since 2020-04-28
 */
@Service
public class SysDeptServiceImpl extends ServiceImpl<SysDeptMapper, SysDept> implements ISysDeptService {

    @Resource
    private SysDeptMapper mapper;

    @Resource
    private ISysUserDeptService sysUserDeptService;

    /**
     * 获取所有信息
     * @return list
     */
    @Override
    public List<SysDept> list() {
        QueryWrapper<SysDept> wrapper = new QueryWrapper<>();
        wrapper.orderByAsc("sort");

        return super.list(wrapper);
    }

    /**
     * 获取树形结构数据
     * @return 树形结构数据集合
     */
    @Override
    public List<SysDeptTreeDto> listTree() {
        List<SysDeptTreeDto> treeDtoList = mapper.listTreeDto();
        return TreeUtil.build(treeDtoList);
    }

    /**
     * save
     * @param entity entity
     * @return boolean
     */
    @Override
    public boolean save(SysDept entity) {
        entity.setId(entity.getCode());

        return super.save(entity);
    }

    /**
     * 删除部门信息
     * @param id 部门id
     * @return
     */
    @Transactional(rollbackFor=Exception.class)
    @Override
    public boolean removeById(Serializable id) {
        String deptId = id.toString();

        // 校验下级机构信息
        int num = super.count(
                new QueryWrapper<>(
                        new SysDept().setParentId(deptId)
                )
        );
        if (num > 0) {
            return false;
        }

        // 校验部门中的用户关联信息
        long userNum = sysUserDeptService.countByDeptId(deptId);
        if (userNum > 0) {
            return false;
        }

        return super.removeById(id);
    }

    /**
     * 校验部门编码是否可用
     * @param dept 部门信息
     * @return true 部门编码可用
     */
    @Override
    public Boolean checkCode(SysDept dept) {
        return mapper.checkCode(dept) <= 0;
    }
}

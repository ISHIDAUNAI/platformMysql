package com.zhixiang.health.common.utils;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.zhixiang.health.common.model.dto.BaseTreeDto;

import java.util.List;

/**
 * 树形结构构造器
 * @author Admin
 * @since 2020-04-28
 */
public class TreeUtil {

    /**
     * 构造树形结构数据，最上层数据parentId为0
     * @param sourceNodeList list数据
     * @param <T> 继承自BaseTreeDto
     * @return 树形结构数据
     */
    public static <T extends BaseTreeDto> List<T> build(List<T> sourceNodeList) {
        return TreeUtil.build(sourceNodeList, StrUtil.EMPTY);
    }

    /**
     * 构造树形结构数据
     * 入参的nodeList结构不会改变
     * @param sourceNodeList list数据
     * @param root 根节点信息
     * @param <T> 继承自BaseTreeDto
     * @return 树形结构数据
     */
    public static <T extends BaseTreeDto> List<T> build(List<T> sourceNodeList, String root) {
        List<T> nodeList = CollUtil.newArrayList();

        if (CollUtil.isEmpty(sourceNodeList)) {
            return nodeList;
        } else {
            sourceNodeList.forEach(node -> {
                // 将list中的数据深复制，避免原始list结构变化
                nodeList.add( ObjectUtil.cloneByStream(node) );
            });
        }

        List<T> treeList = CollUtil.newArrayList();
        nodeList.forEach(node -> {
            String parentID = StrUtil.isNotEmpty(node.getParentId()) ? node.getParentId() : StrUtil.EMPTY;
            if (parentID.equals(root)) {
                treeList.add(node);
            }

            nodeList.forEach(nodeChildren -> {
                String childParentId =  StrUtil.isNotEmpty(nodeChildren.getParentId()) ? nodeChildren.getParentId() : StrUtil.EMPTY;
                if (childParentId.equals(node.getId())) {
                    node.addChildren(nodeChildren);
                }
            });
        });

        return treeList;
    }

}

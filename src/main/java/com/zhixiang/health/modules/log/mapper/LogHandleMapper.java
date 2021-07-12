package com.zhixiang.health.modules.log.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zhixiang.health.modules.log.model.entity.LogHandle;
import com.zhixiang.health.modules.log.model.param.LogSearchParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 操作日志信息 Mapper 接口
 * </p>
 *
 * @author Admin
 * @since 2020-07-07
 */
public interface LogHandleMapper extends BaseMapper<LogHandle> {

    /**
     * 获取分页信息
     * @param param param
     * @return 分页信息
     */
    List<LogHandle> pageList(LogSearchParam param);

    /**
     * 获取分页信息
     * @param param param
     * @return 分页信息
     */
    long pageTotal(LogSearchParam param);
}

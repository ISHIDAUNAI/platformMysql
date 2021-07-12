package com.zhixiang.health.modules.log.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zhixiang.health.common.http.pagination.Page;
import com.zhixiang.health.modules.log.model.dto.LogHandleDto;
import com.zhixiang.health.modules.log.model.entity.LogHandle;
import com.zhixiang.health.modules.log.model.param.LogSearchParam;

/**
 * <p>
 * 操作日志信息 服务类
 * </p>
 *
 * @author Admin
 * @since 2020-07-07
 */
public interface ILogHandleService extends IService<LogHandle> {

    /**
     * 获取分页信息
     * @param param param
     * @return 分页信息
     */
    Page<LogHandleDto> page(LogSearchParam param);
}

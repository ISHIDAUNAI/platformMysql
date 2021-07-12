package com.zhixiang.health.modules.log.service;

import com.zhixiang.health.modules.log.model.dto.LogCountHandleDto;
import com.zhixiang.health.modules.log.model.dto.LogCountLoginDto;

/**
 * <p>
 * 统计分析
 * </p>
 *
 * @author Admin
 * @since 2020-07-09
 */
public interface ILogCountService {

    /**
     * 登录次数统计
     * @return 登录次数
     */
    LogCountLoginDto login();

    /**
     * 操作日志统计
     * @param year 年
     * @return 统计数量
     */
    LogCountHandleDto handle(Integer year);
}

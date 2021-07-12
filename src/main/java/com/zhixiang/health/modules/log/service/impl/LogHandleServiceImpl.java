package com.zhixiang.health.modules.log.service.impl;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhixiang.health.common.http.pagination.Page;
import com.zhixiang.health.modules.log.mapper.LogHandleMapper;
import com.zhixiang.health.modules.log.model.dto.LogHandleDto;
import com.zhixiang.health.modules.log.model.entity.LogHandle;
import com.zhixiang.health.modules.log.model.param.LogSearchParam;
import com.zhixiang.health.modules.log.service.ILogHandleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 操作日志信息 服务实现类
 * </p>
 *
 * @author Admin
 * @since 2020-07-07
 */
@Service
public class LogHandleServiceImpl extends ServiceImpl<LogHandleMapper, LogHandle> implements ILogHandleService {

    @Resource
    private LogHandleMapper mapper;

    /**
     * 获取分页信息
     * @param param param
     * @return 分页信息
     */
    @Override
    public Page<LogHandleDto> page(LogSearchParam param) {
        param.renderPage();

        List<LogHandleDto> resultList = CollUtil.newArrayList();
        List<LogHandle> list = mapper.pageList(param);
        if (CollUtil.isNotEmpty(list)) {
            list.forEach(log ->
                    resultList.add(LogHandleDto.convertFromEntity(log))
            );
        }

        Page<LogHandleDto> pageResult = new Page<>();
        pageResult.setRecords(resultList)
                .setTotal(mapper.pageTotal(param));

        return pageResult;
    }
}

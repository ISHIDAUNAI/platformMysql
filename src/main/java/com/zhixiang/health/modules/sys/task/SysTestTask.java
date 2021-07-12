package com.zhixiang.health.modules.sys.task;

import com.zhixiang.health.common.task.BaseTask;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * <p>
 * 定时任务测试
 * </p>
 *
 * @author Admin
 * @since 2020-04-26
 */
@Slf4j
@Component
public class SysTestTask extends BaseTask {

    /**
     * 执行任务
     */
    @Override
    public void run() {
        log.info(this.getClass().getName() + " run");
    }
}

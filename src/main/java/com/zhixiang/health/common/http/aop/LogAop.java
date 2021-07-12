package com.zhixiang.health.common.http.aop;

import cn.hutool.core.date.DateUtil;
import com.zhixiang.health.common.model.annotation.Log;
import com.zhixiang.health.common.utils.UserUtil;
import com.zhixiang.health.modules.log.model.entity.LogHandle;
import com.zhixiang.health.modules.log.service.ILogHandleService;
import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.util.threads.ThreadPoolExecutor;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Date;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/**
 * log aop
 *
 * @author Admin
 * @since 2020-07-07
 */
@Slf4j
@Aspect
@Component
public class LogAop {

    /**
     * 线程池
     */
//    private static ExecutorService executorService =
//            Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());

    ThreadPoolExecutor threadPool = new ThreadPoolExecutor(
            20,40,10, TimeUnit.SECONDS,
            new ArrayBlockingQueue<Runnable>(20),
            new ThreadPoolExecutor.DiscardOldestPolicy());

    @Resource
    private ILogHandleService logHandleService;

    /**
     * 拦截规则
     */
    @Pointcut("@annotation(com.zhixiang.health.common.model.annotation.Log)")
    public void pointCutR() {}

    /**
     * 拦截器具体实现
     * @param jp 切点
     */
    @Before("pointCutR()")
    public void methodRHandler(JoinPoint jp) {
        MethodSignature signature = (MethodSignature) jp.getSignature();
        Method method = signature.getMethod();
        Log logAnnotation = method.getAnnotation(Log.class);

        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        String userName = UserUtil.getUserName(request);

        threadPool.execute( () -> {
            try {
                Date date = new Date();
                LogHandle logHandle = new LogHandle()
                        .setYear(DateUtil.thisYear())
                        .setMonth(DateUtil.thisMonth() + 1)
                        .setDay(DateUtil.thisDayOfMonth())
                        .setUserName(userName)
                        .setDetail(logAnnotation.value())
                        .setMethod(jp.getSignature().getDeclaringTypeName() + "." + jp.getSignature().getName())
                        .setUrl(request.getRequestURL().toString())
                        .setHttpType(request.getMethod())
                        .setArgs(Arrays.toString(jp.getArgs()))
                        .setEventType(logAnnotation.eventType())
                        .setModuleType(logAnnotation.moduleType());
                logHandle.setCreateDate(new Timestamp(date.getTime()));
                logHandle.setCreateBy(userName);

                logHandleService.save(logHandle);
            } catch (Exception e) {

                log.error(this.getClass().getName() + "." + Thread.currentThread().getStackTrace()[1].getMethodName(), e);
            }
        });
    }

}

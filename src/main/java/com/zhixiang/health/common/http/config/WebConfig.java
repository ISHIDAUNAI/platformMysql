package com.zhixiang.health.common.http.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;
import java.util.List;

/**
 * WebMvcConfigurer
 *
 * @author Admin
 * @since 2020-05-29
 */
@Slf4j
@Configuration
public class WebConfig implements WebMvcConfigurer {

    /**
     * 将token转换为 UserParam将token转换为 UserParam
     */
    @Resource
    private TokenArgumentResolverConfig tokenArgumentResolverConfig;

    /**
     * 参数转换
     * @param argumentResolvers argumentResolvers
     */
    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        argumentResolvers.add(tokenArgumentResolverConfig);
    }
}

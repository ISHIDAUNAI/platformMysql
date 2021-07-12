package com.zhixiang.health.common.config.mybatis;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.pagination.optimize.JsqlParserCountOptimize;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author Admin
 * @Description: MybatisPlusConfig
 * @Date: 2020-04-20
 */
@Configuration
@EnableTransactionManagement
@MapperScan("com.zhixiang.health.modules.*.mapper")
public class MybatisPlusConfig {

    /**
     * 分页插件
     * @return PaginationInterceptor
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor paginationInterceptor = new PaginationInterceptor();

        // 开启 count 的 join 优化,只针对部分 left join
        paginationInterceptor.setCountSqlParser(new JsqlParserCountOptimize(true));

        return paginationInterceptor;
    }

}

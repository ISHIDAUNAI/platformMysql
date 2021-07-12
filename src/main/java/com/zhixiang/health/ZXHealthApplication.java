package com.zhixiang.health;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;

/**
 * 智享大健康开发框架
 *
 * @author Admin
 * @since 2020-07-09
 */
@SpringBootApplication
@ComponentScan(basePackages = {"com.zhixiang"})
@ServletComponentScan
public class ZXHealthApplication {

    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(ZXHealthApplication.class);
        application.setBannerMode(Banner.Mode.OFF);
        application.run(args);
    }

}

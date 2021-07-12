package com.zhixiang.health.common.utils;

import java.util.UUID;

/**
 * @author Admin
 * @Description: 生成UUID字符串工具类
 * @Date: 2018/12/28
 */
public class UUIDUtil {

    public static String value(){
        return UUID.randomUUID().toString().replace("-", "");
    }
}

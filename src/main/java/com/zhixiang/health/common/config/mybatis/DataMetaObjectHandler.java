package com.zhixiang.health.common.config.mybatis;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.zhixiang.health.common.utils.UserUtil;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;


/**
 * @author Admin
 * @Description: mybatis 自动填充字段
 * @Date: 2020-06-02
 */
@Component
public class DataMetaObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        Object createBy = getFieldValByName("createBy", metaObject);
        if (!StringUtils.isEmpty(createBy)) {
            return;
        }

        String userName = StrUtil.EMPTY;
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if (null != attributes) {
            userName = UserUtil.getUserName(attributes.getRequest());
        }

        setFieldValByName("createBy", userName, metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        setFieldValByName("updateDate", new Date(), metaObject);

        Object updateBy = getFieldValByName("updateBy", metaObject);
        if (!StringUtils.isEmpty(updateBy)) {
            return;
        }

        String userName = StrUtil.EMPTY;
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if (null != attributes) {
            userName = UserUtil.getUserName(attributes.getRequest());
        }

        setFieldValByName("updateBy", userName, metaObject);
    }
}

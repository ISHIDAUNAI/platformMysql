package com.zhixiang.health.common.oauth.bean;

/**
 * @author Admin
 * @Description: OAuth2 权限认证 常量定义
 * @Date: 2020-04-22
 */
public interface SecurityConstants {

    /** oauth2 认证信息 start */
    String CLIENT_ID = "ZX_HEALTH_CLIENT_ID";
    String CLIENT_SECRET = "ZX_HEALTH_CLIENT_SECRET";
    String GRANT_TYPES_PASSWORD = "password";
    String GRANT_TYPES_REFRESH_TOKEN = "refresh_token";
    String SCOPES = "all";
    /** oauth2 认证信息 end */

    String JWT_KEY = "ZX_HEALTH_JWT_KEY";

    /** redisTokenStore pre */
    String TOKEN_STORE_PRE = "ZX_HEALTH_OAUTH_";

    /** token请求头名称 */
    String REQ_HEADER = "Authorization";

    /**  token分割符 */
    String TOKEN_SPLIT = "Bearer ";

    /**
     * 基础角色
     */
    String BASE_ROLE = "ROLE_BASE";
}

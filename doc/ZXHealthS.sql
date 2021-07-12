prompt PL/SQL Developer import file
prompt Created on 2020年7月17日 by wang
set feedback off
set define off
prompt Creating LOG_HANDLE...
create table LOG_HANDLE
(
  id           VARCHAR2(32) not null,
  year         NUMBER(4),
  month        NUMBER(2),
  day          NUMBER(2),
  user_name    VARCHAR2(64),
  detail       VARCHAR2(255),
  method       VARCHAR2(255),
  url          VARCHAR2(255),
  http_type    VARCHAR2(255),
  args         VARCHAR2(1024),
  event_type   CHAR(1) default '0',
  module_type  CHAR(2) default '0',
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
partition by range (CREATE_DATE)
(
  partition LOG_HANDLE_20200101 values less than (TO_DATE(' 2020-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20210101 values less than (TO_DATE(' 2021-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20220101 values less than (TO_DATE(' 2022-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20230101 values less than (TO_DATE(' 2023-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20240101 values less than (TO_DATE(' 2024-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20250101 values less than (TO_DATE(' 2025-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20260101 values less than (TO_DATE(' 2026-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20270101 values less than (TO_DATE(' 2027-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20280101 values less than (TO_DATE(' 2028-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_20290101 values less than (TO_DATE(' 2029-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    ),
  partition LOG_HANDLE_MAXVALUE values less than (MAXVALUE)
    tablespace ZXHEALTH_S_SPACE
    pctfree 10
    initrans 1
    maxtrans 255
    storage
    (
      initial 64K
      next 1M
      minextents 1
      maxextents unlimited
    )
);
comment on table LOG_HANDLE
  is '操作日志信息';
comment on column LOG_HANDLE.id
  is '主键ID';
comment on column LOG_HANDLE.year
  is '年';
comment on column LOG_HANDLE.month
  is '月';
comment on column LOG_HANDLE.day
  is '日';
comment on column LOG_HANDLE.user_name
  is '用户登陆名称';
comment on column LOG_HANDLE.detail
  is '日志信息';
comment on column LOG_HANDLE.method
  is '访问方法名';
comment on column LOG_HANDLE.url
  is '访问路径';
comment on column LOG_HANDLE.http_type
  is '访问方式';
comment on column LOG_HANDLE.args
  is '访问参数';
comment on column LOG_HANDLE.event_type
  is '日志操作事件类型';
comment on column LOG_HANDLE.module_type
  is '日志记录模块类型';
comment on column LOG_HANDLE.create_date
  is '创建时间';
comment on column LOG_HANDLE.create_by
  is '创建人';
comment on column LOG_HANDLE.update_date
  is '修改时间';
comment on column LOG_HANDLE.update_by
  is '修改人';
comment on column LOG_HANDLE.remark
  is '备注';
comment on column LOG_HANDLE.delete_state
  is '使用状态 1已删除 0未删除';
create index INDEX_GLOBAL_LOG_HANDLE_UN on LOG_HANDLE (USER_NAME)
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index INDEX_LOCAL_LOG_HANDLE_MONTH on LOG_HANDLE (MONTH)
  nologging  local;
alter table LOG_HANDLE
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating LOG_LOGIN...
create table LOG_LOGIN
(
  id           VARCHAR2(32) not null,
  year         NUMBER(4),
  month        NUMBER(2),
  day          NUMBER(2),
  user_name    VARCHAR2(64),
  result       CHAR(1) default '0',
  code         NUMBER(5),
  message      VARCHAR2(255),
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table LOG_LOGIN
  is '登录日志';
comment on column LOG_LOGIN.id
  is '主键ID';
comment on column LOG_LOGIN.year
  is '年';
comment on column LOG_LOGIN.month
  is '月';
comment on column LOG_LOGIN.day
  is '日';
comment on column LOG_LOGIN.user_name
  is '用户登陆名称';
comment on column LOG_LOGIN.result
  is '登录结果 0失败 1成功';
comment on column LOG_LOGIN.code
  is '结果编码';
comment on column LOG_LOGIN.message
  is '结果信息';
comment on column LOG_LOGIN.create_date
  is '创建时间';
comment on column LOG_LOGIN.create_by
  is '创建人';
comment on column LOG_LOGIN.update_date
  is '修改时间';
comment on column LOG_LOGIN.update_by
  is '修改人';
comment on column LOG_LOGIN.remark
  is '备注';
comment on column LOG_LOGIN.delete_state
  is '使用状态 1已删除 0未删除';
alter table LOG_LOGIN
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_BUTTON...
create table SYS_BUTTON
(
  id           VARCHAR2(32) not null,
  name         VARCHAR2(128),
  permission   VARCHAR2(128),
  url          VARCHAR2(255),
  method       CHAR(1) default '1',
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_BUTTON
  is '按钮及访问权限配置';
comment on column SYS_BUTTON.id
  is '主键ID';
comment on column SYS_BUTTON.name
  is '按钮名称';
comment on column SYS_BUTTON.permission
  is '权限标识';
comment on column SYS_BUTTON.url
  is '请求链接';
comment on column SYS_BUTTON.method
  is '请求方法  1:Get，2:Post，3:Put，4:Delete';
comment on column SYS_BUTTON.create_date
  is '创建时间';
comment on column SYS_BUTTON.create_by
  is '创建人';
comment on column SYS_BUTTON.update_date
  is '修改时间';
comment on column SYS_BUTTON.update_by
  is '修改人';
comment on column SYS_BUTTON.remark
  is '备注';
comment on column SYS_BUTTON.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_BUTTON
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_DEPT...
create table SYS_DEPT
(
  id               VARCHAR2(32) not null,
  parent_id        VARCHAR2(32),
  name             VARCHAR2(255),
  name_simple      VARCHAR2(255),
  name_py          VARCHAR2(255),
  name_wb          VARCHAR2(255),
  type             CHAR(2) default '01',
  grade            NUMBER(2),
  code             VARCHAR2(50),
  sort             NUMBER(12),
  relation_name    VARCHAR2(255),
  relation_phone1  VARCHAR2(255),
  relation_phone2  VARCHAR2(255),
  relation_mobile  VARCHAR2(255),
  relation_address VARCHAR2(255),
  create_date      DATE default SYSDATE,
  create_by        VARCHAR2(255),
  update_date      DATE,
  update_by        VARCHAR2(255),
  remark           VARCHAR2(255),
  delete_state     CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_DEPT
  is '机构信息表';
comment on column SYS_DEPT.id
  is '主键';
comment on column SYS_DEPT.parent_id
  is '上级机构主键, 空为顶级机构';
comment on column SYS_DEPT.name
  is '机构名称';
comment on column SYS_DEPT.name_simple
  is '机构简称';
comment on column SYS_DEPT.name_py
  is '机构拼音码';
comment on column SYS_DEPT.name_wb
  is '机构五笔码';
comment on column SYS_DEPT.type
  is '机构类型，0开头为机构，1开头为医院， 01 省级机构 02 市级机构 03 区级机构 04 社区机构 11 省直医院 12 市直医院 13民营委管 14区直医院 15社区医院';
comment on column SYS_DEPT.grade
  is '机构级别';
comment on column SYS_DEPT.code
  is '机构编号';
comment on column SYS_DEPT.sort
  is '排序值';
comment on column SYS_DEPT.relation_name
  is '负责人';
comment on column SYS_DEPT.relation_phone1
  is '联系电话1';
comment on column SYS_DEPT.relation_phone2
  is '联系电话2';
comment on column SYS_DEPT.relation_mobile
  is '联系手机';
comment on column SYS_DEPT.relation_address
  is '详细地址';
comment on column SYS_DEPT.create_date
  is '创建时间';
comment on column SYS_DEPT.create_by
  is '创建人';
comment on column SYS_DEPT.update_date
  is '修改时间';
comment on column SYS_DEPT.update_by
  is '修改人';
comment on column SYS_DEPT.remark
  is '备注';
comment on column SYS_DEPT.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_DEPT
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_DICT...
create table SYS_DICT
(
  id           VARCHAR2(32) not null,
  parent_id    VARCHAR2(32),
  label        VARCHAR2(255),
  value        VARCHAR2(255),
  sort         NUMBER(5),
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_DICT
  is '字典表';
comment on column SYS_DICT.parent_id
  is '上级字典ID, 空为顶级字典定义';
comment on column SYS_DICT.label
  is '字典标签';
comment on column SYS_DICT.value
  is '字典键值';
comment on column SYS_DICT.sort
  is '排序值';
comment on column SYS_DICT.create_date
  is '创建时间';
comment on column SYS_DICT.create_by
  is '创建人';
comment on column SYS_DICT.update_date
  is '修改时间';
comment on column SYS_DICT.update_by
  is '修改人';
comment on column SYS_DICT.remark
  is '备注';
comment on column SYS_DICT.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_DICT
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_MENU...
create table SYS_MENU
(
  id           VARCHAR2(32) not null,
  name         VARCHAR2(128),
  icon         VARCHAR2(128),
  path         VARCHAR2(255),
  component    VARCHAR2(255),
  is_index     CHAR(1) default '0',
  show_type    CHAR(1) default '0',
  sort         NUMBER(12),
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_MENU
  is '菜单配置';
comment on column SYS_MENU.id
  is '主键ID';
comment on column SYS_MENU.name
  is '菜单名称';
comment on column SYS_MENU.icon
  is '图标';
comment on column SYS_MENU.path
  is 'router路径';
comment on column SYS_MENU.component
  is '组件路径';
comment on column SYS_MENU.is_index
  is '是否是主页，1是，0否';
comment on column SYS_MENU.show_type
  is '页面展示方式  0 HOME  1 SCREEN';
comment on column SYS_MENU.sort
  is '排序值';
comment on column SYS_MENU.create_date
  is '创建时间';
comment on column SYS_MENU.create_by
  is '创建人';
comment on column SYS_MENU.update_date
  is '修改时间';
comment on column SYS_MENU.update_by
  is '修改人';
comment on column SYS_MENU.remark
  is '备注';
comment on column SYS_MENU.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_MENU
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_RESOURCE...
create table SYS_RESOURCE
(
  id           VARCHAR2(32) not null,
  parent_id    VARCHAR2(32),
  type         CHAR(1) default '1',
  resource_id  VARCHAR2(32),
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_RESOURCE
  is '系统资源表';
comment on column SYS_RESOURCE.id
  is '主键ID';
comment on column SYS_RESOURCE.parent_id
  is '父资源ID，指向sys_resource.id';
comment on column SYS_RESOURCE.type
  is '资源类型 1:System 2:Menu 3:Button';
comment on column SYS_RESOURCE.resource_id
  is '资源id 例 type==System r_id==sys_system.id';
comment on column SYS_RESOURCE.create_date
  is '创建时间';
comment on column SYS_RESOURCE.create_by
  is '创建人';
comment on column SYS_RESOURCE.update_date
  is '修改时间';
comment on column SYS_RESOURCE.update_by
  is '修改人';
comment on column SYS_RESOURCE.remark
  is '备注';
comment on column SYS_RESOURCE.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_RESOURCE
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_ROLE...
create table SYS_ROLE
(
  id           VARCHAR2(32) not null,
  name         VARCHAR2(255),
  code         VARCHAR2(255),
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_ROLE
  is '角色信息表';
comment on column SYS_ROLE.id
  is '主键';
comment on column SYS_ROLE.name
  is '角色名称';
comment on column SYS_ROLE.code
  is '角色编码';
comment on column SYS_ROLE.create_date
  is '创建时间';
comment on column SYS_ROLE.create_by
  is '创建人';
comment on column SYS_ROLE.update_date
  is '修改时间';
comment on column SYS_ROLE.update_by
  is '修改人';
comment on column SYS_ROLE.remark
  is '备注';
comment on column SYS_ROLE.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_ROLE
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_ROLE_RESOURCE...
create table SYS_ROLE_RESOURCE
(
  role_id      VARCHAR2(32) not null,
  resource_id  VARCHAR2(32) not null,
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_ROLE_RESOURCE
  is '角色权限表';
comment on column SYS_ROLE_RESOURCE.role_id
  is '角色ID';
comment on column SYS_ROLE_RESOURCE.resource_id
  is '资源ID';
comment on column SYS_ROLE_RESOURCE.create_date
  is '创建时间';
comment on column SYS_ROLE_RESOURCE.create_by
  is '创建人';
comment on column SYS_ROLE_RESOURCE.update_date
  is '修改时间';
comment on column SYS_ROLE_RESOURCE.update_by
  is '修改人';
comment on column SYS_ROLE_RESOURCE.remark
  is '备注';
comment on column SYS_ROLE_RESOURCE.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_ROLE_RESOURCE
  add primary key (ROLE_ID, RESOURCE_ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_SYSTEM...
create table SYS_SYSTEM
(
  id           VARCHAR2(32) not null,
  type         VARCHAR2(128),
  name         VARCHAR2(128),
  describe     VARCHAR2(255),
  icon         VARCHAR2(128),
  is_guide     CHAR(1) default '0',
  show_type    CHAR(1) default '0',
  blank_path   VARCHAR2(255),
  sort         NUMBER(12),
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_SYSTEM
  is '系统配置';
comment on column SYS_SYSTEM.id
  is '主键ID';
comment on column SYS_SYSTEM.type
  is '系统类型，关联字典表，sys_system_type';
comment on column SYS_SYSTEM.name
  is '系统名称';
comment on column SYS_SYSTEM.describe
  is '系统简介';
comment on column SYS_SYSTEM.icon
  is '图标';
comment on column SYS_SYSTEM.is_guide
  is '是否需要引导页，1是，0否';
comment on column SYS_SYSTEM.show_type
  is '进入系统方式，0 _SELF，1 _BLANK';
comment on column SYS_SYSTEM.blank_path
  is '系统进入方式为blank时的路径';
comment on column SYS_SYSTEM.sort
  is '排序值';
comment on column SYS_SYSTEM.create_date
  is '创建时间';
comment on column SYS_SYSTEM.create_by
  is '创建人';
comment on column SYS_SYSTEM.update_date
  is '修改时间';
comment on column SYS_SYSTEM.update_by
  is '修改人';
comment on column SYS_SYSTEM.remark
  is '备注';
comment on column SYS_SYSTEM.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_SYSTEM
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_TASK...
create table SYS_TASK
(
  id           VARCHAR2(32) not null,
  name         VARCHAR2(255),
  "group"      VARCHAR2(255),
  rule         VARCHAR2(50),
  class_name   VARCHAR2(255),
  used_state   CHAR(1) default '1',
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_TASK
  is '定时任务配置表';
comment on column SYS_TASK.id
  is '主键ID';
comment on column SYS_TASK.name
  is '任务名';
comment on column SYS_TASK."group"
  is '任务组,关联字典表,sys_task_group';
comment on column SYS_TASK.rule
  is '定时规则';
comment on column SYS_TASK.class_name
  is '任务类';
comment on column SYS_TASK.used_state
  is '启用状态 1启用 0禁用';
comment on column SYS_TASK.create_date
  is '创建时间';
comment on column SYS_TASK.create_by
  is '创建人';
comment on column SYS_TASK.update_date
  is '修改时间';
comment on column SYS_TASK.update_by
  is '修改人';
comment on column SYS_TASK.remark
  is '备注';
comment on column SYS_TASK.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_TASK
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_USER...
create table SYS_USER
(
  id           VARCHAR2(32) not null,
  user_name    VARCHAR2(255),
  password     VARCHAR2(255),
  real_name    VARCHAR2(255),
  phone        VARCHAR2(20),
  birthday     DATE,
  sex          CHAR(1) default '1',
  photo        VARCHAR2(255),
  used_state   CHAR(1) default '1',
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_USER
  is '系统用户信息表';
comment on column SYS_USER.id
  is '主键';
comment on column SYS_USER.user_name
  is '用户登陆名称';
comment on column SYS_USER.password
  is '用户登陆密码';
comment on column SYS_USER.real_name
  is '用户真实姓名';
comment on column SYS_USER.phone
  is '手机号码';
comment on column SYS_USER.birthday
  is '出生日期';
comment on column SYS_USER.sex
  is '性别 1男 0女';
comment on column SYS_USER.photo
  is '用户头像';
comment on column SYS_USER.used_state
  is '启用状态 1启用 0禁用';
comment on column SYS_USER.create_date
  is '创建时间';
comment on column SYS_USER.create_by
  is '创建人';
comment on column SYS_USER.update_date
  is '修改时间';
comment on column SYS_USER.update_by
  is '修改人';
comment on column SYS_USER.remark
  is '备注';
comment on column SYS_USER.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_USER
  add primary key (ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_USER_DEPT...
create table SYS_USER_DEPT
(
  user_id      VARCHAR2(32) not null,
  dept_id      VARCHAR2(32) not null,
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_USER_DEPT
  is '用户部门表';
comment on column SYS_USER_DEPT.user_id
  is '用户ID';
comment on column SYS_USER_DEPT.dept_id
  is '部门ID';
comment on column SYS_USER_DEPT.create_date
  is '创建时间';
comment on column SYS_USER_DEPT.create_by
  is '创建人';
comment on column SYS_USER_DEPT.update_date
  is '修改时间';
comment on column SYS_USER_DEPT.update_by
  is '修改人';
comment on column SYS_USER_DEPT.remark
  is '备注';
comment on column SYS_USER_DEPT.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_USER_DEPT
  add primary key (USER_ID, DEPT_ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_USER_ROLE...
create table SYS_USER_ROLE
(
  user_id      VARCHAR2(32) not null,
  role_id      VARCHAR2(32) not null,
  create_date  DATE default SYSDATE,
  create_by    VARCHAR2(255),
  update_date  DATE,
  update_by    VARCHAR2(255),
  remark       VARCHAR2(255),
  delete_state CHAR(1) default '0'
)
tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table SYS_USER_ROLE
  is '用户角色表';
comment on column SYS_USER_ROLE.user_id
  is '用户ID';
comment on column SYS_USER_ROLE.role_id
  is '角色ID';
comment on column SYS_USER_ROLE.create_date
  is '创建时间';
comment on column SYS_USER_ROLE.create_by
  is '创建人';
comment on column SYS_USER_ROLE.update_date
  is '修改时间';
comment on column SYS_USER_ROLE.update_by
  is '修改人';
comment on column SYS_USER_ROLE.remark
  is '备注';
comment on column SYS_USER_ROLE.delete_state
  is '使用状态 1已删除 0未删除';
alter table SYS_USER_ROLE
  add primary key (USER_ID, ROLE_ID)
  using index 
  tablespace ZXHEALTH_S_SPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Loading LOG_HANDLE...
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('fc3e2c412f67378146a1fda71906f33c', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010003, parentId=2101, name=沈阳市第五人民医院, nameSimple=沈阳市第五人民医院, namePy=null, nameWb=null, type=Y12, grade=3, code=21010003, sort=5, relationName=颜鸿飞, relationPhone1=254037832017, relationPhone2=null, relationMobile=null, relationAddress=沈阳市铁西区兴顺街188号)]', '3', '01', to_date('16-07-2020 17:43:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('bd6e4267e659b31a5977247e3bf8b6de', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010004, parentId=2101, name=沈阳市第六人民医院, nameSimple=沈阳市第六人民医院, namePy=null, nameWb=null, type=Y12, grade=3, code=21010004, sort=6, relationName=谷野, relationPhone1=23387410-129, relationPhone2=null, relationMobile=null, relationAddress=沈阳市和平区和平南大街85号)]', '3', '01', to_date('16-07-2020 17:44:09', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('20f8395a8c0ac063fb69df394d38d2ce', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010005, parentId=2101, name=沈阳市第七人民医院, nameSimple=沈阳市第七人民医院, namePy=null, nameWb=null, type=Y12, grade=3, code=21010005, sort=7, relationName=李铁男, relationPhone1=23875481, relationPhone2=null, relationMobile=13478886779, relationAddress=沈阳市和平区东纬路13号)]', '3', '01', to_date('16-07-2020 17:44:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('887d24c01222cea6259f3da7c59f37b5', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010007, parentId=2101, name=沈阳市第九人民医院, nameSimple=沈阳市第九人民医院, namePy=null, nameWb=null, type=Y12, grade=3, code=21010007, sort=9, relationName=null, relationPhone1=31088956, relationPhone2=null, relationMobile=null, relationAddress=沈阳市铁西区南十一西路十八号)]', '3', '01', to_date('16-07-2020 17:44:41', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('dd9dd082e5d3d93b39243669ea45c8e2', 2020, 7, 17, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:36:25', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('f55a758e86e67659d5dab7e827beb99a', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:45:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('a4363e1018f726c623d104add1f5c39e', 2020, 7, 16, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('16-07-2020 17:42:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('943c372e1f6bacf3c0aea2855b4b4f4d', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010015, parentId=2101, name=沈阳市红十字会医院, nameSimple=沈阳市红十字会医院, namePy=null, nameWb=null, type=Y12, grade=3, code=21010015, sort=3, relationName=韩毅, relationPhone1=22942012, relationPhone2=null, relationMobile=null, relationAddress=沈阳市沈河区中山路389号)]', '3', '01', to_date('16-07-2020 17:43:24', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('a1b31c0f79607a51be225114b1610f26', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:29:57', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('34eca56f4239106783acd1816405a252', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:30:30', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('cc9f1112e4ce8d2e4fd5e037b6320021', 2020, 7, 17, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:36:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('147cddc2b75b668a3ed3b21ea4e3f18a', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:37:01', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1fcd6159cb951ad0065edd825f6a9973', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:47:20', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('8e251f73d24af86b317ea802a37cfea3', 2020, 7, 16, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('16-07-2020 17:22:11', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('831d122a903beeb895df283f7ffdce13', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=2101, parentId=21, name=沈阳市卫生与健康委员会, nameSimple=沈阳市卫健委, namePy=null, nameWb=null, type=J02, grade=2, code=2101, sort=0, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('16-07-2020 17:26:51', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('60db4f0820101ade7072f6a06b16d54a', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:47:22', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d8bddf366e2248967c8eed291c81cdc4', 2020, 7, 17, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:49:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('58f7ad94e106c733d7ac4018a3e49b94', 2020, 7, 17, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010023, parentId=2101, name=沈阳市疾病预防控制中心, nameSimple=沈阳市疾控中心, namePy=SYSJBYFKZZ, nameWb=null, type=J01, grade=3, code=21010023, sort=23, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:27', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('df1b20050f2b1da9f59e1605b22bdf22', 2020, 7, 17, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010024, parentId=2101, name=沈阳市卫生监督所, nameSimple=沈阳市卫生监督所, namePy=SYSWSJDS, nameWb=null, type=J02, grade=3, code=21010024, sort=24, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:38', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('dcc5eaa1f9fdace5362ce61415418624', 2020, 7, 17, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010023, parentId=2101, name=沈阳市疾病预防控制中心, nameSimple=沈阳市疾控中心, namePy=SYSJBYFKZZ, nameWb=null, type=J02, grade=3, code=21010023, sort=23, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('644fd4129c232c917fc33131ec5b0544', 2020, 7, 17, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010022, parentId=2101, name=沈阳市急救中心（120）, nameSimple=沈阳市120, namePy=SYSJJZX120, nameWb=null, type=J02, grade=3, code=21010022, sort=22, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:57', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('76e654eb3882f43af410dd8c80405dac', 2020, 7, 16, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('16-07-2020 17:02:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('7bb7eedcbe8fb66451c81810fce59620', 2020, 7, 16, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=0, pageEnd=0)]', '1', '01', to_date('16-07-2020 17:02:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('ebaf5d44b851c4d6c0147adc17a3f2d7', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:27:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('93f4b2aa3a98e9edaae2a1694b6c3d94', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:29:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2a70354dcdc523c5665226582bbfaf9e', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:29:55', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('c02d67cfe3dbcbd0b5b8993bfafab8fe', 2020, 7, 17, 'admin', '查看定时任务列表', 'com.zhixiang.health.modules.sys.api.SysTaskApi.page', 'http://localhost:8280/sys/task/page', 'GET', '[com.zhixiang.health.common.http.pagination.Page@56d1c3d2, SysTask(id=null, name=null, group=null, rule=null, className=null, usedState=null)]', '1', '01', to_date('17-07-2020 08:30:26', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d260e702b9c058fc31995b519ddfdede', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('e3709647fd26d1d92853c265a4c7ddeb', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:25', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('117aab5e849ac53a5ecf1088718a8901', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:27', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1be22c2c5148239d13c46ece723beef7', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d704728734d53cc4331f067d944325c6', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:58', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('6780ea86c4d1cb36e5cb667657d840a9', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:37:30', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('cadac54d6e89eeb58bb22355cc993890', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:45:05', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('682848c2b808381e5ea151bece2be22b', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:45:23', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('ea6024accac44629b6904b3ed02202ee', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:49:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2821957e1f25e45dc0ff0d29d94e80a6', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:49:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('b6533b53a1a5178ff6020d7ee1a7d963', 2020, 7, 17, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010022, parentId=2101, name=沈阳市急救中心（120）, nameSimple=沈阳市120, namePy=SYSJJZX120, nameWb=null, type=J01, grade=3, code=21010022, sort=22, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2633079fb225ae59c12cc6e41cd8d965', 2020, 7, 17, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010021, parentId=2101, name=沈阳市中心血站, nameSimple=沈阳市中心血站, namePy=SYSZXXZ, nameWb=null, type=J02, grade=3, code=21010021, sort=21, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:01:10', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('e7877190c3abf80e916aa8ced454e48f', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=2101, parentId=, name=沈阳市卫生与健康委员会, nameSimple=沈阳市卫健委, namePy=null, nameWb=null, type=J02, grade=2, code=2101, sort=0, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('16-07-2020 17:26:39', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('a8c124e120814118f33b03b44dccf0d2', 2020, 7, 16, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('16-07-2020 17:42:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('5c3b136843518ffba0748b243243907a', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010002, parentId=2101, name=沈阳市第四人民医院, nameSimple=沈阳市第四人民医院, namePy=null, nameWb=null, type=Y12, grade=3, code=21010002, sort=4, relationName=王树东, relationPhone1=024-86862514, relationPhone2=null, relationMobile=null, relationAddress=沈阳市皇姑区黄河南大街20号)]', '3', '01', to_date('16-07-2020 17:43:37', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('4fa79c7b91b4999885f247b55e3feaf6', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010006, parentId=2101, name=沈阳医学院附属中心医院, nameSimple=沈阳医学院附属中心医院, namePy=null, nameWb=null, type=Y12, grade=3, code=21010006, sort=8, relationName=null, relationPhone1=18002478215, relationPhone2=null, relationMobile=18002478215, relationAddress=沈阳市皇姑区淮河南街6号6附近)]', '3', '01', to_date('16-07-2020 17:44:23', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('ce4483020bcde62b949e34bd818005b7', 2020, 7, 16, 'admin', '修改机构部门信息', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010008, parentId=2101, name=沈阳市第十人民医院, nameSimple=沈阳市第十人民医院, namePy=null, nameWb=0, type=Y12, grade=3, code=21010008, sort=10, relationName=张娟, relationPhone1=024-88324551, relationPhone2=null, relationMobile=null, relationAddress=沈阳市大东区北海街11号)]', '3', '01', to_date('16-07-2020 17:44:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2f8feda342a8270fdd479e4f15e060f2', 2020, 7, 17, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:27:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1c92689a57780545c89a9aa5ab6a42e0', 2020, 7, 17, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:29:55', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('77d90ba37e5f7ec58a1c6644b410605d', 2020, 7, 17, 'admin', '查看用户列表', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:30:30', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d36a894289087706ef4f2fd566e39092', 2020, 7, 17, 'admin', '查看角色列表', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:34:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 48 records loaded
prompt Loading LOG_LOGIN...
insert into LOG_LOGIN (id, year, month, day, user_name, result, code, message, create_date, create_by, update_date, update_by, remark, delete_state)
values ('8819579db04611da7e71774c285271e4', 2020, 7, 17, 'admin', '1', 200, '登陆成功', to_date('17-07-2020 08:24:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into LOG_LOGIN (id, year, month, day, user_name, result, code, message, create_date, create_by, update_date, update_by, remark, delete_state)
values ('0e821cc41334ee8e06f3b951392beb4d', 2020, 7, 16, 'admin', '1', 200, '登陆成功', to_date('16-07-2020 16:59:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
commit;
prompt 2 records loaded
prompt Loading SYS_BUTTON...
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('6', 'GET', null, '/sys/**', '1', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('7', 'POST', null, '/sys/**', '2', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('8', 'DELETE', null, '/sys/**', '4', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('9', 'PUT', null, '/sys/**', '3', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('10', '导入导出用户权限', 'auth_sys_user', '/sys/user/save', '2', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('11', 'GET', null, '/log/**', '1', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('12', 'POST', null, '/log/**', '1', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('13', 'PUT', null, '/log/**', '1', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_BUTTON (id, name, permission, url, method, create_date, create_by, update_date, update_by, remark, delete_state)
values ('14', 'DELETE', null, '/log/**', '4', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 9 records loaded
prompt Loading SYS_DEPT...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211812', '210122118', '沈阳市辽中县大黑岗子乡张家村卫生室', '大黑岗子乡张家村卫生室', null, null, '15', 6, '21012211812', 21012211812, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211903', '210122119', '沈阳市辽中县牛心坨镇老虎岗村卫生室', '牛心坨镇老虎岗村卫生室', null, null, '15', 6, '21012211903', 21012211903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211904', '210122119', '沈阳市辽中县牛心坨镇花牛沟子村卫生室', '牛心坨镇花牛沟子村卫生室', null, null, '15', 6, '21012211904', 21012211904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211905', '210122119', '沈阳市辽中县牛心坨镇寇家村卫生室', '牛心坨镇寇家村卫生室', null, null, '15', 6, '21012211905', 21012211905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211906', '210122119', '沈阳市辽中县牛心坨镇牛心坨村卫生室', '牛心坨镇牛心坨村卫生室', null, null, '15', 6, '21012211906', 21012211906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211908', '210122119', '沈阳市辽中县牛心坨镇二道房村卫生室', '牛心坨镇二道房村卫生室', null, null, '15', 6, '21012211908', 21012211908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211909', '210122119', '沈阳市辽中县牛心坨镇小黑岗村卫生室', '牛心坨镇小黑岗村卫生室', null, null, '15', 6, '21012211909', 21012211909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211910', '210122119', '沈阳市辽中县牛心坨镇三道房村卫生室', '牛心坨镇三道房村卫生室', null, null, '15', 6, '21012211910', 21012211910, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211911', '210122119', '沈阳市辽中县牛心坨镇李胡岗村卫生室', '牛心坨镇李胡岗村卫生室', null, null, '15', 6, '21012211911', 21012211911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210101', '210122101', '沈阳市辽中县于家房镇于家房社区卫生服务站', '于家房镇于家房社区卫生服务站', null, null, '15', 6, '21012210101', 21012210101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210102', '210122101', '沈阳市辽中县于家房镇漾子泡社区卫生服务站', '于家房镇漾子泡社区卫生服务站', null, null, '15', 6, '21012210102', 21012210102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210103', '210122101', '沈阳市辽中县于家房镇插拉村卫生室', '于家房镇插拉村卫生室', null, null, '15', 6, '21012210103', 21012210103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210104', '210122101', '沈阳市辽中县于家房镇青麻坎村卫生室', '于家房镇青麻坎村卫生室', null, null, '15', 6, '21012210104', 21012210104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210105', '210122101', '沈阳市辽中县于家房镇高家窝棚村卫生室', '于家房镇高家窝棚村卫生室', null, null, '15', 6, '21012210105', 21012210105, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210106', '210122101', '沈阳市辽中县于家房镇代家房村卫生室', '于家房镇代家房村卫生室', null, null, '15', 6, '21012210106', 21012210106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210107', '210122101', '沈阳市辽中县于家房镇花家房村卫生室', '于家房镇花家房村卫生室', null, null, '15', 6, '21012210107', 21012210107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210108', '210122101', '沈阳市辽中县于家房镇韩家村卫生室', '于家房镇韩家村卫生室', null, null, '15', 6, '21012210108', 21012210108, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210109', '210122101', '沈阳市辽中县于家房镇陡沟子村卫生室', '于家房镇陡沟子村卫生室', null, null, '15', 6, '21012210109', 21012210109, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210111', '210122101', '沈阳市辽中县于家房镇上顶子村卫生室', '于家房镇上顶子村卫生室', null, null, '15', 6, '21012210111', 21012210111, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210201', '210122102', '沈阳市辽中县朱家房镇朱家房社区服务站', '朱家房镇朱家房社区服务站', null, null, '15', 6, '21012210201', 21012210201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210202', '210122102', '沈阳市辽中县朱家房镇候头沟社区服务站', '朱家房镇候头沟社区服务站', null, null, '15', 6, '21012210202', 21012210202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210203', '210122102', '沈阳市辽中县朱家房镇田家房社区服务站', '朱家房镇田家房社区服务站', null, null, '15', 6, '21012210203', 21012210203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210204', '210122102', '沈阳市辽中县朱家房镇永丰村卫生室', '朱家房镇永丰村卫生室', null, null, '15', 6, '21012210204', 21012210204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210205', '210122102', '沈阳市辽中县朱家房镇孙金村卫生室', '朱家房镇孙金村卫生室', null, null, '15', 6, '21012210205', 21012210205, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210206', '210122102', '沈阳市辽中县朱家房镇深井子村卫生室', '朱家房镇深井子村卫生室', null, null, '15', 6, '21012210206', 21012210206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210207', '210122102', '沈阳市辽中县朱家房镇艾嵩沟村卫生室', '朱家房镇艾嵩沟村卫生室', null, null, '15', 6, '21012210207', 21012210207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210208', '210122102', '沈阳市辽中县朱家房镇大万村卫生室', '朱家房镇大万村卫生室', null, null, '15', 6, '21012210208', 21012210208, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210210', '210122102', '沈阳市辽中县朱家房镇腰截子村卫生室', '朱家房镇腰截子村卫生室', null, null, '15', 6, '21012210210', 21012210210, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210211', '210122102', '沈阳市辽中县朱家房镇高墙子村卫生室', '朱家房镇高墙子村卫生室', null, null, '15', 6, '21012210211', 21012210211, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210301', '210122102', '沈阳市辽中县冷子堡镇冷前社区卫生站', '冷子堡镇冷前社区卫生站', null, null, '15', 6, '21012210301', 21012210301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210302', '210122103', '沈阳市辽中县冷子堡镇冷后社区卫生站', '冷子堡镇冷后社区卫生站', null, null, '15', 6, '21012210302', 21012210302, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210303', '210122103', '沈阳市辽中县冷子堡镇高力房村卫生室', '冷子堡镇高力房村卫生室', null, null, '15', 6, '21012210303', 21012210303, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210305', '210122103', '沈阳市辽中县冷子堡镇人和村卫生室', '冷子堡镇人和村卫生室', null, null, '15', 6, '21012210305', 21012210305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210306', '210122103', '沈阳市辽中县冷子堡镇黄西村卫生室', '冷子堡镇黄西村卫生室', null, null, '15', 6, '21012210306', 21012210306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210307', '210122103', '沈阳市辽中县冷子堡镇黄东村卫生室', '冷子堡镇黄东村卫生室', null, null, '15', 6, '21012210307', 21012210307, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210308', '210122103', '沈阳市辽中县冷子堡镇周徐村卫生室', '冷子堡镇周徐村卫生室', null, null, '15', 6, '21012210308', 21012210308, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210313', '210122103', '沈阳市辽中县冷子堡镇李家村卫生室', '冷子堡镇李家村卫生室', null, null, '15', 6, '21012210313', 21012210313, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210314', '210122103', '沈阳市辽中县冷子堡镇忙前村卫生室', '冷子堡镇忙前村卫生室', null, null, '15', 6, '21012210314', 21012210314, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210315', '210122103', '沈阳市辽中县冷子堡镇忙后村卫生室', '冷子堡镇忙后村卫生室', null, null, '15', 6, '21012210315', 21012210315, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210316', '210122103', '沈阳市辽中县冷子堡镇刘士村卫生室', '冷子堡镇刘士村卫生室', null, null, '15', 6, '21012210316', 21012210316, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210317', '210122103', '沈阳市辽中县冷子堡镇古城村卫生室', '冷子堡镇古城村卫生室', null, null, '15', 6, '21012210317', 21012210317, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210910', '210122109', '沈阳市辽中县肖寨门镇沙西村卫生室', '肖寨门镇沙西村卫生室', null, null, '15', 6, '21012210910', 21012210910, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211202', '210122112', '沈阳市辽中县城郊镇双山子村卫生室', '城郊镇双山子村卫生室', null, null, '15', 6, '21012211202', 21012211202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211206', '210122112', '沈阳市辽中县城郊镇团结村卫生室', '城郊镇团结村卫生室', null, null, '15', 6, '21012211206', 21012211206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211210', '210122112', '沈阳市辽中县城郊镇孟家村卫生室', '城郊镇孟家村卫生室', null, null, '15', 6, '21012211210', 21012211210, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211306', '210122113', '沈阳市辽中县六间房镇韭菜岗子村卫生室', '六间房镇韭菜岗子村卫生室', null, null, '15', 6, '21012211306', 21012211306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211310', '210122113', '沈阳市辽中县六间房镇梁家村卫生室', '六间房镇梁家村卫生室', null, null, '15', 6, '21012211310', 21012211310, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211315', '210122113', '沈阳市辽中县六间房镇老窝棚村卫生室', '六间房镇老窝棚村卫生室', null, null, '15', 6, '21012211315', 21012211315, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211403', '210122114', '沈阳市辽中县养士堡镇养后村卫生室', '养士堡镇养后村卫生室', null, null, '15', 6, '21012211403', 21012211403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211407', '210122114', '沈阳市辽中县养士堡镇白家岗村卫生室', '养士堡镇白家岗村卫生室', null, null, '15', 6, '21012211407', 21012211407, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211506', '210122115', '沈阳市辽中县潘家堡镇蔡伯街村卫生室', '潘家堡镇蔡伯街村卫生室', null, null, '15', 6, '21012211506', 21012211506, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122100', '210122', '辽中县蒲西街道卫生服务中心', '蒲西街道卫生服务中心', null, null, '04', 5, '210122100', 210122100, null, null, null, null, '辽中辽中镇', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122113', '210122', '辽中县六间房镇卫生院', '辽中县六间房镇卫生院', null, null, '04', 5, '210122113', 210122113, null, null, null, null, '辽中六间房镇', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400101', '210104001', '大东区小北社区白塔家庭医生团队', '大东区小北社区白塔家庭医生团队', null, null, '15', 6, '21010400101', 21010400101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113017', '210113', '沈北街道', '沈北街道', null, null, '04', 5, '210113017', 210113017, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211707', '210122117', '沈阳市辽中县老大房乡孟家村卫生室', '老大房乡孟家村卫生室', null, null, '15', 6, '21012211707', 21012211707, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211501', '210122115', '沈阳市辽中县潘家堡镇潘家堡村卫生室', '潘家堡镇潘家堡村卫生室', null, null, '15', 6, '21012211501', 21012211501, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211602', '210122116', '沈阳市辽中县老观坨镇大岗村卫生室', '老观坨镇大岗村卫生室', null, null, '15', 6, '21012211602', 21012211602, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211703', '210122117', '沈阳市辽中县老大房乡老大房村卫生室', '老大房乡老大房村卫生室', null, null, '15', 6, '21012211703', 21012211703, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211710', '210122117', '沈阳市辽中县老大房乡腰街村卫生室', '老大房乡腰街村卫生室', null, null, '15', 6, '21012211710', 21012211710, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211804', '210122118', '沈阳市辽中县大黑岗子乡方家岗子村卫生室', '大黑岗子乡方家岗子村卫生室', null, null, '15', 6, '21012211804', 21012211804, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211702', '210122117', '沈阳市辽中县老大房乡高家村卫生室', '老大房乡高家村卫生室', null, null, '15', 6, '21012211702', 21012211702, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210023', '210122100', '沈阳市辽中县辽中镇孙家万村卫生室', '辽中镇孙家万村卫生室', null, null, '15', 6, '21012210023', 21012210023, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210602', '210122106', '沈阳市辽中县茨榆坨镇黄北村卫生室', '茨榆坨镇黄北村卫生室', null, null, '15', 6, '21012210602', 21012210602, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210609', '210122106', '沈阳市辽中县茨榆坨镇第一社区卫生服务站', '茨榆坨镇第一社区卫生服务站', null, null, '15', 6, '21012210609', 21012210609, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210614', '210122106', '沈阳市辽中县茨榆坨镇前边外村卫生室', '茨榆坨镇前边外村卫生室', null, null, '15', 6, '21012210614', 21012210614, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210619', '210122106', '沈阳市辽中县茨榆坨镇第六社区卫生服务站', '茨榆坨镇第六社区卫生服务站', null, null, '15', 6, '21012210619', 21012210619, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210706', '210122107', '沈阳市辽中县满都户镇押牛街村卫生室', '满都户镇押牛街村卫生室', null, null, '15', 6, '21012210706', 21012210706, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210804', '210122108', '沈阳市辽中县杨士岗镇杨士岗社区卫生服务站', '杨士岗镇杨士岗社区卫生服务站', null, null, '15', 6, '21012210804', 21012210804, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210209', '210122102', '沈阳市辽中县朱家房镇白头沟村卫生室', '朱家房镇白头沟村卫生室', null, null, '15', 6, '21012210209', 21012210209, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210304', '210122103', '沈阳市辽中县冷子堡镇金山堡村卫生室', '冷子堡镇金山堡村卫生室', null, null, '15', 6, '21012210304', 21012210304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210312', '210122103', '沈阳市辽中县冷子堡镇榛子岗村卫生室', '冷子堡镇榛子岗村卫生室', null, null, '15', 6, '21012210312', 21012210312, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210905', '210122109', '沈阳市辽中县肖寨门镇肖北社区卫生服务站', '肖寨门镇肖北社区卫生服务站', null, null, '15', 6, '21012210905', 21012210905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220102', '210122201', '沈阳市辽中县辽中镇回民村卫生室', '辽中镇回民村卫生室', null, null, '15', 6, '21012220102', 21012220102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220107', '210122201', '沈阳市辽中县辽中镇腰荒地村卫生室', '辽中镇腰荒地村卫生室', null, null, '15', 6, '21012220107', 21012220107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211907', '210122119', '沈阳市辽中县牛心坨镇西房身村卫生室', '牛心坨镇西房身村卫生室', null, null, '15', 6, '21012211907', 21012211907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211912', '210122119', '沈阳市辽中县牛心坨镇榆树底村卫生室', '牛心坨镇榆树底村卫生室', null, null, '15', 6, '21012211912', 21012211912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211502', '210122115', '沈阳市辽中县潘家堡镇张家村卫生室', '潘家堡镇张家村卫生室', null, null, '15', 6, '21012211502', 21012211502, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300801', '210103008', '沈阳市沈河区丰乐社区卫生服务站', '沈河区丰乐社区卫生服务站', null, null, '15', 6, '21010300801', 21010300801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300805', '210103008', '沈阳市沈河区富民社区卫生服务站', '沈河区富民社区卫生服务站', null, null, '15', 6, '21010300805', 21010300805, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010024', '2101', '沈阳市卫生监督所', '沈阳市卫生监督所', 'SYSWSJDS', null, '02', 3, '21010024', 24, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181106', '210181', '新民市大民屯镇中心卫生院', '新民市大民屯镇中心卫生院', null, null, '04', 5, '210181106', 210181106, null, null, null, null, '新民市大民屯镇', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110507', '210111105', '沈阳市苏家屯区十里河街道十里河村卫生室', '十里河街道十里河村卫生室', null, null, '15', 6, '21011110507', 21011110507, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100717', '210111007', '沈阳市苏家屯区林盛街道史三村卫生室', '林盛街道史三村卫生室', null, null, '15', 6, '21011100717', 21011100717, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100405', '210111004', '沈阳市苏家屯区临湖街道富民社区卫生服务站', '临湖街道富民社区卫生服务站', null, null, '15', 6, '21011100405', 21011100405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100505', '210111005', '沈阳市苏家屯区中兴街道苏家屯堡社区卫生服务站', '中兴街道苏家屯堡社区卫生服务站', null, null, '15', 6, '21011100505', 21011100505, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100406', '210111004', '沈阳市苏家屯区临湖街道胡家村第二卫生室', '临湖街道胡家村第二卫生室', null, null, '15', 6, '21011100406', 21011100406, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100712', '210111007', '沈阳市苏家屯区林盛街道林盛村第一卫生室', '林盛街道林盛村第一卫生室', null, null, '15', 6, '21011100712', 21011100712, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100214', '210111002', '沈阳市苏家屯区陈相街道小陈村卫生室', '陈相街道小陈村卫生室', null, null, '15', 6, '21011100214', 21011100214, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112016', '210112', '浑南区深井子中心卫生院', '深井子中心卫生院', null, null, '04', 5, '210112016', 210112016, null, null, null, null, '辽宁省沈阳市浑南区深井子街道深井子村', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400501', '210114005', '沈阳市于洪区于洪街道李官社区卫生服务站', '于洪街道李官社区卫生服务站', null, null, '15', 6, '21011400501', 21011400501, null, null, null, null, '于洪区北李官东平湖街36-11门', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210403', '210122104', '沈阳市辽中县刘二堡镇北长寿岗社区卫生服务站', '刘二堡镇北长寿岗社区卫生服务站', null, null, '15', 6, '21012210403', 21012210403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210615', '210122106', '沈阳市辽中县茨榆坨镇第四社区卫生服务站', '茨榆坨镇第四社区卫生服务站', null, null, '15', 6, '21012210615', 21012210615, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211902', '210122119', '沈阳市辽中县牛心坨镇连三湾村卫生室', '牛心坨镇连三湾村卫生室', null, null, '15', 6, '21012211902', 21012211902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210110', '210122101', '沈阳市辽中县于家房镇范家窝棚村卫生室', '于家房镇范家窝棚村卫生室', null, null, '15', 6, '21012210110', 21012210110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110601', '210111106', '沈阳市苏家屯区三院妇产科', '苏家屯区三院妇产科', null, null, '15', 6, '21011110601', 21011110601, null, null, null, null, '沈阳市苏家屯区陈相屯镇凤山路27号', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501404', '210105014', '军区团队', '军区团队', null, null, '15', 6, '21010501404', 21010501404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501113', '210105011', '流动人口', '流动人口', null, null, '15', 6, '21010501113', 21010501113, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211604', '210122116', '沈阳市辽中县老观坨镇肖兰坨村卫生室', '老观坨镇肖兰坨村卫生室', null, null, '15', 6, '21012211604', 21012211604, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211711', '210122117', '沈阳市辽中县老大房乡灰山村卫生室', '老大房乡灰山村卫生室', null, null, '15', 6, '21012211711', 21012211711, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 100 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501603', '210105016', '北飞团队', '北飞团队', null, null, '15', 6, '21010501603', 21010501603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105006', '210105', '北塔社区卫生服务中心', '北塔社区卫生服务中心', null, null, '04', 5, '210105006', 210105006, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500702', '210105007', '华城社区团队', '华城社区团队', null, null, '15', 6, '21010500702', 21010500702, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500907', '210105009', '妇保团队', '妇保团队', null, null, '15', 6, '21010500907', 21010500907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105011', '210105', '明廉社区卫生服务中心', '明廉社区卫生服务中心', null, null, '04', 5, '210105011', 210105011, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501107', '210105011', '塔湾欣城社区团队', '塔湾欣城社区团队', null, null, '15', 6, '21010501107', 21010501107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105013', '210105', '庐山社区卫生服务站', '庐山社区卫生服务站', null, null, '04', 5, '210105013', 210105013, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105010', '210105', '亚明社区卫生服务中心', '亚明社区卫生服务中心', null, null, '04', 5, '210105010', 210105010, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501119', '210105011', '免费签约一团队', '免费签约一团队', null, null, '15', 6, '21010501119', 21010501119, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500107', '210105001', '龙江东团队', '龙江东团队', null, null, '15', 6, '21010500107', 21010500107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500202', '210105002', '金龙社区团队', '金龙社区团队', null, null, '15', 6, '21010500202', 21010500202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500304', '210105003', '延河社区团队', '延河社区团队', null, null, '15', 6, '21010500304', 21010500304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500503', '210105005', '文水社区团队', '文水社区团队', null, null, '15', 6, '21010500503', 21010500503, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500606', '210105006', '卫生服务团队六', '卫生服务团队六', null, null, '15', 6, '21010500606', 21010500606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500701', '210105007', '惠胜社区团队', '惠胜社区团队', null, null, '15', 6, '21010500701', 21010500701, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500901', '210105009', '赵奕虹团队', '赵奕虹团队', null, null, '15', 6, '21010500901', 21010500901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501002', '210105010', '站北团队', '站北团队', null, null, '15', 6, '21010501002', 21010501002, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501010', '210105010', '航院团队', '航院团队', null, null, '15', 6, '21010501010', 21010501010, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501114', '210105011', '签约一团队', '签约一团队', null, null, '15', 6, '21010501114', 21010501114, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501123', '210105011', '免费签约五团队', '免费签约五团队', null, null, '15', 6, '21010501123', 21010501123, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501401', '210105014', '富城团队', '富城团队', null, null, '15', 6, '21010501401', 21010501401, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105001', '210105', '龙江社区卫生服务中心', '龙江社区卫生服务中心', null, null, '04', 5, '210105001', 210105001, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500703', '210105007', '兴隆社区团队', '兴隆社区团队', null, null, '15', 6, '21010500703', 21010500703, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500705', '210105007', '珠东社区团队', '珠东社区团队', null, null, '15', 6, '21010500705', 21010500705, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501007', '210105010', '白楼团队', '白楼团队', null, null, '15', 6, '21010501007', 21010501007, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501003', '210105010', '站东团队', '站东团队', null, null, '15', 6, '21010501003', 21010501003, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500103', '210105001', '辽河团队', '辽河团队', null, null, '15', 6, '21010500103', 21010500103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501106', '210105011', '白文宏团队 ', '白文宏团队 ', null, null, '15', 6, '21010501106', 21010501106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501110', '210105011', '泰北社区团队', '泰北社区团队', null, null, '15', 6, '21010501110', 21010501110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500904', '210105009', '孟岩团队', '孟岩团队', null, null, '15', 6, '21010500904', 21010500904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501602', '210105016', '梅江西团队', '梅江西团队', null, null, '15', 6, '21010501602', 21010501602, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105016', '210105', '沈阳二四二医院', '沈阳二四二医院', null, null, '04', 5, '210105016', 210105016, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501122', '210105011', '免费签约四团队', '免费签约四团队', null, null, '15', 6, '21010501122', 21010501122, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501115', '210105011', '签约二团队', '签约二团队', null, null, '15', 6, '21010501115', 21010501115, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500505', '210105005', '涟水社区团队', '涟水社区团队', null, null, '15', 6, '21010500505', 21010500505, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500104', '210105001', '铁路东团队', '铁路东团队', null, null, '15', 6, '21010500104', 21010500104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500706', '210105007', '兴华社区团队', '兴华社区团队', null, null, '15', 6, '21010500706', 21010500706, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500501', '210105005', '社区科责任医生团队', '社区科责任医生团队', null, null, '15', 6, '21010500501', 21010500501, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500106', '210105001', '五一团队', '五一团队', null, null, '15', 6, '21010500106', 21010500106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500801', '210105008', '华凯社区团队', '华凯社区团队', null, null, '15', 6, '21010500801', 21010500801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501103', '210105011', '妇保', '妇保', null, null, '15', 6, '21010501103', 21010501103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500902', '210105009', '舍宅团队', '舍宅团队', null, null, '15', 6, '21010500902', 21010500902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501111', '210105011', '公艺社区团队', '公艺社区团队', null, null, '15', 6, '21010501111', 21010501111, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500908', '210105009', '儿保团队', '儿保团队', null, null, '15', 6, '21010500908', 21010500908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500608', '210105006', '卫生服务团队八', '卫生服务团队八', null, null, '15', 6, '21010500608', 21010500608, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501601', '210105016', '乐山团队', '乐山团队', null, null, '15', 6, '21010501601', 21010501601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501117', '210105011', '签约四团队', '签约四团队', null, null, '15', 6, '21010501117', 21010501117, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501121', '210105011', '免费签约三团队', '免费签约三团队', null, null, '15', 6, '21010501121', 21010501121, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500603', '210105006', '卫生服务团队三', '卫生服务团队三', null, null, '15', 6, '21010500603', 21010500603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500402', '210105004', '嘉陵江团队', '嘉陵江团队', null, null, '15', 6, '21010500402', 21010500402, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501004', '210105010', '青云团队', '青云团队', null, null, '15', 6, '21010501004', 21010501004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501204', '210105012', '紫西团队', '紫西团队', null, null, '15', 6, '21010501204', 21010501204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500306', '210105003', '七六七社区团队', '七六七社区团队', null, null, '15', 6, '21010500306', 21010500306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500502', '210105005', '赤水社区团队', '赤水社区团队', null, null, '15', 6, '21010500502', 21010500502, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500809', '210105008', '寿泉预防科', '寿泉预防科', null, null, '15', 6, '21010500809', 21010500809, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501604', '210105016', '牡丹团队', '牡丹团队', null, null, '15', 6, '21010501604', 21010501604, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201405', '210112014', '浑南区高坎社区卫生服务中心旧站社区', '旧站社区', null, null, '04', 5, '21011201405', 21011201405, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201406', '210112014', '浑南区高坎社区卫生服务中心七间房社区', '七间房社区', null, null, '04', 5, '21011201406', 21011201406, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201407', '210112014', '浑南区高坎社区卫生服务中心仁境社区', '仁境社区', null, null, '04', 5, '21011201407', 21011201407, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201408', '210112014', '浑南区高坎社区卫生服务中心上马社区', '上马社区', null, null, '04', 5, '21011201408', 21011201408, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201409', '210112014', '浑南区高坎社区卫生服务中心晓仁境社区', '晓仁境社区', null, null, '04', 5, '21011201409', 21011201409, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201410', '210112014', '浑南区高坎社区卫生服务中心兴隆社区', '兴隆社区', null, null, '04', 5, '21011201410', 21011201410, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201411', '210112014', '浑南区高坎社区卫生服务中心中马社区', '中马社区', null, null, '04', 5, '21011201411', 21011201411, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201501', '210112015', '浑南区满堂卫生院满堂街道莲花村卫生室', '满堂街道莲花村卫生室', null, null, '04', 5, '21011201501', 21011201501, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201502', '210112015', '浑南区满堂卫生院满堂街道满堂村卫生室', '满堂街道满堂村卫生室', null, null, '04', 5, '21011201502', 21011201502, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201503', '210112015', '浑南区满堂卫生院满堂街道新屯村卫生室', '满堂街道新屯村卫生室', null, null, '04', 5, '21011201503', 21011201503, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201601', '210112016', '浑南区深井子卫生院深井子街道大台村沈雁双卫生室', '深井子街道大台村沈雁双卫生室', null, null, '04', 5, '21011201601', 21011201601, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201602', '210112016', '浑南区深井子卫生院深井子街道国公寨社区卫生服务站', '深井子街道国公寨社区卫生服务站', null, null, '04', 5, '21011201602', 21011201602, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201603', '210112016', '浑南区深井子卫生院深井子街道国公寨张素艳卫生室', '深井子街道国公寨张素艳卫生室', null, null, '04', 5, '21011201603', 21011201603, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201604', '210112016', '浑南区深井子卫生院深井子街道金德胜张宏伟卫生室', '深井子街道金德胜张宏伟卫生室', null, null, '04', 5, '21011201604', 21011201604, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201605', '210112016', '浑南区深井子卫生院深井子街道康红村刘恒利卫生室', '深井子街道康红村刘恒利卫生室', null, null, '04', 5, '21011201605', 21011201605, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201606', '210112016', '浑南区深井子卫生院深井子街道康红社区卫生服务站', '深井子街道康红社区卫生服务站', null, null, '04', 5, '21011201606', 21011201606, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201607', '210112016', '浑南区深井子卫生院深井子街道链条社区卫生服务站', '深井子街道链条社区卫生服务站', null, null, '04', 5, '21011201607', 21011201607, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201608', '210112016', '浑南区深井子卫生院深井子街道龙红村李慧仁卫生室', '深井子街道龙红村李慧仁卫生室', null, null, '04', 5, '21011201608', 21011201608, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201609', '210112016', '浑南区深井子卫生院深井子街道龙红村李慧仁卫生室', '深井子街道龙红村李慧仁卫生室', null, null, '04', 5, '21011201609', 21011201609, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201610', '210112016', '浑南区深井子卫生院深井子街道群星社区卫生服务站', '深井子街道群星社区卫生服务站', null, null, '04', 5, '21011201610', 21011201610, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201611', '210112016', '浑南区深井子卫生院深井子街道深井子社区卫生服务站', '深井子街道深井子社区卫生服务站', null, null, '04', 5, '21011201611', 21011201611, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201612', '210112016', '浑南区深井子卫生院深井子街道深井子镇大台村卫生室', '深井子街道深井子镇大台村卫生室', null, null, '04', 5, '21011201612', 21011201612, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201613', '210112016', '浑南区深井子卫生院深井子街道深井子镇民家村卫生室', '深井子街道深井子镇民家村卫生室', null, null, '04', 5, '21011201613', 21011201613, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201614', '210112016', '浑南区深井子卫生院深井子街道双树子村袁玉玲卫生室', '深井子街道双树子村袁玉玲卫生室', null, null, '04', 5, '21011201614', 21011201614, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201615', '210112016', '浑南区深井子卫生院深井子街道双树子社区卫生服务站', '深井子街道双树子社区卫生服务站', null, null, '04', 5, '21011201615', 21011201615, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201616', '210112016', '浑南区深井子卫生院深井子街道西靠山社区卫生服务站', '深井子街道西靠山社区卫生服务站', null, null, '04', 5, '21011201616', 21011201616, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201617', '210112016', '浑南区深井子卫生院深井子街道兴联社区卫生服务站', '深井子街道兴联社区卫生服务站', null, null, '04', 5, '21011201617', 21011201617, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201701', '210112017', '浑南区祝家中心卫生院祝家街道常王寨社区卫生服务站', '祝家街道常王寨社区卫生服务站', null, null, '04', 5, '21011201701', 21011201701, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201702', '210112017', '浑南区祝家中心卫生院祝家街道东沟村卫生室', '祝家街道东沟村卫生室', null, null, '04', 5, '21011201702', 21011201702, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201703', '210112017', '浑南区祝家中心卫生院祝家街道段家村卫生室', '祝家街道段家村卫生室', null, null, '04', 5, '21011201703', 21011201703, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201704', '210112017', '浑南区祝家中心卫生院祝家街道高八寨社区卫生服务站', '祝家街道高八寨社区卫生服务站', null, null, '04', 5, '21011201704', 21011201704, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201705', '210112017', '浑南区祝家中心卫生院祝家街道伙牛社区卫生服务站', '祝家街道伙牛社区卫生服务站', null, null, '04', 5, '21011201705', 21011201705, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201706', '210112017', '浑南区祝家中心卫生院祝家街道李麦峪社区卫生服务站', '祝家街道李麦峪社区卫生服务站', null, null, '04', 5, '21011201706', 21011201706, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201707', '210112017', '浑南区祝家中心卫生院祝家街道龙三家子社区卫生服务站', '祝家街道龙三家子社区卫生服务站', null, null, '04', 5, '21011201707', 21011201707, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201708', '210112017', '浑南区祝家中心卫生院祝家街道青草沟社区卫生服务站', '祝家街道青草沟社区卫生服务站', null, null, '04', 5, '21011201708', 21011201708, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201709', '210112017', '浑南区祝家中心卫生院祝家街道沙河子社区卫生服务站', '祝家街道沙河子社区卫生服务站', null, null, '04', 5, '21011201709', 21011201709, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201710', '210112017', '浑南区祝家中心卫生院祝家街道山城子社区卫生服务站', '祝家街道山城子社区卫生服务站', null, null, '04', 5, '21011201710', 21011201710, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201711', '210112017', '浑南区祝家中心卫生院祝家街道上高士社区卫生服务站', '祝家街道上高士社区卫生服务站', null, null, '04', 5, '21011201711', 21011201711, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201712', '210112017', '浑南区祝家中心卫生院祝家街道田家屯社区卫生服务站', '祝家街道田家屯社区卫生服务站', null, null, '04', 5, '21011201712', 21011201712, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201713', '210112017', '浑南区祝家中心卫生院祝家街道下高士社区卫生服务站', '祝家街道下高士社区卫生服务站', null, null, '04', 5, '21011201713', 21011201713, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201714', '210112017', '浑南区祝家中心卫生院祝家街道下楼子社区卫生服务站', '祝家街道下楼子社区卫生服务站', null, null, '04', 5, '21011201714', 21011201714, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201715', '210112017', '浑南区祝家中心卫生院祝家街道永安社区卫生服务站', '祝家街道永安社区卫生服务站', null, null, '04', 5, '21011201715', 21011201715, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201716', '210112017', '浑南区祝家中心卫生院祝家街道祝家村社区卫生服务站', '祝家街道祝家村社区卫生服务站', null, null, '04', 5, '21011201716', 21011201716, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201717', '210112017', '浑南区祝家中心卫生院祝家街道祝家社区卫生服务站', '祝家街道祝家社区卫生服务站', null, null, '04', 5, '21011201717', 21011201717, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 200 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201718', '210112017', '浑南区祝家中心卫生院祝家街道佟家峪社区卫生服务站', '祝家街道佟家峪社区卫生服务站', null, null, '04', 5, '21011201718', 21011201718, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220104', '210122201', '沈阳市辽中县辽中镇年家屯村卫生室', '辽中镇年家屯村卫生室', null, null, '15', 6, '21012220104', 21012220104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220105', '210122201', '沈阳市辽中县辽中镇吴家屯村卫生室', '辽中镇吴家屯村卫生室', null, null, '15', 6, '21012220105', 21012220105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220106', '210122201', '沈阳市辽中县辽中镇东荒地村卫生室', '辽中镇东荒地村卫生室', null, null, '15', 6, '21012220106', 21012220106, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220108', '210122201', '沈阳市辽中县辽中镇达子营村卫生室', '辽中镇达子营村卫生室', null, null, '15', 6, '21012220108', 21012220108, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220109', '210122201', '沈阳市辽中县辽中镇勾刘家村卫生室', '辽中镇勾刘家村卫生室', null, null, '15', 6, '21012220109', 21012220109, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220110', '210122201', '沈阳市辽中县辽中镇曹屯村卫生室', '辽中镇曹屯村卫生室', null, null, '15', 6, '21012220110', 21012220110, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210401', '210122103', '沈阳市辽中县刘二堡镇刘南社区卫生服务站', '刘二堡镇刘南社区卫生服务站', null, null, '15', 6, '21012210401', 21012210401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210402', '210122104', '沈阳市辽中县刘二堡镇刘北社区卫生服务站', '刘二堡镇刘北社区卫生服务站', null, null, '15', 6, '21012210402', 21012210402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210404', '210122104', '沈阳市辽中县刘二堡镇皮家堡村卫生室', '刘二堡镇皮家堡村卫生室', null, null, '15', 6, '21012210404', 21012210404, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210405', '210122104', '沈阳市辽中县刘二堡镇木耳岗村卫生室', '刘二堡镇木耳岗村卫生室', null, null, '15', 6, '21012210405', 21012210405, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210406', '210122104', '沈阳市辽中县刘二堡镇蒲河村卫生室', '刘二堡镇蒲河村卫生室', null, null, '15', 6, '21012210406', 21012210406, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210407', '210122104', '沈阳市辽中县刘二堡镇叔庵西高村卫生室', '刘二堡镇叔庵西高村卫生室', null, null, '15', 6, '21012210407', 21012210407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210409', '210122104', '沈阳市辽中县刘二堡镇东高村卫生室', '刘二堡镇东高村卫生室', null, null, '15', 6, '21012210409', 21012210409, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210410', '210122104', '沈阳市辽中县刘二堡镇靓岗村卫生室', '刘二堡镇靓岗村卫生室', null, null, '15', 6, '21012210410', 21012210410, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210411', '210122104', '沈阳市辽中县刘二堡镇丁家高登村卫生室', '刘二堡镇丁家高登村卫生室', null, null, '15', 6, '21012210411', 21012210411, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210412', '210122104', '沈阳市辽中县刘二堡镇西高村卫生室', '刘二堡镇西高村卫生室', null, null, '15', 6, '21012210412', 21012210412, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210413', '210122104', '沈阳市辽中县刘二堡镇后岗村卫生室', '刘二堡镇后岗村卫生室', null, null, '15', 6, '21012210413', 21012210413, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210601', '210122106', '沈阳市辽中县茨榆坨镇黄南村卫生室', '茨榆坨镇黄南村卫生室', null, null, '15', 6, '21012210601', 21012210601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210603', '210122106', '沈阳市辽中县茨榆坨镇第五社区卫生服务站', '茨榆坨镇第五社区卫生服务站', null, null, '15', 6, '21012210603', 21012210603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210605', '210122106', '沈阳市辽中县茨榆坨镇赵寇村卫生室', '茨榆坨镇赵寇村卫生室', null, null, '15', 6, '21012210605', 21012210605, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210606', '210122106', '沈阳市辽中县茨榆坨镇太平村卫生室', '茨榆坨镇太平村卫生室', null, null, '15', 6, '21012210606', 21012210606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210607', '210122106', '沈阳市辽中县茨榆坨镇大莲花村卫生室', '茨榆坨镇大莲花村卫生室', null, null, '15', 6, '21012210607', 21012210607, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210608', '210122106', '沈阳市辽中县茨榆坨镇小莲花村卫生室', '茨榆坨镇小莲花村卫生室', null, null, '15', 6, '21012210608', 21012210608, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210610', '210122106', '沈阳市辽中县茨榆坨镇第二社区卫生服务站', '茨榆坨镇第二社区卫生服务站', null, null, '15', 6, '21012210610', 21012210610, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210611', '210122106', '沈阳市辽中县茨榆坨镇偏堡子村卫生室', '茨榆坨镇偏堡子村卫生室', null, null, '15', 6, '21012210611', 21012210611, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210612', '210122106', '沈阳市辽中县茨榆坨镇后岭村卫生室', '茨榆坨镇后岭村卫生室', null, null, '15', 6, '21012210612', 21012210612, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210613', '210122106', '沈阳市辽中县茨榆坨镇第三社区卫生服务站', '茨榆坨镇第三社区卫生服务站', null, null, '15', 6, '21012210613', 21012210613, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210616', '210122106', '沈阳市辽中县茨榆坨镇后边外村卫生室', '茨榆坨镇后边外村卫生室', null, null, '15', 6, '21012210616', 21012210616, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210617', '210122106', '沈阳市辽中县茨榆坨镇前岭村卫生室', '茨榆坨镇前岭村卫生室', null, null, '15', 6, '21012210617', 21012210617, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210618', '210122106', '沈阳市辽中县茨榆坨镇西山村卫生室', '茨榆坨镇西山村卫生室', null, null, '15', 6, '21012210618', 21012210618, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210701', '210122107', '沈阳市辽中县满都户镇满西社区卫生服务站', '满都户镇满西社区卫生服务站', null, null, '15', 6, '21012210701', 21012210701, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210702', '210122107', '沈阳市辽中县满都户镇古城子村卫生室', '满都户镇古城子村卫生室', null, null, '15', 6, '21012210702', 21012210702, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210703', '210122107', '沈阳市辽中县满都户镇满东社区卫生服务站', '满都户镇满东社区卫生服务站', null, null, '15', 6, '21012210703', 21012210703, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210704', '210122107', '沈阳市辽中县满都户镇胡家屯村卫生室', '满都户镇胡家屯村卫生室', null, null, '15', 6, '21012210704', 21012210704, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210705', '210122107', '沈阳市辽中县满都户镇官粮窖村卫生室', '满都户镇官粮窖村卫生室', null, null, '15', 6, '21012210705', 21012210705, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210708', '210122107', '沈阳市辽中县满都户镇宁家村卫生室', '满都户镇宁家村卫生室', null, null, '15', 6, '21012210708', 21012210708, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210801', '210122108', '沈阳市辽中县杨士岗镇靠山屯村卫生室', '杨士岗镇靠山屯村卫生室', null, null, '15', 6, '21012210801', 21012210801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210802', '210122108', '沈阳市辽中县杨士岗镇三王堡村卫生室', '杨士岗镇三王堡村卫生室', null, null, '15', 6, '21012210802', 21012210802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210803', '210122108', '沈阳市辽中县杨士岗镇佑户坨社区卫生服务站', '杨士岗镇佑户坨社区卫生服务站', null, null, '15', 6, '21012210803', 21012210803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210805', '210122108', '沈阳市辽中县杨士岗镇德兴堡村卫生室', '杨士岗镇德兴堡村卫生室', null, null, '15', 6, '21012210805', 21012210805, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210806', '210122108', '沈阳市辽中县杨士岗镇邢柏窑村卫生室', '杨士岗镇邢柏窑村卫生室', null, null, '15', 6, '21012210806', 21012210806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210808', '210122108', '沈阳市辽中县杨士岗镇腰金村卫生室', '杨士岗镇腰金村卫生室', null, null, '15', 6, '21012210808', 21012210808, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211808', '210122118', '沈阳市辽中县大黑岗子乡马家岗子村卫生室', '大黑岗子乡马家岗子村卫生室', null, null, '15', 6, '21012211808', 21012211808, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211809', '210122118', '沈阳市辽中县大黑岗子乡钱缝村卫生室', '大黑岗子乡钱缝村卫生室', null, null, '15', 6, '21012211809', 21012211809, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211810', '210122118', '沈阳市辽中县大黑岗子乡大黑农场卫生室', '大黑岗子乡大黑农场卫生室', null, null, '15', 6, '21012211810', 21012211810, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211811', '210122118', '沈阳市辽中县大黑岗子乡营城村卫生室', '大黑岗子乡营城村卫生室', null, null, '15', 6, '21012211811', 21012211811, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501138', '210105011', '明廉社区卫生服务四团队', '明廉社区卫生服务四团队', null, null, '15', 6, '21010501138', 21010501138, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501139', '210105011', '明廉社区卫生服务七团队', '明廉社区卫生服务七团队', null, null, '15', 6, '21010501139', 21010501139, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501140', '210105011', '陈文学团队', '陈文学团队', null, null, '15', 6, '21010501140', 21010501140, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501141', '210105011', '辽大社区团队', '辽大社区团队', null, null, '15', 6, '21010501141', 21010501141, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501142', '210105011', '明廉社区卫生服务九团队', '明廉社区卫生服务九团队', null, null, '15', 6, '21010501142', 21010501142, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501143', '210105011', '录入', '录入', null, null, '15', 6, '21010501143', 21010501143, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501144', '210105011', '明廉社区卫生服务十团队', '明廉社区卫生服务十团队', null, null, '15', 6, '21010501144', 21010501144, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210810', '210122108', '沈阳市辽中县杨士岗镇后尖山村卫生室', '杨士岗镇后尖山村卫生室', null, null, '15', 6, '21012210810', 21012210810, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210901', '210122109', '沈阳市辽中县肖寨门镇三东村卫生室', '肖寨门镇三东村卫生室', null, null, '15', 6, '21012210901', 21012210901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210902', '210122109', '沈阳市辽中县肖寨门镇三南村卫生室', '肖寨门镇三南村卫生室', null, null, '15', 6, '21012210902', 21012210902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210903', '210122109', '沈阳市辽中县肖寨门镇三北村卫生室', '肖寨门镇三北村卫生室', null, null, '15', 6, '21012210903', 21012210903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210904', '210122109', '沈阳市辽中县肖寨门镇妈妈街村卫生室', '肖寨门镇妈妈街村卫生室', null, null, '15', 6, '21012210904', 21012210904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210906', '210122109', '沈阳市辽中县肖寨门镇七北村卫生室', '肖寨门镇七北村卫生室', null, null, '15', 6, '21012210906', 21012210906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210908', '210122109', '沈阳市辽中县肖寨门镇三西村卫生室', '肖寨门镇三西村卫生室', null, null, '15', 6, '21012210908', 21012210908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210909', '210122109', '沈阳市辽中县肖寨门镇沙东村卫生室', '肖寨门镇沙东村卫生室', null, null, '15', 6, '21012210909', 21012210909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210911', '210122109', '沈阳市辽中县肖寨门镇肖南社区卫生服务站', '肖寨门镇肖南社区卫生服务站', null, null, '15', 6, '21012210911', 21012210911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210912', '210122109', '沈阳市辽中县肖寨门镇肖东社区卫生服务站', '肖寨门镇肖东社区卫生服务站', null, null, '15', 6, '21012210912', 21012210912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211201', '210122112', '沈阳市辽中县城郊镇付家屯村卫生室', '城郊镇付家屯村卫生室', null, null, '15', 6, '21012211201', 21012211201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211203', '210122112', '沈阳市辽中县城郊镇下万子村卫生室', '城郊镇下万子村卫生室', null, null, '15', 6, '21012211203', 21012211203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211204', '210122112', '沈阳市辽中县城郊镇卡南村卫生室', '城郊镇卡南村卫生室', null, null, '15', 6, '21012211204', 21012211204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211205', '210122112', '沈阳市辽中县城郊镇卡北村卫生室', '城郊镇卡北村卫生室', null, null, '15', 6, '21012211205', 21012211205, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211207', '210122112', '沈阳市辽中县城郊镇大邦牛村卫生室', '城郊镇大邦牛村卫生室', null, null, '15', 6, '21012211207', 21012211207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301004', '210103010', '沈阳市沈河区新兴社区卫生服务站', '沈河区新兴社区卫生服务站', null, null, '15', 6, '21010301004', 21010301004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301005', '210103010', '沈阳市沈河区勒石社区卫生服务站', '沈河区勒石社区卫生服务站', null, null, '15', 6, '21010301005', 21010301005, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301006', '210103010', '沈阳市沈河区多福社区卫生服务站', '沈河区多福社区卫生服务站', null, null, '15', 6, '21010301006', 21010301006, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300503', '210103005', '沈阳市沈河区双路社区卫生服务站', '沈河区双路社区卫生服务站', null, null, '15', 6, '21010300503', 21010300503, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300901', '210103009', '沈阳市沈河区御龙社区卫生服务站', '沈河区御龙社区卫生服务站', null, null, '15', 6, '21010300901', 21010300901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300902', '210103009', '沈阳市沈河区榆树屯社区卫生服务站', '沈河区榆树屯社区卫生服务站', null, null, '15', 6, '21010300902', 21010300902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300903', '210103009', '沈阳市沈河区马官桥社区卫生服务站', '沈河区马官桥社区卫生服务站', null, null, '15', 6, '21010300903', 21010300903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300904', '210103009', '沈阳市沈河区东大营社区卫生服务站', '沈河区东大营社区卫生服务站', null, null, '15', 6, '21010300904', 21010300904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300905', '210103009', '沈阳市沈河区保利社区卫生服务站', '沈河区保利社区卫生服务站', null, null, '15', 6, '21010300905', 21010300905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300906', '210103009', '沈阳市沈河区方家栏社区卫生服务站', '沈河区方家栏社区卫生服务站', null, null, '15', 6, '21010300906', 21010300906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300907', '210103009', '沈阳市沈河区东大营西社区卫生服务站', '沈河区东大营西社区卫生服务站', null, null, '15', 6, '21010300907', 21010300907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300802', '210103008', '沈阳市沈河区长青社区卫生服务站', '沈河区长青社区卫生服务站', null, null, '15', 6, '21010300802', 21010300802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300803', '210103008', '沈阳市沈河区金丰社区卫生服务站', '沈河区金丰社区卫生服务站', null, null, '15', 6, '21010300803', 21010300803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300804', '210103008', '沈阳市沈河区天坛社区卫生服务站', '沈河区天坛社区卫生服务站', null, null, '15', 6, '21010300804', 21010300804, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300806', '210103008', '沈阳市沈河区新河畔社区卫生服务站', '沈河区新河畔社区卫生服务站', null, null, '15', 6, '21010300806', 21010300806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300807', '210103008', '沈阳市沈河区新药大社区卫生服务站', '沈河区新药大社区卫生服务站', null, null, '15', 6, '21010300807', 21010300807, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010302101', '210103021', '沈阳市沈河区威尼斯社区卫生服务站', '沈河区威尼斯社区卫生服务站', null, null, '15', 6, '21010302101', 21010302101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211208', '210122112', '沈阳市辽中县城郊镇肖家崴子村卫生室', '城郊镇肖家崴子村卫生室', null, null, '15', 6, '21012211208', 21012211208, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211301', '210122113', '沈阳市辽中县六间房镇马家房村卫生室', '六间房镇马家房村卫生室', null, null, '15', 6, '21012211301', 21012211301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211302', '210122113', '沈阳市辽中县六间房镇六间房村卫生室', '六间房镇六间房村卫生室', null, null, '15', 6, '21012211302', 21012211302, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211304', '210122113', '沈阳市辽中县六间房镇正士堡村卫生室', '六间房镇正士堡村卫生室', null, null, '15', 6, '21012211304', 21012211304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211305', '210122113', '沈阳市辽中县六间房镇许家村卫生室', '六间房镇许家村卫生室', null, null, '15', 6, '21012211305', 21012211305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211307', '210122113', '沈阳市辽中县六间房镇马龙村卫生室', '六间房镇马龙村卫生室', null, null, '15', 6, '21012211307', 21012211307, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211308', '210122113', '沈阳市辽中县六间房镇裴家乡村卫生室', '六间房镇裴家乡村卫生室', null, null, '15', 6, '21012211308', 21012211308, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211309', '210122113', '沈阳市辽中县六间房镇吉庆台村卫生室', '六间房镇吉庆台村卫生室', null, null, '15', 6, '21012211309', 21012211309, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211311', '210122113', '沈阳市辽中县六间房镇马三家子村卫生室', '六间房镇马三家子村卫生室', null, null, '15', 6, '21012211311', 21012211311, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211312', '210122113', '沈阳市辽中县六间房镇长岗子村卫生室', '六间房镇长岗子村卫生室', null, null, '15', 6, '21012211312', 21012211312, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211313', '210122113', '沈阳市辽中县六间房镇化家新村卫生室', '六间房镇化家新村卫生室', null, null, '15', 6, '21012211313', 21012211313, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211314', '210122113', '沈阳市辽中县六间房镇新立村卫生室', '六间房镇新立村卫生室', null, null, '15', 6, '21012211314', 21012211314, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211316', '210122113', '沈阳市辽中县六间房镇八家子村卫生室', '六间房镇八家子村卫生室', null, null, '15', 6, '21012211316', 21012211316, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211401', '210122114', '沈阳市辽中县养士堡镇养前村卫生室', '养士堡镇养前村卫生室', null, null, '15', 6, '21012211401', 21012211401, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 300 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211402', '210122114', '沈阳市辽中县养士堡镇夏堡子村卫生室', '养士堡镇夏堡子村卫生室', null, null, '15', 6, '21012211402', 21012211402, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211404', '210122114', '沈阳市辽中县养士堡镇菱角泡村卫生室', '养士堡镇菱角泡村卫生室', null, null, '15', 6, '21012211404', 21012211404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211405', '210122114', '沈阳市辽中县养士堡镇各力房村卫生室', '养士堡镇各力房村卫生室', null, null, '15', 6, '21012211405', 21012211405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211408', '210122114', '沈阳市辽中县养士堡镇腰屯村卫生室', '养士堡镇腰屯村卫生室', null, null, '15', 6, '21012211408', 21012211408, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211409', '210122114', '沈阳市辽中县养士堡镇细河沿村卫生室', '养士堡镇细河沿村卫生室', null, null, '15', 6, '21012211409', 21012211409, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211410', '210122114', '沈阳市辽中县养士堡镇四王村卫生室', '养士堡镇四王村卫生室', null, null, '15', 6, '21012211410', 21012211410, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211503', '210122115', '沈阳市辽中县潘家堡镇黄旗堡村卫生室', '潘家堡镇黄旗堡村卫生室', null, null, '15', 6, '21012211503', 21012211503, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211504', '210122115', '沈阳市辽中县潘家堡镇于家台村卫生室', '潘家堡镇于家台村卫生室', null, null, '15', 6, '21012211504', 21012211504, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211505', '210122115', '沈阳市辽中县潘家堡镇邵家村卫生室', '潘家堡镇邵家村卫生室', null, null, '15', 6, '21012211505', 21012211505, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211507', '210122115', '沈阳市辽中县潘家堡镇南长岗子村卫生室', '潘家堡镇南长岗子村卫生室', null, null, '15', 6, '21012211507', 21012211507, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211601', '210122116', '沈阳市辽中县老观坨镇老观坨村卫生室', '老观坨镇老观坨村卫生室', null, null, '15', 6, '21012211601', 21012211601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211603', '210122116', '沈阳市辽中县老观坨镇后老薄村卫生室', '老观坨镇后老薄村卫生室', null, null, '15', 6, '21012211603', 21012211603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211605', '210122116', '沈阳市辽中县老观坨镇双树坨村卫生室', '老观坨镇双树坨村卫生室', null, null, '15', 6, '21012211605', 21012211605, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211606', '210122116', '沈阳市辽中县老观坨镇大兰坨村卫生室', '老观坨镇大兰坨村卫生室', null, null, '15', 6, '21012211606', 21012211606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211701', '210122117', '沈阳市辽中县老大房乡后鸡鸭房村卫生室', '老大房乡后鸡鸭房村卫生室', null, null, '15', 6, '21012211701', 21012211701, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211704', '210122117', '沈阳市辽中县老大房乡东屯村卫生室', '老大房乡东屯村卫生室', null, null, '15', 6, '21012211704', 21012211704, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211705', '210122117', '沈阳市辽中县老大房乡未家村卫生室', '老大房乡未家村卫生室', null, null, '15', 6, '21012211705', 21012211705, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211706', '210122117', '沈阳市辽中县老大房乡大树林村卫生室', '老大房乡大树林村卫生室', null, null, '15', 6, '21012211706', 21012211706, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211708', '210122117', '沈阳市辽中县老大房乡佳和村卫生室', '老大房乡佳和村卫生室', null, null, '15', 6, '21012211708', 21012211708, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211709', '210122117', '沈阳市辽中县老大房乡老观村卫生室', '老大房乡老观村卫生室', null, null, '15', 6, '21012211709', 21012211709, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211801', '210122118', '沈阳市辽中县大黑岗子乡东于岗子村卫生室', '大黑岗子乡东于岗子村卫生室', null, null, '15', 6, '21012211801', 21012211801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211802', '210122118', '沈阳市辽中县大黑岗子乡赵家窝棚村卫生室', '大黑岗子乡赵家窝棚村卫生室', null, null, '15', 6, '21012211802', 21012211802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211803', '210122118', '沈阳市辽中县大黑岗子乡三尖泡子村卫生室', '大黑岗子乡三尖泡子村卫生室', null, null, '15', 6, '21012211803', 21012211803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211806', '210122118', '沈阳市辽中县大黑岗子乡大兰家窝堡村卫生室', '大黑岗子乡大兰家窝堡村卫生室', null, null, '15', 6, '21012211806', 21012211806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211807', '210122118', '沈阳市辽中县大黑岗子乡茨榆岗子村卫生室', '大黑岗子乡茨榆岗子村卫生室', null, null, '15', 6, '21012211807', 21012211807, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200004', '210102', '和平区妇婴医院', '和平区妇婴医院', 'HPQFYYY', null, '01', 4, '21010200004', 21010200004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201812', '210112018', '浑南区白塔社区卫生服务中心白塔街道东堡村陈玉馥卫生室', '白塔街道东堡村陈玉馥卫生室', null, null, '04', 5, '21011201812', 21011201812, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201813', '210112018', '浑南区白塔社区卫生服务中心白塔街道高三家子社区卫生服务站', '白塔街道高三家子社区卫生服务站', null, null, '04', 5, '21011201813', 21011201813, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201814', '210112018', '浑南区白塔社区卫生服务中心白塔街道火石社区卫生服务站', '白塔街道火石社区卫生服务站', null, null, '04', 5, '21011201814', 21011201814, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201815', '210112018', '浑南区白塔社区卫生服务中心白塔街道鸡冠社区卫生服务站', '白塔街道鸡冠社区卫生服务站', null, null, '04', 5, '21011201815', 21011201815, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201816', '210112018', '浑南区白塔社区卫生服务中心白塔街道青堆子社区卫生服务站', '白塔街道青堆子社区卫生服务站', null, null, '04', 5, '21011201816', 21011201816, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201817', '210112018', '浑南区白塔社区卫生服务中心白塔街道上深社区卫生服务站', '白塔街道上深社区卫生服务站', null, null, '04', 5, '21011201817', 21011201817, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201818', '210112018', '浑南区白塔社区卫生服务中心白塔街道苏家岗子社区卫生服务站', '白塔街道苏家岗子社区卫生服务站', null, null, '04', 5, '21011201818', 21011201818, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201819', '210112018', '浑南区白塔社区卫生服务中心白塔街道塔北社区卫生服务站', '白塔街道塔北社区卫生服务站', null, null, '04', 5, '21011201819', 21011201819, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201820', '210112018', '浑南区白塔社区卫生服务中心白塔街道塔东社区卫生服务站', '白塔街道塔东社区卫生服务站', null, null, '04', 5, '21011201820', 21011201820, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201821', '210112018', '浑南区白塔社区卫生服务中心白塔街道塔南社区卫生服务站', '白塔街道塔南社区卫生服务站', null, null, '04', 5, '21011201821', 21011201821, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201822', '210112018', '浑南区白塔社区卫生服务中心白塔街道下深沟村杨欣波卫生室', '白塔街道下深沟村杨欣波卫生室', null, null, '04', 5, '21011201822', 21011201822, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201823', '210112018', '浑南区白塔社区卫生服务中心白塔街道下深社区卫生服务站', '白塔街道下深社区卫生服务站', null, null, '04', 5, '21011201823', 21011201823, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201824', '210112018', '浑南区白塔社区卫生服务中心白塔街道仙塔社区卫生服务站', '白塔街道仙塔社区卫生服务站', null, null, '04', 5, '21011201824', 21011201824, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201825', '210112018', '浑南区白塔社区卫生服务中心白塔街道小羊安社区卫生服务站', '白塔街道小羊安社区卫生服务站', null, null, '04', 5, '21011201825', 21011201825, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201826', '210112018', '浑南区白塔社区卫生服务中心白塔街道小张尔社区卫生服务站', '白塔街道小张尔社区卫生服务站', null, null, '04', 5, '21011201826', 21011201826, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200907', '210112009', '浑南区东湖社区卫生服务中心东湖街道牛相屯村卫生室', '东湖街道牛相屯村卫生室', null, null, '04', 5, '21011200907', 21011200907, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200908', '210112009', '浑南区东湖社区卫生服务中心东湖街道石庙子村卫生室', '东湖街道石庙子村卫生室', null, null, '04', 5, '21011200908', 21011200908, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200909', '210112009', '浑南区东湖社区卫生服务中心东湖街道水家屯村卫生室', '东湖街道水家屯村卫生室', null, null, '04', 5, '21011200909', 21011200909, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200910', '210112009', '浑南区东湖社区卫生服务中心东湖街道万家屯村卫生室', '东湖街道万家屯村卫生室', null, null, '04', 5, '21011200910', 21011200910, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200911', '210112009', '浑南区东湖社区卫生服务中心东湖街道王家湾村卫生室', '东湖街道王家湾村卫生室', null, null, '04', 5, '21011200911', 21011200911, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200912', '210112009', '浑南区东湖社区卫生服务中心东湖街道杨官屯村卫生室', '东湖街道杨官屯村卫生室', null, null, '04', 5, '21011200912', 21011200912, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200913', '210112009', '浑南区东湖社区卫生服务中心东湖街道养竹村卫生室', '东湖街道养竹村卫生室', null, null, '04', 5, '21011200913', 21011200913, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201001', '210112010', '沈阳市浑南区五三社区卫生服务中心金地滨河社区卫生服务站', '金地滨河社区卫生服务站', null, null, '04', 5, '21011201001', 21011201001, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201002', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道朝鲜村卫生室', '五三街道朝鲜村卫生室', null, null, '04', 5, '21011201002', 21011201002, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201003', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道东黄泥坎村卫生室', '五三街道东黄泥坎村卫生室', null, null, '04', 5, '21011201003', 21011201003, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201004', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道东育社区卫生室', '五三街道东育社区卫生室', null, null, '04', 5, '21011201004', 21011201004, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201005', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道富都丽景社区卫生服务站', '五三街道富都丽景社区卫生服务站', null, null, '04', 5, '21011201005', 21011201005, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201006', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道孤家子村卫生室', '五三街道孤家子村卫生室', null, null, '04', 5, '21011201006', 21011201006, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201007', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道孤家子社区卫生服务站', '五三街道孤家子社区卫生服务站', null, null, '04', 5, '21011201007', 21011201007, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201008', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道河畔新城社区卫生服务站', '五三街道河畔新城社区卫生服务站', null, null, '04', 5, '21011201008', 21011201008, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201009', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道后榆树台村卫生室', '五三街道后榆树台村卫生室', null, null, '04', 5, '21011201009', 21011201009, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201010', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道慧缘新村社区卫生服务站', '五三街道慧缘新村社区卫生服务站', null, null, '04', 5, '21011201010', 21011201010, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201011', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道浑河堡村卫生室', '五三街道浑河堡村卫生室', null, null, '04', 5, '21011201011', 21011201011, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201012', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道浑河堡社区卫生服务站', '五三街道浑河堡社区卫生服务站', null, null, '04', 5, '21011201012', 21011201012, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201013', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道浑南产业区社区卫生服务站', '五三街道浑南产业区社区卫生服务站', null, null, '04', 5, '21011201013', 21011201013, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201014', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道嘉华新城社区卫生服务站', '五三街道嘉华新城社区卫生服务站', null, null, '04', 5, '21011201014', 21011201014, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201015', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道嘉榆社区卫生室', '五三街道嘉榆社区卫生室', null, null, '04', 5, '21011201015', 21011201015, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201016', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道教场村卫生室', '五三街道教场村卫生室', null, null, '04', 5, '21011201016', 21011201016, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201017', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道金家湾朝鲜族村卫生室', '五三街道金家湾朝鲜族村卫生室', null, null, '04', 5, '21011201017', 21011201017, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201018', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道金家湾村卫生室', '五三街道金家湾村卫生室', null, null, '04', 5, '21011201018', 21011201018, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201019', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道金水花城社区卫生服务站', '五三街道金水花城社区卫生服务站', null, null, '04', 5, '21011201019', 21011201019, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201020', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道康泰社区卫生服务站', '五三街道康泰社区卫生服务站', null, null, '04', 5, '21011201020', 21011201020, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201021', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道库榆社区卫生室', '五三街道库榆社区卫生室', null, null, '04', 5, '21011201021', 21011201021, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201022', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道前榆树台村卫生室', '五三街道前榆树台村卫生室', null, null, '04', 5, '21011201022', 21011201022, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201023', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道塞纳家园社区卫生服务站', '五三街道塞纳家园社区卫生服务站', null, null, '04', 5, '21011201023', 21011201023, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201024', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道上河湾朝鲜族村卫生室', '五三街道上河湾朝鲜族村卫生室', null, null, '04', 5, '21011201024', 21011201024, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201025', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道沈阳市农业机械化实验场社区卫生', '五三街道沈阳市农业机械化实验场社区卫生', null, null, '04', 5, '21011201025', 21011201025, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201026', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道生态园社区卫生服务站', '五三街道生态园社区卫生服务站', null, null, '04', 5, '21011201026', 21011201026, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201027', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道生态园社区卫生服务站', '五三街道生态园社区卫生服务站', null, null, '04', 5, '21011201027', 21011201027, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201028', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道世纪新城社区卫生服务站', '五三街道世纪新城社区卫生服务站', null, null, '04', 5, '21011201028', 21011201028, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201029', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道糖场子村卫生室', '五三街道糖场子村卫生室', null, null, '04', 5, '21011201029', 21011201029, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201030', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道天菱社区卫生服务站', '五三街道天菱社区卫生服务站', null, null, '04', 5, '21011201030', 21011201030, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201031', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道铁匠屯村卫生室', '五三街道铁匠屯村卫生室', null, null, '04', 5, '21011201031', 21011201031, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201032', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道万科新里程社区卫生服务站', '五三街道万科新里程社区卫生服务站', null, null, '04', 5, '21011201032', 21011201032, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201033', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道万科新榆社区卫生室', '五三街道万科新榆社区卫生室', null, null, '04', 5, '21011201033', 21011201033, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201034', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道王士村卫生室', '五三街道王士村卫生室', null, null, '04', 5, '21011201034', 21011201034, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201827', '210112018', '浑南区白塔社区卫生服务中心白塔街道新塔社区卫生服务站', '白塔街道新塔社区卫生服务站', null, null, '04', 5, '21011201827', 21011201827, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201828', '210112018', '浑南区白塔社区卫生服务中心白塔街道毡匠堡社区卫生服务站', '白塔街道毡匠堡社区卫生服务站', null, null, '04', 5, '21011201828', 21011201828, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201829', '210112018', '浑南区白塔社区卫生服务中心白塔街道毡匠村于艳玲卫生室', '白塔街道毡匠村于艳玲卫生室', null, null, '04', 5, '21011201829', 21011201829, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201901', '210112019', '浑南区桃仙卫生院全运村社区卫生服务站', '全运村社区卫生服务站', null, null, '04', 5, '21011201901', 21011201901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201902', '210112019', '浑南区桃仙卫生院泰奕桃源社区卫生服务站', '泰奕桃源社区卫生服务站', null, null, '04', 5, '21011201902', 21011201902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201903', '210112019', '浑南区桃仙卫生院桃仙街道班家寨村卫生室', '桃仙街道班家寨村卫生室', null, null, '04', 5, '21011201903', 21011201903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201904', '210112019', '浑南区桃仙卫生院桃仙街道富家村卫生室', '桃仙街道富家村卫生室', null, null, '04', 5, '21011201904', 21011201904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201905', '210112019', '浑南区桃仙卫生院桃仙街道高力井子村卫生室', '桃仙街道高力井子村卫生室', null, null, '04', 5, '21011201905', 21011201905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201906', '210112019', '浑南区桃仙卫生院桃仙街道古南村卫生室', '桃仙街道古南村卫生室', null, null, '04', 5, '21011201906', 21011201906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201907', '210112019', '浑南区桃仙卫生院桃仙街道古台北社区卫生服务站', '桃仙街道古台北社区卫生服务站', null, null, '04', 5, '21011201907', 21011201907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201908', '210112019', '浑南区桃仙卫生院桃仙街道合作村卫生室', '桃仙街道合作村卫生室', null, null, '04', 5, '21011201908', 21011201908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201909', '210112019', '浑南区桃仙卫生院桃仙街道黄山村卫生室', '桃仙街道黄山村卫生室', null, null, '04', 5, '21011201909', 21011201909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201910', '210112019', '浑南区桃仙卫生院桃仙街道马楼子村卫生室', '桃仙街道马楼子村卫生室', null, null, '04', 5, '21011201910', 21011201910, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201911', '210112019', '浑南区桃仙卫生院桃仙街道美的社区卫生服务站', '桃仙街道美的社区卫生服务站', null, null, '04', 5, '21011201911', 21011201911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201912', '210112019', '浑南区桃仙卫生院桃仙街道莫子山社区卫生服务站', '桃仙街道莫子山社区卫生服务站', null, null, '04', 5, '21011201912', 21011201912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201913', '210112019', '浑南区桃仙卫生院桃仙街道南石村卫生室', '桃仙街道南石村卫生室', null, null, '04', 5, '21011201913', 21011201913, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201914', '210112019', '浑南区桃仙卫生院桃仙街道聂三村卫生室', '桃仙街道聂三村卫生室', null, null, '04', 5, '21011201914', 21011201914, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201915', '210112019', '浑南区桃仙卫生院桃仙街道宁路村卫生室', '桃仙街道宁路村卫生室', null, null, '04', 5, '21011201915', 21011201915, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 400 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201916', '210112019', '浑南区桃仙卫生院桃仙街道桃二村卫生室', '桃仙街道桃二村卫生室', null, null, '04', 5, '21011201916', 21011201916, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201917', '210112019', '浑南区桃仙卫生院桃仙街道桃一村卫生室', '桃仙街道桃一村卫生室', null, null, '04', 5, '21011201917', 21011201917, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201918', '210112019', '浑南区桃仙卫生院桃仙街道万家村卫生室', '桃仙街道万家村卫生室', null, null, '04', 5, '21011201918', 21011201918, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201919', '210112019', '浑南区桃仙卫生院桃仙街道于山社区卫生服务站', '桃仙街道于山社区卫生服务站', null, null, '04', 5, '21011201919', 21011201919, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202001', '210112020', '浑南区李相卫生院李相街道保和村卜艳芬卫生室', '李相街道保和村卜艳芬卫生室', null, null, '04', 5, '21011202001', 21011202001, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202002', '210112020', '浑南区李相卫生院李相街道保合社区卫生室', '李相街道保合社区卫生室', null, null, '04', 5, '21011202002', 21011202002, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202003', '210112020', '浑南区李相卫生院李相街道得胜屯村卫生室', '李相街道得胜屯村卫生室', null, null, '04', 5, '21011202003', 21011202003, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202004', '210112020', '浑南区李相卫生院李相街道高力村卫生室', '李相街道高力村卫生室', null, null, '04', 5, '21011202004', 21011202004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202005', '210112020', '浑南区李相卫生院李相街道后李相社区卫生服务站', '李相街道后李相社区卫生服务站', null, null, '04', 5, '21011202005', 21011202005, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202006', '210112020', '浑南区李相卫生院李相街道后桑林子村刘芳卫生室', '李相街道后桑林子村刘芳卫生室', null, null, '04', 5, '21011202006', 21011202006, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202007', '210112020', '浑南区李相卫生院李相街道后桑林子村卫生室', '李相街道后桑林子村卫生室', null, null, '04', 5, '21011202007', 21011202007, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202008', '210112020', '浑南区李相卫生院李相街道化石台村卫生室', '李相街道化石台村卫生室', null, null, '04', 5, '21011202008', 21011202008, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202009', '210112020', '浑南区李相卫生院李相街道化石台村张敏卫生室', '李相街道化石台村张敏卫生室', null, null, '04', 5, '21011202009', 21011202009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202010', '210112020', '浑南区李相卫生院李相街道老塘峪村卜树辉卫生室', '李相街道老塘峪村卜树辉卫生室', null, null, '04', 5, '21011202010', 21011202010, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202011', '210112020', '浑南区李相卫生院李相街道老塘峪村卫生室', '李相街道老塘峪村卫生室', null, null, '04', 5, '21011202011', 21011202011, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202012', '210112020', '浑南区李相卫生院李相街道李相社区卫生服务站', '李相街道李相社区卫生服务站', null, null, '04', 5, '21011202012', 21011202012, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202013', '210112020', '浑南区李相卫生院李相街道南大甸子村文蕴华卫生室', '李相街道南大甸子村文蕴华卫生室', null, null, '04', 5, '21011202013', 21011202013, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202014', '210112020', '浑南区李相卫生院李相街道南大甸子社区卫生室', '李相街道南大甸子社区卫生室', null, null, '04', 5, '21011202014', 21011202014, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202015', '210112020', '浑南区李相卫生院李相街道南井村卫生室', '李相街道南井村卫生室', null, null, '04', 5, '21011202015', 21011202015, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202016', '210112020', '浑南区李相卫生院李相街道南岭村孟颖男卫生室', '李相街道南岭村孟颖男卫生室', null, null, '04', 5, '21011202016', 21011202016, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202017', '210112020', '浑南区李相卫生院李相街道南岭村钟伟林卫生室', '李相街道南岭村钟伟林卫生室', null, null, '04', 5, '21011202017', 21011202017, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202018', '210112020', '浑南区李相卫生院李相街道南岭社区卫生服务站', '李相街道南岭社区卫生服务站', null, null, '04', 5, '21011202018', 21011202018, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202019', '210112020', '浑南区李相卫生院李相街道前李村赵春淼卫生室', '李相街道前李村赵春淼卫生室', null, null, '04', 5, '21011202019', 21011202019, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202020', '210112020', '浑南区李相卫生院李相街道前李相社区卫生服务站', '李相街道前李相社区卫生服务站', null, null, '04', 5, '21011202020', 21011202020, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202021', '210112020', '浑南区李相卫生院李相街道前桑林子村卫生室', '李相街道前桑林子村卫生室', null, null, '04', 5, '21011202021', 21011202021, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202022', '210112020', '浑南区李相卫生院李相街道前桑林子村赵连宝卫生室', '李相街道前桑林子村赵连宝卫生室', null, null, '04', 5, '21011202022', 21011202022, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202023', '210112020', '浑南区李相卫生院李相街道三家寨村郭铁建卫生室', '李相街道三家寨村郭铁建卫生室', null, null, '04', 5, '21011202023', 21011202023, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202024', '210112020', '浑南区李相卫生院李相街道三家寨社区卫生服务站', '李相街道三家寨社区卫生服务站', null, null, '04', 5, '21011202024', 21011202024, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202025', '210112020', '浑南区李相卫生院李相街道上泉水峪村卫生室', '李相街道上泉水峪村卫生室', null, null, '04', 5, '21011202025', 21011202025, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202026', '210112020', '浑南区李相卫生院李相街道施家寨社区卫生室', '李相街道施家寨社区卫生室', null, null, '04', 5, '21011202026', 21011202026, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202027', '210112020', '浑南区李相卫生院李相街道施加寨村房俊卫生室', '李相街道施加寨村房俊卫生室', null, null, '04', 5, '21011202027', 21011202027, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202028', '210112020', '浑南区李相卫生院李相街道石官屯村崔恩光卫生室', '李相街道石官屯村崔恩光卫生室', null, null, '04', 5, '21011202028', 21011202028, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202029', '210112020', '浑南区李相卫生院李相街道石官屯社区卫生服务站', '李相街道石官屯社区卫生服务站', null, null, '04', 5, '21011202029', 21011202029, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202030', '210112020', '浑南区李相卫生院李相街道收兵台村陈世奎卫生室', '李相街道收兵台村陈世奎卫生室', null, null, '04', 5, '21011202030', 21011202030, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202031', '210112020', '浑南区李相卫生院李相街道收兵台社区卫生室', '李相街道收兵台社区卫生室', null, null, '04', 5, '21011202031', 21011202031, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202032', '210112020', '浑南区李相卫生院李相街道孙家寨村高振军卫生室', '李相街道孙家寨村高振军卫生室', null, null, '04', 5, '21011202032', 21011202032, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202033', '210112020', '浑南区李相卫生院李相街道孙家寨村康丽娟卫生室', '李相街道孙家寨村康丽娟卫生室', null, null, '04', 5, '21011202033', 21011202033, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202034', '210112020', '浑南区李相卫生院李相街道孙家寨社区卫生室', '李相街道孙家寨社区卫生室', null, null, '04', 5, '21011202034', 21011202034, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202035', '210112020', '浑南区李相卫生院李相街道瓦子峪村卫生室', '李相街道瓦子峪村卫生室', null, null, '04', 5, '21011202035', 21011202035, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202036', '210112020', '浑南区李相卫生院李相街道王宝石寨村关国荣卫生室', '李相街道王宝石寨村关国荣卫生室', null, null, '04', 5, '21011202036', 21011202036, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202037', '210112020', '浑南区李相卫生院李相街道王宝石寨社区卫生室', '李相街道王宝石寨社区卫生室', null, null, '04', 5, '21011202037', 21011202037, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202038', '210112020', '浑南区李相卫生院李相街道王起寨村冯成卫生室', '李相街道王起寨村冯成卫生室', null, null, '04', 5, '21011202038', 21011202038, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202039', '210112020', '浑南区李相卫生院李相街道王起寨社区卫生室', '李相街道王起寨社区卫生室', null, null, '04', 5, '21011202039', 21011202039, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202040', '210112020', '浑南区李相卫生院李相街道王士兰村朱海泉卫生室', '李相街道王士兰村朱海泉卫生室', null, null, '04', 5, '21011202040', 21011202040, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202041', '210112020', '浑南区李相卫生院李相街道王士兰社区卫生服务站', '李相街道王士兰社区卫生服务站', null, null, '04', 5, '21011202041', 21011202041, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202042', '210112020', '浑南区李相卫生院李相街道下泉水峪村卫生室', '李相街道下泉水峪村卫生室', null, null, '04', 5, '21011202042', 21011202042, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202043', '210112020', '浑南区李相卫生院李相街道营城子村潘俊华卫生室', '李相街道营城子村潘俊华卫生室', null, null, '04', 5, '21011202043', 21011202043, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202044', '210112020', '浑南区李相卫生院李相街道营城子村王淑琴卫生室', '李相街道营城子村王淑琴卫生室', null, null, '04', 5, '21011202044', 21011202044, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202045', '210112020', '浑南区李相卫生院李相街道营城子村卫生室', '李相街道营城子村卫生室', null, null, '04', 5, '21011202045', 21011202045, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202046', '210112020', '浑南区李相卫生院李相街道营林社区卫生室', '李相街道营林社区卫生室', null, null, '04', 5, '21011202046', 21011202046, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202047', '210112020', '浑南区李相卫生院李相街道元科村任广福卫生室', '李相街道元科村任广福卫生室', null, null, '04', 5, '21011202047', 21011202047, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202048', '210112020', '浑南区李相卫生院李相街道元科村卫生室', '李相街道元科村卫生室', null, null, '04', 5, '21011202048', 21011202048, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202049', '210112020', '浑南区李相卫生院李相街道张沙布村白雪飞卫生室', '李相街道张沙布村白雪飞卫生室', null, null, '04', 5, '21011202049', 21011202049, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202050', '210112020', '浑南区李相卫生院李相街道张沙布村边海阅卫生室', '李相街道张沙布村边海阅卫生室', null, null, '04', 5, '21011202050', 21011202050, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202051', '210112020', '浑南区李相卫生院李相街道张沙布村卫生室', '李相街道张沙布村卫生室', null, null, '04', 5, '21011202051', 21011202051, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202052', '210112020', '浑南区李相卫生院李相街道闫家沟村卫生室', '李相街道闫家沟村卫生室', null, null, '04', 5, '21011202052', 21011202052, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202101', '210112021', '沈阳市浑南区营城子社区卫生服务中心后桑林子刘芳卫生室', '后桑林子刘芳卫生室', null, null, '04', 5, '21011202101', 21011202101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202102', '210112021', '沈阳市浑南区营城子社区卫生服务中心南大甸子村文蕴华卫生室', '南大甸子村文蕴华卫生室', null, null, '04', 5, '21011202102', 21011202102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202103', '210112021', '沈阳市浑南区营城子社区卫生服务中心前桑林子村任穆珍卫生室', '前桑林子村任穆珍卫生室', null, null, '04', 5, '21011202103', 21011202103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202104', '210112021', '沈阳市浑南区营城子社区卫生服务中心前桑林子村赵连宝卫生室', '前桑林子村赵连宝卫生室', null, null, '04', 5, '21011202104', 21011202104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202201', '210112022', '浑南区汪家卫生院汪家街道百齐社区卫生服务站', '汪家街道百齐社区卫生服务站', null, null, '04', 5, '21011202201', 21011202201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202202', '210112022', '浑南区汪家卫生院汪家街道大甸子社区卫生服务站', '汪家街道大甸子社区卫生服务站', null, null, '04', 5, '21011202202', 21011202202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202203', '210112022', '浑南区汪家卫生院汪家街道大深井子社区卫生服务站', '汪家街道大深井子社区卫生服务站', null, null, '04', 5, '21011202203', 21011202203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202204', '210112022', '浑南区汪家卫生院汪家街道东和社区卫生服务站', '汪家街道东和社区卫生服务站', null, null, '04', 5, '21011202204', 21011202204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202205', '210112022', '浑南区汪家卫生院汪家街道方园社区卫生服务站', '汪家街道方园社区卫生服务站', null, null, '04', 5, '21011202205', 21011202205, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202206', '210112022', '浑南区汪家卫生院汪家街道丰乐社区卫生服务站', '汪家街道丰乐社区卫生服务站', null, null, '04', 5, '21011202206', 21011202206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202207', '210112022', '浑南区汪家卫生院汪家街道干河子村卫生室', '汪家街道干河子村卫生室', null, null, '04', 5, '21011202207', 21011202207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202208', '210112022', '浑南区汪家卫生院汪家街道千德社区卫生服务站', '汪家街道千德社区卫生服务站', null, null, '04', 5, '21011202208', 21011202208, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202209', '210112022', '浑南区汪家卫生院汪家街道三家子社区卫生服务站', '汪家街道三家子社区卫生服务站', null, null, '04', 5, '21011202209', 21011202209, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202210', '210112022', '浑南区汪家卫生院汪家街道上伯官社区卫生服务站', '汪家街道上伯官社区卫生服务站', null, null, '04', 5, '21011202210', 21011202210, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202211', '210112022', '浑南区汪家卫生院汪家街道汪家北社区卫生服务站', '汪家街道汪家北社区卫生服务站', null, null, '04', 5, '21011202211', 21011202211, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202212', '210112022', '浑南区汪家卫生院汪家街道汪家南社区卫生服务站', '汪家街道汪家南社区卫生服务站', null, null, '04', 5, '21011202212', 21011202212, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202213', '210112022', '浑南区汪家卫生院汪家街道汪家社区卫生服务站', '汪家街道汪家社区卫生服务站', null, null, '04', 5, '21011202213', 21011202213, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202214', '210112022', '浑南区汪家卫生院汪家街道下伯官社区卫生服务站', '汪家街道下伯官社区卫生服务站', null, null, '04', 5, '21011202214', 21011202214, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202215', '210112022', '浑南区汪家卫生院汪家街道小甸子社区卫生服务站', '汪家街道小甸子社区卫生服务站', null, null, '04', 5, '21011202215', 21011202215, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202216', '210112022', '浑南区汪家卫生院汪家街道小深井子社区卫生服务站', '汪家街道小深井子社区卫生服务站', null, null, '04', 5, '21011202216', 21011202216, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202301', '210112023', '浑南区王滨卫生院深井子街道东靠山村王桂菊卫生室', '深井子街道东靠山村王桂菊卫生室', null, null, '04', 5, '21011202301', 21011202301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202302', '210112023', '浑南区王滨卫生院深井子街道东靠山王桂菊卫生室', '深井子街道东靠山王桂菊卫生室', null, null, '04', 5, '21011202302', 21011202302, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202303', '210112023', '浑南区王滨卫生院深井子街道洪台沟村卫生室', '深井子街道洪台沟村卫生室', null, null, '04', 5, '21011202303', 21011202303, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202304', '210112023', '浑南区王滨卫生院深井子街道后康村李连国卫生室', '深井子街道后康村李连国卫生室', null, null, '04', 5, '21011202304', 21011202304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202305', '210112023', '浑南区王滨卫生院深井子街道后康村李连国卫生室', '深井子街道后康村李连国卫生室', null, null, '04', 5, '21011202305', 21011202305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202306', '210112023', '浑南区王滨卫生院深井子街道金德胜村卫生室', '深井子街道金德胜村卫生室', null, null, '04', 5, '21011202306', 21011202306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202307', '210112023', '浑南区王滨卫生院深井子街道金德胜王世海卫生室', '深井子街道金德胜王世海卫生室', null, null, '04', 5, '21011202307', 21011202307, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202308', '210112023', '浑南区王滨卫生院深井子街道李相村李秋艳卫生室', '深井子街道李相村李秋艳卫生室', null, null, '04', 5, '21011202308', 21011202308, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202309', '210112023', '浑南区王滨卫生院深井子街道李相社区卫生服务站', '深井子街道李相社区卫生服务站', null, null, '04', 5, '21011202309', 21011202309, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202310', '210112023', '浑南区王滨卫生院深井子街道潘李村卫生室', '深井子街道潘李村卫生室', null, null, '04', 5, '21011202310', 21011202310, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202311', '210112023', '浑南区王滨卫生院深井子街道前康村卫生室', '深井子街道前康村卫生室', null, null, '04', 5, '21011202311', 21011202311, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202312', '210112023', '浑南区王滨卫生院深井子街道前康村张丽卫生室', '深井子街道前康村张丽卫生室', null, null, '04', 5, '21011202312', 21011202312, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202313', '210112023', '浑南区王滨卫生院深井子街道深井子镇畜牧场村卫生室', '深井子街道深井子镇畜牧场村卫生室', null, null, '04', 5, '21011202313', 21011202313, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202314', '210112023', '浑南区王滨卫生院深井子街道兴农村滕俊坤卫生室', '深井子街道兴农村滕俊坤卫生室', null, null, '04', 5, '21011202314', 21011202314, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202315', '210112023', '浑南区王滨卫生院深井子街道兴农社区卫生服务站', '深井子街道兴农社区卫生服务站', null, null, '04', 5, '21011202315', 21011202315, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202316', '210112023', '浑南区王滨卫生院深井子街道永胜村孙玉环卫生室', '深井子街道永胜村孙玉环卫生室', null, null, '04', 5, '21011202316', 21011202316, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202317', '210112023', '浑南区王滨卫生院深井子街道永胜村卫生室', '深井子街道永胜村卫生室', null, null, '04', 5, '21011202317', 21011202317, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202318', '210112023', '浑南区王滨卫生院深井子街道于桥村卫生室', '深井子街道于桥村卫生室', null, null, '04', 5, '21011202318', 21011202318, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202319', '210112023', '浑南区王滨卫生院深井子街道于胜村陈春荣卫生室', '深井子街道于胜村陈春荣卫生室', null, null, '04', 5, '21011202319', 21011202319, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202320', '210112023', '浑南区王滨卫生院深井子街道于胜村卫生室', '深井子街道于胜村卫生室', null, null, '04', 5, '21011202320', 21011202320, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202321', '210112023', '浑南区王滨卫生院王滨街道八家子村赵艳丽卫生室', '王滨街道八家子村赵艳丽卫生室', null, null, '04', 5, '21011202321', 21011202321, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202322', '210112023', '浑南区王滨卫生院王滨街道大乐村卫生室', '王滨街道大乐村卫生室', null, null, '04', 5, '21011202322', 21011202322, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202323', '210112023', '浑南区王滨卫生院王滨街道东八家子村卫生室', '王滨街道东八家子村卫生室', null, null, '04', 5, '21011202323', 21011202323, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202324', '210112023', '浑南区王滨卫生院王滨街道富家村富俊卫生室', '王滨街道富家村富俊卫生室', null, null, '04', 5, '21011202324', 21011202324, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 500 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202325', '210112023', '浑南区王滨卫生院王滨街道富家村卫生室', '王滨街道富家村卫生室', null, null, '04', 5, '21011202325', 21011202325, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202326', '210112023', '浑南区王滨卫生院王滨街道后沟村刘太功卫生室', '王滨街道后沟村刘太功卫生室', null, null, '04', 5, '21011202326', 21011202326, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202327', '210112023', '浑南区王滨卫生院王滨街道后沟村卫生室', '王滨街道后沟村卫生室', null, null, '04', 5, '21011202327', 21011202327, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202328', '210112023', '浑南区王滨卫生院王滨街道荒地村郭志忠卫生室', '王滨街道荒地村郭志忠卫生室', null, null, '04', 5, '21011202328', 21011202328, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202329', '210112023', '浑南区王滨卫生院王滨街道荒地沟村卫生室', '王滨街道荒地沟村卫生室', null, null, '04', 5, '21011202329', 21011202329, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202330', '210112023', '浑南区王滨卫生院王滨街道尖山子村李雅秋卫生室', '王滨街道尖山子村李雅秋卫生室', null, null, '04', 5, '21011202330', 21011202330, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202331', '210112023', '浑南区王滨卫生院王滨街道尖山子村卫生室', '王滨街道尖山子村卫生室', null, null, '04', 5, '21011202331', 21011202331, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202332', '210112023', '浑南区王滨卫生院王滨街道王滨村卫生室', '王滨街道王滨村卫生室', null, null, '04', 5, '21011202332', 21011202332, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202333', '210112023', '浑南区王滨卫生院王滨街道王滨社区卫生服务站', '王滨街道王滨社区卫生服务站', null, null, '04', 5, '21011202333', 21011202333, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202334', '210112023', '浑南区王滨卫生院王滨街道魏家村王恒卫生室', '王滨街道魏家村王恒卫生室', null, null, '04', 5, '21011202334', 21011202334, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202335', '210112023', '浑南区王滨卫生院王滨街道魏家村卫生室', '王滨街道魏家村卫生室', null, null, '04', 5, '21011202335', 21011202335, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202336', '210112023', '浑南区王滨卫生院王滨街道中华寺村李柏岁卫生室', '王滨街道中华寺村李柏岁卫生室', null, null, '04', 5, '21011202336', 21011202336, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202337', '210112023', '浑南区王滨卫生院王滨街道中华寺村卫生室', '王滨街道中华寺村卫生室', null, null, '04', 5, '21011202337', 21011202337, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202401', '210112024', '浑南区望滨卫生院东四家子社区', '东四家子社区', null, null, '04', 5, '21011202401', 21011202401, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202402', '210112024', '浑南区望滨卫生院房身社区', '房身社区', null, null, '04', 5, '21011202402', 21011202402, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202403', '210112024', '浑南区望滨卫生院古砬子社区', '古砬子社区', null, null, '04', 5, '21011202403', 21011202403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202404', '210112024', '浑南区望滨卫生院黑林子社区', '黑林子社区', null, null, '04', 5, '21011202404', 21011202404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202405', '210112024', '浑南区望滨卫生院莲花社区', '莲花社区', null, null, '04', 5, '21011202405', 21011202405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202406', '210112024', '浑南区望滨卫生院南三家子社区', '南三家子社区', null, null, '04', 5, '21011202406', 21011202406, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202407', '210112024', '浑南区望滨卫生院邱家社区', '邱家社区', null, null, '04', 5, '21011202407', 21011202407, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202408', '210112024', '浑南区望滨卫生院山城子社区', '山城子社区', null, null, '04', 5, '21011202408', 21011202408, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202409', '210112024', '浑南区望滨卫生院王滨街道八家子村赵艳丽卫生室', '王滨街道八家子村赵艳丽卫生室', null, null, '04', 5, '21011202409', 21011202409, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202410', '210112024', '浑南区望滨卫生院王滨街道富家村富俊卫生室', '王滨街道富家村富俊卫生室', null, null, '04', 5, '21011202410', 21011202410, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202411', '210112024', '浑南区望滨卫生院王滨街道后沟村刘太功卫生室', '王滨街道后沟村刘太功卫生室', null, null, '04', 5, '21011202411', 21011202411, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202412', '210112024', '浑南区望滨卫生院王滨街道荒地村郭志忠卫生室', '王滨街道荒地村郭志忠卫生室', null, null, '04', 5, '21011202412', 21011202412, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202413', '210112024', '浑南区望滨卫生院王滨街道尖山子村李雅秋卫生室', '王滨街道尖山子村李雅秋卫生室', null, null, '04', 5, '21011202413', 21011202413, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202414', '210112024', '浑南区望滨卫生院王滨街道魏家村王恒卫生室', '王滨街道魏家村王恒卫生室', null, null, '04', 5, '21011202414', 21011202414, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202415', '210112024', '浑南区望滨卫生院王滨街道中华寺村李柏岁卫生室', '王滨街道中华寺村李柏岁卫生室', null, null, '04', 5, '21011202415', 21011202415, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202416', '210112024', '浑南区望滨卫生院望滨社区', '望滨社区', null, null, '04', 5, '21011202416', 21011202416, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202417', '210112024', '浑南区望滨卫生院新屯社区', '新屯社区', null, null, '04', 5, '21011202417', 21011202417, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202418', '210112024', '浑南区望滨卫生院曾家沟社区', '曾家沟社区', null, null, '04', 5, '21011202418', 21011202418, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210310', '210122103', '沈阳市辽中县冷子堡镇业兴村卫生室', '冷子堡镇业兴村卫生室', null, null, '15', 6, '21012210310', 21012210310, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210907', '210122109', '沈阳市辽中县肖寨门镇七南村卫生室', '肖寨门镇七南村卫生室', null, null, '15', 6, '21012210907', 21012210907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211209', '210122112', '沈阳市辽中县城郊镇龙湾村卫生室', '城郊镇龙湾村卫生室', null, null, '15', 6, '21012211209', 21012211209, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211406', '210122114', '沈阳市辽中县养士堡镇王家岗村卫生室', '养士堡镇王家岗村卫生室', null, null, '15', 6, '21012211406', 21012211406, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211712', '210122117', '沈阳市辽中县老大房乡曹家村卫生室', '老大房乡曹家村卫生室', null, null, '15', 6, '21012211712', 21012211712, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112001', '210112', '浑南区直管社区机构', '浑南区直管机构', null, null, '04', 5, '210112001', 210112001, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112009', '210112', '浑南区东湖社区卫生服务中心', '东湖社区卫生服务中心', null, null, '04', 5, '210112009', 210112009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112021', '210112', '浑南区营城子社区卫生服务中心', '营城子社区卫生服务中心', null, null, '04', 5, '210112021', 210112021, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112022', '210112', '浑南区汪家卫生院', '浑南区汪家卫生院', null, null, '04', 5, '210112022', 210112022, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200101', '210112001', '古城子村卫生室', '古城子村卫生室', null, null, '04', 5, '21011200101', 21011200101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200102', '210112001', '葫芦村金希楼卫生室', '葫芦村金希楼卫生室', null, null, '04', 5, '21011200102', 21011200102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200103', '210112001', '李巴彦村卫生室', '李巴彦村卫生室', null, null, '04', 5, '21011200103', 21011200103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200104', '210112001', '刘付村卫生室', '刘付村卫生室', null, null, '04', 5, '21011200104', 21011200104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200105', '210112001', '罗官村卫生室', '罗官村卫生室', null, null, '04', 5, '21011200105', 21011200105, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200106', '210112001', '麦子屯村卫生室', '罗官村卫生室', null, null, '04', 5, '21011200106', 21011200106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200107', '210112001', '棉花村熊莉莉卫生室', '棉花村熊莉莉卫生室', null, null, '04', 5, '21011200107', 21011200107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200108', '210112001', '牛相村卫生室', '牛相村卫生室', null, null, '04', 5, '21011200108', 21011200108, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200109', '210112001', '仁境村朱政会卫生室', '仁境村朱政会卫生室', null, null, '04', 5, '21011200109', 21011200109, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200110', '210112001', '三家子魏威卫生室', '三家子魏威卫生室', null, null, '04', 5, '21011200110', 21011200110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200111', '210112001', '上佰曹菊颖卫生室', '上佰曹菊颖卫生室', null, null, '04', 5, '21011200111', 21011200111, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200112', '210112001', '省卫生计生委沈阳市卫生局浑南区卫生局', '浑南区卫生局', null, null, '04', 5, '21011200112', 21011200112, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200113', '210112001', '石庙子村卫生室', '石庙子村卫生室', null, null, '04', 5, '21011200113', 21011200113, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200114', '210112001', '水家村卫生室', '水家村卫生室', null, null, '04', 5, '21011200114', 21011200114, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200115', '210112001', '汪北金泉江卫生室', '汪北金泉江卫生室', null, null, '04', 5, '21011200115', 21011200115, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200116', '210112001', '王家湾村卫生室', '王家湾村卫生室', null, null, '04', 5, '21011200116', 21011200116, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200117', '210112001', '下佰赵谦勇卫生室', '下佰赵谦勇卫生室', null, null, '04', 5, '21011200117', 21011200117, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200118', '210112001', '杨官村卫生室', '杨官村卫生室', null, null, '04', 5, '21011200118', 21011200118, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200119', '210112001', '养竹村村卫生室', '养竹村村卫生室', null, null, '04', 5, '21011200119', 21011200119, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200701', '210112007', '浑南区英达卫生院公家社区卫生室', '公家社区卫生室', null, null, '04', 5, '21011200701', 21011200701, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200702', '210112007', '浑南区英达卫生院英达村赵国壮卫生室', '英达村赵国壮卫生室', null, null, '04', 5, '21011200702', 21011200702, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200703', '210112007', '浑南区英达卫生院英达社区卫生室', '英达社区卫生室', null, null, '04', 5, '21011200703', 21011200703, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200901', '210112009', '浑南区东湖社区卫生服务中心东湖街道东岗子村卫生室', '东湖街道东岗子村卫生室', null, null, '04', 5, '21011200901', 21011200901, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200902', '210112009', '浑南区东湖社区卫生服务中心东湖街道古城子村卫生室', '东湖街道古城子村卫生室', null, null, '04', 5, '21011200902', 21011200902, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200903', '210112009', '浑南区东湖社区卫生服务中心东湖街道李巴彦村卫生室', '东湖街道李巴彦村卫生室', null, null, '04', 5, '21011200903', 21011200903, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200904', '210112009', '浑南区东湖社区卫生服务中心东湖街道刘付屯村卫生室', '东湖街道刘付屯村卫生室', null, null, '04', 5, '21011200904', 21011200904, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200905', '210112009', '浑南区东湖社区卫生服务中心东湖街道罗官屯村卫生室', '东湖街道罗官屯村卫生室', null, null, '04', 5, '21011200905', 21011200905, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200906', '210112009', '浑南区东湖社区卫生服务中心东湖街道麦子屯村卫生室', '东湖街道麦子屯村卫生室', null, null, '04', 5, '21011200906', 21011200906, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501608', '210105016', '东油馨村团队', '东油馨村团队', null, null, '15', 6, '21010501608', 21010501608, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500305', '210105003', '舍利塔社区团队', '舍利塔社区团队', null, null, '15', 6, '21010500305', 21010500305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501203', '210105012', '紫东团队', '紫东团队', null, null, '15', 6, '21010501203', 21010501203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500403', '210105004', '西湖团队', '西湖团队', null, null, '15', 6, '21010500403', 21010500403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500204', '210105002', '中光社区团队', '中光社区团队', null, null, '15', 6, '21010500204', 21010500204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105009', '210105', '怒江社区卫生服务中心', '怒江社区卫生服务中心', null, null, '04', 5, '210105009', 210105009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500802', '210105008', '宝合社区团队', '宝合社区团队', null, null, '15', 6, '21010500802', 21010500802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500508', '210105005', '儿保责任医师团队', '儿保责任医师团队', null, null, '15', 6, '21010500508', 21010500508, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500408', '210105004', '北陵社区', '北陵社区', null, null, '15', 6, '21010500408', 21010500408, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500909', '210105009', '精卫团队', '精卫团队', null, null, '15', 6, '21010500909', 21010500909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501301', '210105013', '嫩江团队', '嫩江团队', null, null, '15', 6, '21010501301', 21010501301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500906', '210105009', '翔凤团队', '翔凤团队', null, null, '15', 6, '21010500906', 21010500906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501606', '210105016', '百花团队', '百花团队', null, null, '15', 6, '21010501606', 21010501606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501120', '210105011', '免费签约二团队', '免费签约二团队', null, null, '15', 6, '21010501120', 21010501120, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501116', '210105011', '签约三团队', '签约三团队', null, null, '15', 6, '21010501116', 21010501116, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501201', '210105012', '长北社区', '长北社区', null, null, '15', 6, '21010501201', 21010501201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500303', '210105003', '花园社区团队', '花园社区团队', null, null, '15', 6, '21010500303', 21010500303, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500601', '210105006', '卫生服务团队一', '卫生服务团队一', null, null, '15', 6, '21010500601', 21010500601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500404', '210105004', '扬子江团队', '扬子江团队', null, null, '15', 6, '21010500404', 21010500404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105004', '210105', '泰山社区卫生服务中心', '泰山社区卫生服务中心', null, null, '04', 5, '210105004', 210105004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105005', '210105', '向工社区卫生服务中心', '向工社区卫生服务中心', null, null, '04', 5, '210105005', 210105005, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500206', '210105002', '永泰社区团队', '永泰社区团队', null, null, '15', 6, '21010500206', 21010500206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500207', '210105002', '保安社区团队', '保安社区团队', null, null, '15', 6, '21010500207', 21010500207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501009', '210105010', '鲲鹏团队', '鲲鹏团队', null, null, '15', 6, '21010501009', 21010501009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500105', '210105001', '前进团队', '前进团队', null, null, '15', 6, '21010500105', 21010500105, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500405', '210105004', '湘江团队', '湘江团队', null, null, '15', 6, '21010500405', 21010500405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500506', '210105005', '福居社区团队', '福居社区团队', null, null, '15', 6, '21010500506', 21010500506, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500805', '210105008', '中海西社区团队', '中海西社区团队', null, null, '15', 6, '21010500805', 21010500805, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500111', '210105001', '庐山团队', '庐山团队', null, null, '15', 6, '21010500111', 21010500111, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501607', '210105016', '桔蔷团队', '桔蔷团队', null, null, '15', 6, '21010501607', 21010501607, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501118', '210105011', '签约五团队', '签约五团队', null, null, '15', 6, '21010501118', 21010501118, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500604', '210105006', '卫生服务团队四', '卫生服务团队四', null, null, '15', 6, '21010500604', 21010500604, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 600 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500301', '210105003', '太平社区团队', '太平社区团队', null, null, '15', 6, '21010500301', 21010500301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500803', '210105008', '天山社区团队', '天山社区团队', null, null, '15', 6, '21010500803', 21010500803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500607', '210105006', '卫生服务团队七', '卫生服务团队七', null, null, '15', 6, '21010500607', 21010500607, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500201', '210105002', '安民社区团队', '安民社区团队', null, null, '15', 6, '21010500201', 21010500201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105003', '210105', '淮河社区卫生服务中心', '淮河社区卫生服务中心', null, null, '04', 5, '210105003', 210105003, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500504', '210105005', '引水社区团队', '引水社区团队', null, null, '15', 6, '21010500504', 21010500504, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500102', '210105001', '龙江团队', '龙江团队', null, null, '15', 6, '21010500102', 21010500102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500806', '210105008', '汾河社区团队', '汾河社区团队', null, null, '15', 6, '21010500806', 21010500806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500110', '210105001', '松江团队', '松江团队', null, null, '15', 6, '21010500110', 21010500110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501124', '210105011', '计划生育', '计划生育', null, null, '15', 6, '21010501124', 21010501124, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500911', '210105009', '张新环团队', '张新环团队', null, null, '15', 6, '21010500911', 21010500911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500912', '210105009', '于漫江团队', '于漫江团队', null, null, '15', 6, '21010500912', 21010500912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500913', '210105009', '怒江团队', '怒江团队', null, null, '15', 6, '21010500913', 21010500913, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500914', '210105009', '申琼福团队', '申琼福团队', null, null, '15', 6, '21010500914', 21010500914, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500915', '210105009', '赵巍团队', '赵巍团队', null, null, '15', 6, '21010500915', 21010500915, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500916', '210105009', '蒋清波团队', '蒋清波团队', null, null, '15', 6, '21010500916', 21010500916, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501125', '210105011', '新汉城社区团队', '新汉城社区团队', null, null, '15', 6, '21010501125', 21010501125, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501126', '210105011', '王亮团队', '王亮团队', null, null, '15', 6, '21010501126', 21010501126, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501127', '210105011', '明北社区团队', '明北社区团队', null, null, '15', 6, '21010501127', 21010501127, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501128', '210105011', '邸红团队', '邸红团队', null, null, '15', 6, '21010501128', 21010501128, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501129', '210105011', '秀水社区团队', '秀水社区团队', null, null, '15', 6, '21010501129', 21010501129, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501130', '210105011', '明廉社区卫生服务三团队', '明廉社区卫生服务三团队', null, null, '15', 6, '21010501130', 21010501130, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501131', '210105011', '明廉社区卫生服务四团队', '明廉社区卫生服务四团队', null, null, '15', 6, '21010501131', 21010501131, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501132', '210105011', '儿保', '儿保', null, null, '15', 6, '21010501132', 21010501132, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501133', '210105011', '疾控', '疾控', null, null, '15', 6, '21010501133', 21010501133, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501134', '210105011', '明廉社区卫生服务六团队', '明廉社区卫生服务六团队', null, null, '15', 6, '21010501134', 21010501134, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501135', '210105011', '陈茉团队', '陈茉团队', null, null, '15', 6, '21010501135', 21010501135, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501136', '210105011', '明西社区团队', '明西社区团队', null, null, '15', 6, '21010501136', 21010501136, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501137', '210105011', '谢乾团队', '谢乾团队', null, null, '15', 6, '21010501137', 21010501137, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120608', '210111206', '沈阳市苏家屯区白清乡营盘村卫生室', '白清乡营盘村卫生室', null, null, '15', 6, '21011120608', 21011120608, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100716', '210111007', '沈阳市苏家屯区林盛街道沙河站村卫生室', '林盛街道沙河站村卫生室', null, null, '15', 6, '21011100716', 21011100716, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100719', '210111007', '沈阳市苏家屯区林盛街道四方台村卫生室', '林盛街道四方台村卫生室', null, null, '15', 6, '21011100719', 21011100719, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100722', '210111007', '沈阳市苏家屯区林盛街道文成村卫生室', '林盛街道文成村卫生室', null, null, '15', 6, '21011100722', 21011100722, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100707', '210111007', '沈阳市苏家屯区林盛街道吉祥村卫生室1', '林盛街道吉祥村卫生室1', null, null, '15', 6, '21011100707', 21011100707, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100723', '210111007', '沈阳市苏家屯区林盛街道褚贵村卫生室', '林盛街道褚贵村卫生室', null, null, '15', 6, '21011100723', 21011100723, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100701', '210111007', '沈阳市苏家屯区林盛街道北乱村卫生室', '林盛街道北乱村卫生室', null, null, '15', 6, '21011100701', 21011100701, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100713', '210111007', '沈阳市苏家屯区林盛街道林盛村卫生室', '林盛街道林盛村卫生室', null, null, '15', 6, '21011100713', 21011100713, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100710', '210111007', '沈阳市苏家屯区林盛街道矿工社区卫生服务站', '林盛街道矿工社区卫生服务站', null, null, '15', 6, '21011100710', 21011100710, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120702', '210111207', '沈阳市苏家屯区佟沟街道胜利村卫生室', '佟沟街道胜利村卫生室', null, null, '15', 6, '21011120702', 21011120702, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120704', '210111207', '沈阳市苏家屯区佟沟街道佟沟村卫生室', '佟沟街道佟沟村卫生室', null, null, '15', 6, '21011120704', 21011120704, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120703', '210111207', '沈阳市苏家屯区佟沟街道苏沟村卫生室', '佟沟街道苏沟村卫生室', null, null, '15', 6, '21011120703', 21011120703, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111208', '210111', '沈阳市苏家屯区永乐乡卫生服务中心', '永乐乡卫生服务中心', null, null, '04', 5, '210111208', 210111208, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120808', '210111208', '沈阳市苏家屯区永乐乡小韩台村卫生室', '永乐乡小韩台村卫生室', null, null, '15', 6, '21011120808', 21011120808, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120802', '210111208', '沈阳市苏家屯区永乐乡宝相村卫生室', '永乐乡宝相村卫生室', null, null, '15', 6, '21011120802', 21011120802, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120812', '210111208', '沈阳市苏家屯区永乐乡永乐村卫生室', '永乐乡永乐村卫生室', null, null, '15', 6, '21011120812', 21011120812, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120811', '210111208', '沈阳市苏家屯区永乐乡杨树村卫生室', '永乐乡杨树村卫生室', null, null, '15', 6, '21011120811', 21011120811, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120813', '210111208', '沈阳市苏家屯区永乐乡永胜村卫生室', '永乐乡永胜村卫生室', null, null, '15', 6, '21011120813', 21011120813, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111002', '210111', '沈阳市苏家屯区陈相街道卫生服务中心', '陈相街道卫生服务中心', null, null, '04', 5, '210111002', 210111002, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100212', '210111002', '沈阳市苏家屯区陈相街道铁西社区卫生服务站', '陈相街道铁西社区卫生服务站', null, null, '15', 6, '21011100212', 21011100212, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100201', '210111002', '沈阳市苏家屯区陈相街道大陈村卫生室', '陈相街道大陈村卫生室', null, null, '15', 6, '21011100201', 21011100201, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100210', '210111002', '沈阳市苏家屯区陈相街道桃木村卫生室', '陈相街道桃木村卫生室', null, null, '15', 6, '21011100210', 21011100210, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100207', '210111002', '沈阳市苏家屯区陈相街道柳匠村卫生室', '陈相街道柳匠村卫生室', null, null, '15', 6, '21011100207', 21011100207, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100203', '210111002', '沈阳市苏家屯区陈相街道丰收村卫生室', '陈相街道丰收村卫生室', null, null, '15', 6, '21011100203', 21011100203, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100205', '210111002', '沈阳市苏家屯区陈相街道黑牛村卫生室', '陈相街道黑牛村卫生室', null, null, '15', 6, '21011100205', 21011100205, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100215', '210111002', '沈阳市苏家屯区陈相街道英村卫生室村卫生室', '陈相街道英村卫生室村卫生室', null, null, '15', 6, '21011100215', 21011100215, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111104', '210111', '沈阳市苏家屯区沙河街道卫生服务中心', '沙河街道卫生服务中心', null, null, '04', 5, '210111104', 210111104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110412', '210111104', '沈阳市苏家屯区沙河街道沙河社区卫生服务站', '沙河街道沙河社区卫生服务站', null, null, '15', 6, '21011110412', 21011110412, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110416', '210111104', '沈阳市苏家屯区沙河街道新立村卫生室', '沙河街道新立村卫生室', null, null, '15', 6, '21011110416', 21011110416, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110404', '210111104', '沈阳市苏家屯区沙河街道官屯村卫生室', '沙河街道官屯村卫生室', null, null, '15', 6, '21011110404', 21011110404, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110405', '210111104', '沈阳市苏家屯区沙河街道韩城村卫生室', '沙河街道韩城村卫生室', null, null, '15', 6, '21011110405', 21011110405, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110401', '210111104', '沈阳市苏家屯区沙河街道鲍家洼子村卫生室', '沙河街道鲍家洼子村卫生室', null, null, '15', 6, '21011110401', 21011110401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110406', '210111104', '沈阳市苏家屯区沙河街道河北村卫生室', '沙河街道河北村卫生室', null, null, '15', 6, '21011110406', 21011110406, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110414', '210111104', '沈阳市苏家屯区沙河街道吴家屯村卫生室', '沙河街道吴家屯村卫生室', null, null, '15', 6, '21011110414', 21011110414, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110403', '210111104', '沈阳市苏家屯区沙河街道东大房身村卫生室', '沙河街道东大房身村卫生室', null, null, '15', 6, '21011110403', 21011110403, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110411', '210111104', '沈阳市苏家屯区沙河街道沙河铺村卫生室', '沙河街道沙河铺村卫生室', null, null, '15', 6, '21011110411', 21011110411, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110409', '210111104', '沈阳市苏家屯区沙河街道三道岗子村卫生室', '沙河街道三道岗子村卫生室', null, null, '15', 6, '21011110409', 21011110409, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120313', '210111203', '沈阳市苏家屯区王纲乡张当堡村卫生室', '王纲乡张当堡村卫生室', null, null, '15', 6, '21011120313', 21011120313, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120308', '210111203', '沈阳市苏家屯区王纲乡拉他泡村卫生室', '王纲乡拉他泡村卫生室', null, null, '15', 6, '21011120308', 21011120308, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120312', '210111203', '沈阳市苏家屯区王纲乡新开河村第一卫生室', '王纲乡新开河村第一卫生室', null, null, '15', 6, '21011120312', 21011120312, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120311', '210111203', '沈阳市苏家屯区王纲乡王纲堡村卫生室', '王纲乡王纲堡村卫生室', null, null, '15', 6, '21011120311', 21011120311, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111102', '210111', '沈阳市苏家屯区红菱镇卫生服务中心', '红菱镇卫生服务中心', null, null, '04', 5, '210111102', 210111102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110207', '210111102', '沈阳市苏家屯区红菱镇铁北社区卫生服务站', '红菱镇铁北社区卫生服务站', null, null, '15', 6, '21011110207', 21011110207, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110205', '210111102', '沈阳市苏家屯区红菱镇三矿社区卫生服务站', '红菱镇三矿社区卫生服务站', null, null, '15', 6, '21011110205', 21011110205, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110202', '210111102', '沈阳市苏家屯区红菱镇道南社区卫生服务站', '红菱镇道南社区卫生服务站', null, null, '15', 6, '21011110202', 21011110202, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110204', '210111102', '沈阳市苏家屯区红菱镇南红村卫生室', '红菱镇南红村卫生室', null, null, '15', 6, '21011110204', 21011110204, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110209', '210111102', '沈阳市苏家屯区红菱镇烟台村卫生室', '红菱镇烟台村卫生室', null, null, '15', 6, '21011110209', 21011110209, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110206', '210111102', '沈阳市苏家屯区红菱镇宋大台村卫生室', '红菱镇宋大台村卫生室', null, null, '15', 6, '21011110206', 21011110206, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110208', '210111102', '沈阳市苏家屯区红菱镇宛庄村卫生室', '红菱镇宛庄村卫生室', null, null, '15', 6, '21011110208', 21011110208, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110210', '210111102', '沈阳市苏家屯区红菱镇张良村卫生室', '红菱镇张良村卫生室', null, null, '15', 6, '21011110210', 21011110210, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111004', '210111', '沈阳市苏家屯区临湖街道卫生服务中心', '临湖街道卫生服务中心', null, null, '04', 5, '210111004', 210111004, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100410', '210111004', '沈阳市苏家屯区临湖街道金电社区卫生服务站', '临湖街道金电社区卫生服务站', null, null, '15', 6, '21011100410', 21011100410, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100411', '210111004', '沈阳市苏家屯区临湖街道前漠村卫生室', '临湖街道前漠村卫生室', null, null, '15', 6, '21011100411', 21011100411, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100404', '210111004', '沈阳市苏家屯区临湖街道东漠村卫生室', '临湖街道东漠村卫生室', null, null, '15', 6, '21011100404', 21011100404, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100409', '210111004', '沈阳市苏家屯区临湖街道金宝台村卫生室', '临湖街道金宝台村卫生室', null, null, '15', 6, '21011100409', 21011100409, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100402', '210111004', '沈阳市苏家屯区临湖街道大淑村卫生室', '临湖街道大淑村卫生室', null, null, '15', 6, '21011100402', 21011100402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100403', '210111004', '沈阳市苏家屯区临湖街道代古村卫生室', '临湖街道代古村卫生室', null, null, '15', 6, '21011100403', 21011100403, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100417', '210111004', '沈阳市苏家屯区临湖街道西苏村卫生室', '临湖街道西苏村卫生室', null, null, '15', 6, '21011100417', 21011100417, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111001', '210111', '沈阳市苏家屯区解放街道卫生服务中心', '解放街道卫生服务中心', null, null, '04', 5, '210111001', 210111001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100109', '210111001', '沈阳市苏家屯区解放街道站前社区卫生服务站', '解放街道站前社区卫生服务站', null, null, '15', 6, '21011100109', 21011100109, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100102', '210111001', '沈阳市苏家屯区解放街道高楼子社区卫生服务站', '解放街道高楼子社区卫生服务站', null, null, '15', 6, '21011100102', 21011100102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100106', '210111001', '沈阳市苏家屯区解放街道人民路社区卫生服务站', '解放街道人民路社区卫生服务站', null, null, '15', 6, '21011100106', 21011100106, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100103', '210111001', '沈阳市苏家屯区解放街道公园西社区卫生服务站', '解放街道公园西社区卫生服务站', null, null, '15', 6, '21011100103', 21011100103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100104', '210111001', '沈阳市苏家屯区解放街道广场社区卫生服务站', '解放街道广场社区卫生服务站', null, null, '15', 6, '21011100104', 21011100104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111005', '210111', '沈阳市苏家屯区中兴街道卫生服务中心', '中兴街道卫生服务中心', null, null, '04', 5, '210111005', 210111005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100502', '210111005', '沈阳市苏家屯区中兴街道莱茵南郡社区卫生服务站', '中兴街道莱茵南郡社区卫生服务站', null, null, '15', 6, '21011100502', 21011100502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100507', '210111005', '沈阳市苏家屯区中兴街道育红社区卫生服务站', '中兴街道育红社区卫生服务站', null, null, '15', 6, '21011100507', 21011100507, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100508', '210111005', '沈阳市苏家屯区中兴街道中兴社区卫生服务站', '中兴街道中兴社区卫生服务站', null, null, '15', 6, '21011100508', 21011100508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100501', '210111005', '沈阳市苏家屯区中兴街道官房社区卫生服务站', '中兴街道官房社区卫生服务站', null, null, '15', 6, '21011100501', 21011100501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100504', '210111005', '沈阳市苏家屯区中兴街道施官社区卫生服务站', '中兴街道施官社区卫生服务站', null, null, '15', 6, '21011100504', 21011100504, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100503', '210111005', '沈阳市苏家屯区中兴街道七家社区卫生服务站', '中兴街道七家社区卫生服务站', null, null, '15', 6, '21011100503', 21011100503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 700 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111006', '210111', '沈阳市苏家屯区湖西街道卫生服务中心', '湖西街道卫生服务中心', null, null, '04', 5, '210111006', 210111006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100607', '210111006', '沈阳市苏家屯区湖西街道葵花社区卫生服务站', '湖西街道葵花社区卫生服务站', null, null, '15', 6, '21011100607', 21011100607, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100601', '210111006', '沈阳市苏家屯区湖西街道大格社区卫生服务站', '湖西街道大格社区卫生服务站', null, null, '15', 6, '21011100601', 21011100601, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100608', '210111006', '沈阳市苏家屯区湖西街道林校社区卫生服务站', '湖西街道林校社区卫生服务站', null, null, '15', 6, '21011100608', 21011100608, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100609', '210111006', '沈阳市苏家屯区湖西街道育林社区卫生服务站', '湖西街道育林社区卫生服务站', null, null, '15', 6, '21011100609', 21011100609, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100602', '210111006', '沈阳市苏家屯区湖西街道电业社区卫生服务站', '湖西街道电业社区卫生服务站', null, null, '15', 6, '21011100602', 21011100602, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100606', '210111006', '沈阳市苏家屯区湖西街道金山社区卫生服务站', '湖西街道金山社区卫生服务站', null, null, '15', 6, '21011100606', 21011100606, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100604', '210111006', '沈阳市苏家屯区湖西街道金宝社区卫生服务站', '湖西街道金宝社区卫生服务站', null, null, '15', 6, '21011100604', 21011100604, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100415', '210111004', '沈阳市苏家屯区临湖街道王秀村卫生室', '临湖街道王秀村卫生室', null, null, '15', 6, '21011100415', 21011100415, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111003', '210111', '沈阳市苏家屯区民主街道卫生服务中心', '民主街道卫生服务中心', null, null, '04', 5, '210111003', 210111003, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100302', '210111003', '沈阳市苏家屯区民主街道地号社区卫生服务站', '民主街道地号社区卫生服务站', null, null, '15', 6, '21011100302', 21011100302, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100306', '210111003', '沈阳市苏家屯区民主街道老街社区卫生服务站', '民主街道老街社区卫生服务站', null, null, '15', 6, '21011100306', 21011100306, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100309', '210111003', '沈阳市苏家屯区民主街道南舍宅社区卫生服务站', '民主街道南舍宅社区卫生服务站', null, null, '15', 6, '21011100309', 21011100309, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100308', '210111003', '沈阳市苏家屯区民主街道临湖社区卫生服务站', '民主街道临湖社区卫生服务站', null, null, '15', 6, '21011100308', 21011100308, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111008', '210111', '沈阳市苏家屯区姚千街道卫生服务中心', '姚千街道卫生服务中心', null, null, '04', 5, '210111008', 210111008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100807', '210111008', '沈阳市苏家屯区姚千街道上瓦房村卫生室', '姚千街道上瓦房村卫生室', null, null, '15', 6, '21011100807', 21011100807, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100808', '210111008', '沈阳市苏家屯区姚千街道唐台村卫生室', '姚千街道唐台村卫生室', null, null, '15', 6, '21011100808', 21011100808, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100811', '210111008', '沈阳市苏家屯区姚千街道小卜屯村卫生室', '姚千街道小卜屯村卫生室', null, null, '15', 6, '21011100811', 21011100811, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100805', '210111008', '沈阳市苏家屯区姚千街道刘太平村卫生室', '姚千街道刘太平村卫生室', null, null, '15', 6, '21011100805', 21011100805, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100804', '210111008', '沈阳市苏家屯区姚千街道刘千村卫生室', '姚千街道刘千村卫生室', null, null, '15', 6, '21011100804', 21011100804, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100816', '210111008', '沈阳市苏家屯区姚千街道佟家村卫生室', '姚千街道佟家村卫生室', null, null, '15', 6, '21011100816', 21011100816, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100802', '210111008', '沈阳市苏家屯区姚千街道陡子峪村卫生室', '姚千街道陡子峪村卫生室', null, null, '15', 6, '21011100802', 21011100802, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100813', '210111008', '沈阳市苏家屯区姚千街道杨千后房村卫生室', '姚千街道杨千后房村卫生室', null, null, '15', 6, '21011100813', 21011100813, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201035', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道文澜苑社区卫生服务站', '五三街道文澜苑社区卫生服务站', null, null, '04', 5, '21011201035', 21011201035, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201036', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道五里台村卫生室', '五三街道五里台村卫生室', null, null, '04', 5, '21011201036', 21011201036, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201037', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道五三社区卫生服务站', '五三街道五三社区卫生服务站', null, null, '04', 5, '21011201037', 21011201037, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201038', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道西黄泥坎村卫生室', '五三街道西黄泥坎村卫生室', null, null, '04', 5, '21011201038', 21011201038, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201039', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道营盘朝鲜村卫生室', '五三街道营盘朝鲜村卫生室', null, null, '04', 5, '21011201039', 21011201039, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201040', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道营盘村卫生室', '五三街道营盘村卫生室', null, null, '04', 5, '21011201040', 21011201040, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201041', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道榆工社区卫生室', '五三街道榆工社区卫生室', null, null, '04', 5, '21011201041', 21011201041, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201042', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道在水一方社区卫生服务站', '五三街道在水一方社区卫生服务站', null, null, '04', 5, '21011201042', 21011201042, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201043', '210112010', '沈阳市浑南区五三社区卫生服务中心五三街道张官村卫生室', '五三街道张官村卫生室', null, null, '04', 5, '21011201043', 21011201043, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201401', '210112014', '浑南区高坎社区卫生服务中心奥园社区', '奥园社区', null, null, '04', 5, '21011201401', 21011201401, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201402', '210112014', '浑南区高坎社区卫生服务中心大夫社区', '大夫社区', null, null, '04', 5, '21011201402', 21011201402, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201403', '210112014', '浑南区高坎社区卫生服务中心高坎社区', '高坎社区', null, null, '04', 5, '21011201403', 21011201403, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201404', '210112014', '浑南区高坎社区卫生服务中心高坎一社区', '高坎一社区', null, null, '04', 5, '21011201404', 21011201404, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400710', '210114007', '沈阳市于洪区北陵街道靓马社区卫生服务站', '北陵街道靓马社区卫生服务站', null, null, '15', 6, '21011400710', 21011400710, null, null, null, null, '沈阳市于洪区白山路101甲2-2', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400104', '210114005', '沈阳市于洪区迎宾路街道迎宾花园社区卫生服务站', '迎宾路街道迎宾花园社区卫生服务站', null, null, '15', 6, '21011400104', 21011400104, null, null, null, null, '于洪区沈大路8号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400901', '210114009', '沈阳市于洪区沙岭街道园东社区卫生服务站', '沙岭街道园东社区卫生服务站', null, null, '15', 6, '21011400901', 21011400901, null, null, null, null, '于洪区沙岭街道园东社区', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114013', '210114', '沈阳市于洪区马三家中心卫生院', '于洪区马三家中心卫生院', null, null, '04', 5, '210114013', 210114013, null, null, null, null, '沈阳市于洪区马三家镇东三十家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400304', '210114003', '沈阳市于洪区陵西街道陵西社区卫生服务站', '陵西街道陵西社区卫生服务站', null, null, '15', 6, '21011400304', 21011400304, null, null, null, null, '沈阳市于洪区黄山路12号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114213', '210114', '沈阳市于洪区老边卫生院', '于洪区老边卫生院', null, null, '04', 5, '210114213', 210114213, null, null, null, null, '沈阳市于洪区光辉街道高台村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401104', '210114011', '沈阳市于洪区城东街道吉力湖社区卫生服务站', '城东街道吉力湖社区卫生服务站', null, null, '15', 6, '21011401104', 21011401104, null, null, null, null, '沈阳市于洪区吉力湖街207-2号网点22门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400709', '210114007', '沈阳市于洪区北陵街道建安社区卫生服务站', '北陵街道建安社区卫生服务站', null, null, '15', 6, '21011400709', 21011400709, null, null, null, null, '辽宁省沈阳市于洪区昆山西路165-5号（6号楼）1门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114005', '210114', '沈阳市于洪区于洪社区卫生服务中心', '于洪区于洪社区卫生服务中心', null, null, '04', 5, '210114005', 210114005, null, null, null, null, '沈阳市于洪区太湖街7号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401103', '210114011', '沈阳市于洪区城东湖街道阳光100社区卫生服务站', '城东湖街道阳光100社区卫生服务站', null, null, '15', 6, '21011401103', 21011401103, null, null, null, null, '沈阳市于洪区吉力湖街30-2号9门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400103', '210114005', '沈阳市于洪区迎宾路街道沈新园社区卫生服务站', '迎宾路街道沈新园社区卫生服务站', null, null, '15', 6, '21011400103', 21011400103, null, null, null, null, ' 沈阳市于洪区沈新路16-1号4门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400711', '210114007', '沈阳市于洪区北陵街道云都社区卫生服务站', '北陵街道云都社区卫生服务站', null, null, '15', 6, '21011400711', 21011400711, null, null, null, null, '沈阳市于洪区白山路60-11号2.3门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400102', '210114005', '沈阳市于洪区迎宾路街道丁香社区卫生服务站', '迎宾路街道丁香社区卫生服务站', null, null, '15', 6, '21011400102', 21011400102, null, null, null, null, '沈阳市于洪区广业西路11号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400704', '210114007', '沈阳市于洪区北陵街道橡树湾社区卫生服务站', '北陵街道橡树湾社区卫生服务站', null, null, '15', 6, '21011400704', 21011400704, null, null, null, null, '于洪区北陵街道汀江街G2-6号10门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122117', '210122', '辽中县老大房乡卫生院', '老大房乡卫生院', null, null, '04', 5, '210122117', 210122117, null, null, null, null, '辽中老达房乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122107', '210122', '沈阳市辽中县满都户镇', '辽中县满都户镇', null, null, '04', 5, '210122107', 210122107, null, null, null, null, '辽中满都户镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122103', '210122', '辽中县冷子堡镇卫生院', '辽中县冷子堡镇卫生', null, null, '04', 5, '210122103', 210122103, null, null, null, null, '辽中区冷子堡镇冷后村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122119', '210122', '辽中县牛心坨镇卫生院', '牛心坨镇卫生院', null, null, '04', 5, '210122119', 210122119, null, null, null, null, '辽中县牛心坨村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122115', '210122', '辽中县潘家堡镇卫生院', '潘家堡镇卫生院', null, null, '04', 5, '210122115', 210122115, null, null, null, null, '辽中潘家堡乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122112', '210122', '辽中县城郊镇卫生院', '辽中县城郊镇卫生院', null, null, '04', 5, '210122112', 210122112, null, null, null, null, '辽中城郊乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122116', '210122', '辽中县老观坨镇卫生院', '老观坨镇卫生院', null, null, '04', 5, '210122116', 210122116, null, null, null, null, '辽中老观坨乡老观坨村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122109', '210122', '辽中县肖寨门镇卫生院', '辽中县肖寨门镇卫生院', null, null, '04', 5, '210122109', 210122109, null, null, null, null, '辽中县肖寨门村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122102', '210122', '辽中县朱家房镇卫生院', '辽中县朱家房镇卫生院', null, null, '04', 5, '210122102', 210122102, null, null, null, null, '辽中县朱家房镇朱家房村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122114', '210122', '辽中县养士堡镇卫生院', '养士堡镇卫生院', null, null, '04', 5, '210122114', 210122114, null, null, null, null, '辽中养士堡乡养前村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122108', '210122', '沈阳市辽中县杨士岗镇卫生院', '辽中县杨士岗镇卫生院', null, null, '04', 5, '210122108', 210122108, null, null, null, null, '辽中杨士岗镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122105', '210122', '辽中县第二人民医院', '辽中县第二人民医院', null, null, '04', 5, '210122105', 210122105, null, null, null, null, '辽中茨榆坨镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122104', '210122', '辽中县刘二堡镇卫生院', '辽中县刘二堡镇卫生院', null, null, '04', 5, '210122104', 210122104, null, null, null, null, '辽中刘二堡镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123101', '210123', '小城子中心卫生院', '小城子中心卫生院', null, null, '04', 5, '210123101', 210123101, null, null, null, null, '康平县小城子镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102022', '210102', '和平区太原街社区卫生服务中心', '和平区太原街社区卫生服务中心', null, null, '04', 5, '210102022', 210102022, null, '23214760', null, null, '沈阳市和平区同泽南街79号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102021', '210102', '和平区长白社区卫生服务中心', '和平区长白社区卫生服务中心', null, null, '04', 5, '210102021', 210102021, null, '23733998', null, null, '沈阳市和平区长白街117号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102007', '210102', '和平区西塔社区卫生服务中心', '和平区西塔社区卫生服务中心', null, null, '04', 5, '210102007', 210102007, null, '23472360', null, null, '沈阳市和平区西塔街85号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102001', '210102', '和平区浑河湾社区卫生服务中心', '和平区浑河湾社区卫生服务中心', null, null, '04', 5, '210102001', 210102001, null, '02423317542', null, null, '沈阳市和平区砂南路3号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102023', '210102', '和平区北市社区卫生服务中心', '和平区北市社区卫生服务中心', null, null, '04', 5, '210102023', 210102023, null, '82511189', null, null, '沈阳市和平区哈尔滨路60号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102013', '210102', '和平区南市场社区卫生服务中心', '和平区南市场社区卫生服务中心', null, null, '04', 5, '210102013', 210102013, null, '23863818', null, null, '沈阳市和平区南四经街5号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102029', '210102', '和平区南站社区卫生服务中心', '和平区南站社区卫生服务中心', null, null, '04', 5, '210102029', 210102029, null, '23834230', null, null, '沈阳市和平区中山路35号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200103', '210102001', '沈阳市和平区浑河湾街道砂山新村社区卫生服务站', '浑河湾街道砂山新村社区卫生服务站', null, null, '15', 6, '21010200103', 21010200103, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105027', '210105', '沈阳市皇姑区怒江社区卫生服务中心', '皇姑区怒江社区卫生服务中心', null, null, '04', 5, '210105027', 210105027, null, null, null, null, '沈阳市皇姑区昆山中路169号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111106', '210111', '沈阳市苏家屯区三院', '沈阳市苏家屯区三院', null, null, '04', 5, '210111106', 210111106, null, null, null, null, '沈阳市苏家屯区陈相屯镇凤山路27号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106013', '210106', '翟家社区卫生服务中心', '翟家社区卫生服务中心', null, null, '04', 5, '210106013', 210106013, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106014', '210106', '凌空社区卫生服务中心', '凌空社区卫生服务中心', null, null, '04', 5, '210106014', 210106014, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601501', '210106015', '张福安村卫生室', '张福安村卫生室', null, null, '15', 6, '21010601501', 21010601501, null, '89311670', null, null, '沈阳市于洪区高花镇张福安村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601502', '210106015', '西狼村卫生室', '西狼村卫生室', null, null, '15', 6, '21010601502', 21010601502, null, '29328460', null, null, '沈阳市于洪区高花镇西狼村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601503', '210106015', '车家村卫生室', '车家村卫生室', null, null, '15', 6, '21010601503', 21010601503, null, '29328298', null, null, '沈阳市于洪区高花镇车家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601601', '210106016', '张三家子村卫生室', '张三家子村卫生室', null, null, '15', 6, '21010601601', 21010601601, null, '87790694', null, null, '沈阳市于洪区新民屯镇张三家子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601602', '210106016', '八三堡子村卫生室', '八三堡子村卫生室', null, null, '15', 6, '21010601602', 21010601602, null, '87991542', null, null, '沈阳市辽中县新民屯镇八三堡村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601603', '210106016', '土堡子村卫生室', '土堡子村卫生室', null, null, '15', 6, '21010601603', 21010601603, null, '13998287588', null, null, '沈阳市辽中县新民屯镇土堡子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601604', '210106016', '后村卫生室', '后村卫生室', null, null, '15', 6, '21010601604', 21010601604, null, '87797602', null, null, '沈阳市辽中县新民屯镇后村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601605', '210106016', '前村卫生室', '前村卫生室', null, null, '15', 6, '21010601605', 21010601605, null, '87796976', null, null, '沈阳市于洪区新民屯镇前村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601606', '210106016', '新东村卫生室', '新东村卫生室', null, null, '15', 6, '21010601606', 21010601606, null, '87796082', null, null, '沈阳市于洪区新民屯镇新东村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601701', '210106017', '王秀台村第一卫生室', '王秀台村第一卫生室', null, null, '15', 6, '21010601701', 21010601701, null, '13124243529', null, null, '沈阳市辽中县长滩镇王秀台村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601702', '210106017', '烟台子村第一卫生室', '烟台子村第一卫生室', null, null, '15', 6, '21010601702', 21010601702, null, '87788306', null, null, '沈阳市辽中县长滩镇烟台子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601703', '210106017', '张家村第一卫生室', '张家村第一卫生室', null, null, '15', 6, '21010601703', 21010601703, null, '13002447237', null, null, '沈阳市辽中县长滩镇张家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601704', '210106017', '英架子村第一卫生室', '英架子村第一卫生室', null, null, '15', 6, '21010601704', 21010601704, null, '15840327045', null, null, '沈阳市辽中县长滩镇英架子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601705', '210106017', '东余村第一卫生室', '东余村第一卫生室', null, null, '15', 6, '21010601705', 21010601705, null, '13840257428', null, null, '沈阳市辽中县长滩镇东余村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601706', '210106017', '小兀拉村第一卫生室', '小兀拉村第一卫生室', null, null, '15', 6, '21010601706', 21010601706, null, '87789688', null, null, '沈阳市辽中县长滩镇小兀拉村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601707', '210106017', '土西村第一卫生室', '土西村第一卫生室', null, null, '15', 6, '21010601707', 21010601707, null, '87788402', null, null, '沈阳市辽中县长滩镇土西村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601708', '210106017', '土北村第一卫生室', '土北村第一卫生室', null, null, '15', 6, '21010601708', 21010601708, null, '15998371122', null, null, '沈阳市辽中县长滩镇土北村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601709', '210106017', '前余村第一卫生室', '前余村第一卫生室', null, null, '15', 6, '21010601709', 21010601709, null, '87781780', null, null, '沈阳市辽中县长滩镇前余村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601710', '210106017', '东街村第一卫生室', '东街村第一卫生室', null, null, '15', 6, '21010601710', 21010601710, null, '87781134', null, null, '沈阳市辽中县长滩镇东街村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601801', '210106018', '西古村卫生室', '西古村卫生室', null, null, '15', 6, '21010601801', 21010601801, null, '89339964', null, null, '沈阳市于洪区大潘镇西古村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601802', '210106018', '李达村第二卫生室', '李达村第二卫生室', null, null, '15', 6, '21010601802', 21010601802, null, '89333045', null, null, '沈阳市于洪区大潘镇李达村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601803', '210106018', '大潘村第二卫生室', '大潘村第二卫生室', null, null, '15', 6, '21010601803', 21010601803, null, '89892566', null, null, '沈阳市于洪区大潘镇大潘村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601901', '210106019', '四方台村第五卫生室', '四方台村第五卫生室', null, null, '15', 6, '21010601901', 21010601901, null, '13704042698', null, null, '沈阳市辽中县四方台镇四方台村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601902', '210106019', '西余村第一卫生室', '西余村第一卫生室', null, null, '15', 6, '21010601902', 21010601902, null, '13840057335', null, null, '沈阳市辽中县四方台镇西余村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 800 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601903', '210106019', '平安堡村第二卫生室', '平安堡村第二卫生室', null, null, '15', 6, '21010601903', 21010601903, null, '87779307', null, null, '沈阳市辽中县四方台镇平安堡村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601904', '210106019', '太平庄村第一卫生室', '太平庄村第一卫生室', null, null, '15', 6, '21010601904', 21010601904, null, '13940328408', null, null, '市辽中县四方台镇太平庄村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601905', '210106019', '胜利村第三卫生室', '胜利村第三卫生室', null, null, '15', 6, '21010601905', 21010601905, null, '13889192119', null, null, '沈阳市辽中县四方台镇胜利村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601906', '210106019', '王家村第一卫生室', '王家村第一卫生室', null, null, '15', 6, '21010601906', 21010601906, null, '87774877', null, null, '沈阳市辽中县四方台镇王家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601907', '210106019', '八音台村第一卫生室', '八音台村第一卫生室', null, null, '15', 6, '21010601907', 21010601907, null, '13609828693', null, null, '沈阳市辽中县四方台镇八音台村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601908', '210106019', '土耳坨村第二卫生室', '土耳坨村第二卫生室', null, null, '15', 6, '21010601908', 21010601908, null, '13893992225', null, null, '沈阳市辽中县四方台镇土耳坨村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602001', '210106020', '彰驿村卫生室', '彰驿村卫生室', null, null, '15', 6, '21010602001', 21010602001, null, '89339641', null, null, '沈阳市于洪区彰驿镇彰驿村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602002', '210106020', '前庙三台村卫生室', '前庙三台村卫生室', null, null, '15', 6, '21010602002', 21010602002, null, '13019324726', null, null, '沈阳市于洪区彰驿镇前庙村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602003', '210106020', '双树坨子村卫生室', '双树坨子村卫生室', null, null, '15', 6, '21010602003', 21010602003, null, '89338482', null, null, '沈阳市于洪区彰驿镇双树村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602004', '210106020', '中庙三台村卫生室', '中庙三台村卫生室', null, null, '15', 6, '21010602004', 21010602004, null, '13604036362', null, null, '沈阳市于洪区彰驿镇中庙村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602005', '210106020', '朴坨子村卫生室', '朴坨子村卫生室', null, null, '15', 6, '21010602005', 21010602005, null, '89330757', null, null, '沈阳市铁西区彰驿镇朴坨村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602006', '210106020', '蔡家台子村卫生室', '蔡家台子村卫生室', null, null, '15', 6, '21010602006', 21010602006, null, '89339315', null, null, '沈阳市于洪区彰驿镇蔡家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601301', '210106013', '郎家村卫生室', '郎家村卫生室', null, null, '15', 6, '21010601301', 21010601301, null, '13940317033', null, null, '沈阳市铁西区翟家乡郎家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601201', '210106012', '余良村卫生室', '余良村卫生室', null, null, '15', 6, '21010601201', 21010601201, null, '25291235', null, null, '沈阳市铁西区杨士乡余良村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601202', '210106012', '四王村卫生室', '四王村卫生室', null, null, '15', 6, '21010601202', 21010601202, null, '89353062', null, null, '沈阳市铁西区大青乡四王村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601203', '210106012', '后模村第二卫生室', '后模村第二卫生室', null, null, '15', 6, '21010601203', 21010601203, null, '25355125', null, null, '沈阳市铁西区杨士乡后漠村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201702', '210102017', '沈阳市和平区集贤街道光复里社区卫生服务站', '集贤街道光复里社区卫生服务站', null, null, '15', 6, '21010201702', 21010201702, null, null, null, null, '沈阳市和平区南九马路84号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301801', '210103018', '沈阳市沈河区五里河街道金生社区卫生服务站', '沈河区五里河街道金生社区卫生服务站', null, null, '15', 6, '21010301801', 21010301801, null, null, null, null, '沈阳市沈河区文化路72号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010022', '2101', '沈阳市急救中心（120）', '沈阳市120', 'SYSJJZX120', null, '02', 3, '21010022', 22, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010023', '2101', '沈阳市疾病预防控制中心', '沈阳市疾控中心', 'SYSJBYFKZZ', null, '02', 3, '21010023', 23, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124203', '210124', '法库县和平乡卫生院', '法库县和平乡卫生院', null, null, '04', 5, '210124203', 210124203, null, null, null, null, '法库县和平乡和平村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124202', '210124', '法库县孟家乡卫生院', '法库县孟家乡卫生院', null, null, '04', 5, '210124202', 210124202, null, null, null, null, '法库县孟有乡孟家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124201', '210124', '法库县慈恩寺乡卫生院', '法库县慈恩寺乡卫生院', null, null, '04', 5, '210124201', 210124201, null, null, null, null, '法库县慈恩寺乡慈恩寺村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124107', '210124', '法库县丁家房镇中心卫生院', '法库县丁家房镇中心卫生院', null, null, '04', 5, '210124107', 210124107, null, null, null, null, '法库县丁家房镇丁家房村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124102', '210124', '法库县三面船镇卫生院', '法库县三面船镇卫生院', null, null, '04', 5, '210124102', 210124102, null, null, null, null, '法库县三面船鈇三面船村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124106', '210124', '法库县柏家沟镇中心卫生院', '法库县柏家沟镇中心卫生院', null, null, '04', 5, '210124106', 210124106, null, null, null, null, '法库县柏家沟镇柏家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124104', '210124', '法库县叶茂台镇卫生院', '法库县叶茂台镇卫生院', null, null, '04', 5, '210124104', 210124104, null, null, null, null, '法库县叶茂台镇叶茂台村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124204', '210124', '法库县十间房乡卫生院', '法库县十间房乡卫生院', null, null, '04', 5, '210124204', 210124204, null, null, null, null, '法库县十间房乡十间房村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300102', '210113001', '福宁社区', '福宁社区', null, null, '15', 6, '21011300102', 21011300102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301506', '210113015', '兴胜村卫生室', '兴胜村卫生室', null, null, '15', 6, '21011301506', 21011301506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301502', '210113015', '石佛寺二村卫生室', '石佛寺二村卫生室', null, null, '15', 6, '21011301502', 21011301502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300505', '210113005', '兴隆台村卫生室', '兴隆台村卫生室', null, null, '15', 6, '21011300505', 21011300505, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300501', '210113005', '盘古台村卫生室', '盘古台村卫生室', null, null, '15', 6, '21011300501', 21011300501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301508', '210113015', '立新村卫生室', '立新村卫生室', null, null, '15', 6, '21011301508', 21011301508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113015', '210113', '石佛寺街道', '石佛寺街道', null, null, '04', 5, '210113015', 210113015, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300507', '210113005', '新民村卫生室', '新民村卫生室', null, null, '15', 6, '21011300507', 21011300507, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301503', '210113015', '孟家台村卫生室', '孟家台村卫生室', null, null, '15', 6, '21011301503', 21011301503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500302', '210105003', '太东社区团队', '太东社区团队', null, null, '15', 6, '21010500302', 21010500302, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500602', '210105006', '卫生服务团队二', '卫生服务团队二', null, null, '15', 6, '21010500602', 21010500602, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500804', '210105008', '寿山社区团队', '寿山社区团队', null, null, '15', 6, '21010500804', 21010500804, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501006', '210105010', '汇宝团队', '汇宝团队', null, null, '15', 6, '21010501006', 21010501006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501102', '210105011', '明廉社区卫生服务二团队', '明廉社区卫生服务二团队', null, null, '15', 6, '21010501102', 21010501102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500101', '210105001', '晨报团队', '晨报团队', null, null, '15', 6, '21010500101', 21010500101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500401', '210105004', '北行团队', '北行团队', null, null, '15', 6, '21010500401', 21010500401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500308', '210105003', '塔中社区团队', '塔中社区团队', null, null, '15', 6, '21010500308', 21010500308, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105008', '210105', '寿泉社区卫生服务中心', '寿泉社区卫生服务中心', null, null, '04', 5, '210105008', 210105008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500307', '210105003', '怒江北社区团队', '怒江北社区团队', null, null, '15', 6, '21010500307', 21010500307, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501001', '210105010', '站南团队', '站南团队', null, null, '15', 6, '21010501001', 21010501001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500704', '210105007', '碧塘社区团队', '碧塘社区团队', null, null, '15', 6, '21010500704', 21010500704, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501005', '210105010', '华山团队', '华山团队', null, null, '15', 6, '21010501005', 21010501005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500407', '210105004', '泰山社区', '泰山社区', null, null, '15', 6, '21010500407', 21010500407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501008', '210105010', '平安团队', '平安团队', null, null, '15', 6, '21010501008', 21010501008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500807', '210105008', '淮北社区团队', '淮北社区团队', null, null, '15', 6, '21010500807', 21010500807, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501109', '210105011', '新南社区团队', '新南社区团队', null, null, '15', 6, '21010501109', 21010501109, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500112', '210105001', '武功山团队', '武功山团队', null, null, '15', 6, '21010500112', 21010500112, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500905', '210105009', '百鸟团队', '百鸟团队', null, null, '15', 6, '21010500905', 21010500905, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501101', '210105011', '明廉社区卫生服务一团队', '明廉社区卫生服务一团队', null, null, '15', 6, '21010501101', 21010501101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501112', '210105011', '建赏欧洲社区团队', '建赏欧洲社区团队', null, null, '15', 6, '21010501112', 21010501112, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500903', '210105009', '淮东团队', '淮东团队', null, null, '15', 6, '21010500903', 21010500903, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501605', '210105016', '梅江东团队', '梅江东团队', null, null, '15', 6, '21010501605', 21010501605, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501202', '210105012', '长江南团队', '长江南团队', null, null, '15', 6, '21010501202', 21010501202, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500605', '210105006', '卫生服务团队五', '卫生服务团队五', null, null, '15', 6, '21010500605', 21010500605, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501105', '210105011', '泰南社区团队', '泰南社区团队', null, null, '15', 6, '21010501105', 21010501105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501104', '210105011', '明东社区团队', '明东社区团队', null, null, '15', 6, '21010501104', 21010501104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500406', '210105004', '御花团队', '御花团队', null, null, '15', 6, '21010500406', 21010500406, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105002', '210105', '昆山社区卫生服务中心', '昆山社区卫生服务中心', null, null, '04', 5, '210105002', 210105002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105007', '210105', '三洞桥社区卫生服务中心', '三洞桥社区卫生服务中心', null, null, '04', 5, '210105007', 210105007, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500509', '210105005', '妇保责任医师团队', '妇保责任医师团队', null, null, '15', 6, '21010500509', 21010500509, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501108', '210105011', '明廉社区卫生服务八团队', '明廉社区卫生服务八团队', null, null, '15', 6, '21010501108', 21010501108, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501311', '210105013', '庐山团队', '庐山团队', null, null, '15', 6, '21010501311', 21010501311, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501402', '210105014', '武功山团队', '武功山团队', null, null, '15', 6, '21010501402', 21010501402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123208', '210123', '沙金乡卫生院', '沙金乡卫生院', null, null, '04', 5, '210123208', 210123208, null, null, null, null, '康平县沙金台乡政府所在地', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181110', '210181', '新民市法哈牛卫生院', '新民市法哈牛卫生院', null, null, '04', 5, '210181110', 210181110, null, null, null, null, '新民市法哈牛镇', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122201', '210122', '辽中县蒲东街道卫生服务中心', '蒲东街道卫生服务中心', null, null, '04', 5, '210122201', 210122201, null, null, null, null, '辽中辽中镇', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122106', '210122', '辽中县茨于坨镇卫生院', '辽中县茨于坨镇卫生院', null, null, '04', 5, '210122106', 210122106, null, null, null, null, '辽中茨榆坨镇', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122101', '210122', '辽中县于家房镇卫生院', '辽中县于家房镇卫生院', null, null, '04', 5, '210122101', 210122101, null, null, null, null, '于家房镇', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210002', '210122100', '沈阳市辽中县辽中镇新华社区卫生服务站', '辽中镇新华社区卫生服务站', null, null, '15', 6, '21012210002', 21012210002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210003', '210122100', '沈阳市辽中县辽中镇新兴社区卫生服务站', '辽中镇新兴社区卫生服务站', null, null, '15', 6, '21012210003', 21012210003, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210004', '210122100', '沈阳市辽中县辽中镇兴工社区卫生服务站', '辽中镇兴工社区卫生服务站', null, null, '15', 6, '21012210004', 21012210004, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210009', '210122100', '沈阳市辽中县辽中镇新光社区卫生服务站', '辽中镇新光社区卫生服务站', null, null, '15', 6, '21012210009', 21012210009, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210018', '210122100', '沈阳市辽中县辽中镇北环社区卫生服务站', '辽中镇北环社区卫生服务站', null, null, '15', 6, '21012210018', 21012210018, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210021', '210122100', '沈阳市辽中县辽中镇小帮牛村卫生室', '辽中镇小帮牛村卫生室', null, null, '15', 6, '21012210021', 21012210021, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210022', '210122100', '沈阳市辽中县辽中镇敖司牛村卫生室', '辽中镇敖司牛村卫生室', null, null, '15', 6, '21012210022', 21012210022, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220101', '210122201', '沈阳市辽中县辽中镇乌伯牛村卫生室', '辽中镇乌伯牛村卫生室', null, null, '15', 6, '21012220101', 21012220101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220103', '210122201', '沈阳市辽中县辽中镇徐家屯村卫生室', '辽中镇徐家屯村卫生室', null, null, '15', 6, '21012220103', 21012220103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124208', '210124', '法库县四家子蒙古族自治乡卫生院', '法库县四家子蒙古族自治乡卫生院', null, null, '04', 5, '210124208', 210124208, null, null, null, null, '法库县四家子蒙古族乡四家子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124101', '210124', '法库县大孤家子镇中心卫生院', '法库县大孤家子镇中心卫生院', null, null, '04', 5, '210124101', 210124101, null, null, null, null, '法库县大孤家子镇大孤家子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124210', '210124', '法库县卧牛石乡卫生院', '法库县卧牛石乡卫生院', null, null, '04', 5, '210124210', 210124210, null, null, null, null, '法库县卧牛石乡卧牛石村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124105', '210124', '法库县登仕堡镇卫生院', '法库县登仕堡镇卫生院', null, null, '04', 5, '210124105', 210124105, null, null, null, null, '法库县登仕堡镇登仕堡村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124209', '210124', '法库县双台子乡卫生院', '法库县双台子乡卫生院', null, null, '04', 5, '210124209', 210124209, null, null, null, null, '法库县双台子乡双台子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181103', '210181', '新民市公主屯镇中心卫生院', '新民市公主屯镇中心卫生院', null, null, '04', 5, '210181103', 210181103, null, null, null, null, '新民市公主屯镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181107', '210181', '新民市大柳屯镇中心卫生院', '新民市大柳屯镇中心卫生院', null, null, '04', 5, '210181107', 210181107, null, null, null, null, '新民市大柳屯镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181105', '210181', '新民市前当堡镇卫生院', '新民市前当堡镇卫生院', null, null, '04', 5, '210181105', 210181105, null, null, null, null, '新民市前当堡镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181202', '210181', '新民市高台子乡卫生院', '新民市高台子乡卫生院', null, null, '04', 5, '210181202', 210181202, null, null, null, null, '新民市高台子乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181207', '210181', '新民市姚堡乡卫生院', '新民市姚堡乡卫生院', null, null, '04', 5, '210181207', 210181207, null, null, null, null, '新民市姚堡乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181111', '210181', '新民市柳河沟卫生院', '新民市柳河沟卫生院', null, null, '04', 5, '210181111', 210181111, null, null, null, null, '新民市柳河沟乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181211', '210181', '新民市东蛇山子乡卫生院', '新民市东蛇山子乡卫生院', null, null, '04', 5, '210181211', 210181211, null, null, null, null, '新民市东蛇山子乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018110801', '210181108', '新民市大喇嘛乡卫生院', '新民市大喇嘛乡卫生院', null, null, '04', 5, '21018110801', 21018110801, null, null, null, null, '新民市大喇嘛乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181213', '210181', '新民市罗家房乡卫生院', '新民市罗家房乡卫生院', null, null, '04', 5, '210181213', 210181213, null, null, null, null, '新民市罗家房乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181101', '210181', '新民市大红旗镇中心卫生院', '新民市大红旗镇中心卫生院', null, null, '04', 5, '210181101', 210181101, null, null, null, null, '新民市大红旗镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 900 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181104', '210181', '新民市兴隆镇中心卫生院', '新民市兴隆镇中心卫生院', null, null, '04', 5, '210181104', 210181104, null, null, null, null, '新民市兴隆镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181208', '210181', '新民市周坨子卫生院', '新民市周坨子卫生院', null, null, '04', 5, '210181208', 210181208, null, null, null, null, '新民市周坨子镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181102', '210181', '新民市梁山中心卫生院', '新民市梁山中心卫生院', null, null, '04', 5, '210181102', 210181102, null, null, null, null, '新民市梁山镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181212', '210181', '新民市陶屯乡卫生院', '新民市陶屯乡卫生院', null, null, '04', 5, '210181212', 210181212, null, null, null, null, '新民市陶家屯乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181216', '210181', '新民市张家屯乡卫生院', '新民市张家屯乡卫生院', null, null, '04', 5, '210181216', 210181216, null, null, null, null, '新民市张家屯乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181204', '210181', '新民市金五台子乡卫生院', '新民市金五台子乡卫生院', null, null, '04', 5, '210181204', 210181204, null, null, null, null, '新民市金五台子乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181108', '210181', '新民市兴隆堡镇卫生院', '新民市兴隆堡镇卫生院', null, null, '04', 5, '210181108', 210181108, null, null, null, null, '新民市兴隆堡镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181210', '210181', '新民市新农村乡卫生院', '新民市新农村乡卫生院', null, null, '04', 5, '210181210', 210181210, null, null, null, null, '新民市新农村乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181109', '210181', '新民市胡台卫生院', '新民市胡台卫生院', null, null, '04', 5, '210181109', 210181109, null, null, null, null, '新民市胡台镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181005', '210181', '新民市城郊乡卫生院', '新民市城郊乡卫生院', null, null, '04', 5, '210181005', 210181005, null, null, null, null, '新民市城郊乡卫生院', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181209', '210181', '新民市于家窝堡乡卫生院', '新民市于家窝堡乡卫生院', null, null, '04', 5, '210181209', 210181209, null, null, null, null, '新民市于家窝堡乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181206', '210181', '新民市卢家屯乡卫生院', '新民市卢家屯乡卫生院', null, null, '04', 5, '210181206', 210181206, null, null, null, null, '新民市卢家屯乡芦屯村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181205', '210181', '新民市红旗乡卫生院', '新民市红旗乡卫生院', null, null, '04', 5, '210181205', 210181205, null, null, null, null, '新民市红旗乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181214', '210181', '新民市三道岗子乡卫生院', '新民市三道岗子乡卫生院', null, null, '04', 5, '210181214', 210181214, null, null, null, null, '新民市三道岗子乡', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113204', '210113', '沈阳市沈北新区尹家乡卫生院', '尹家乡卫生院', null, null, '04', 5, '210113204', 210113204, null, null, null, null, '沈北新区尹家乡尹家村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124100', '210124', '法库县法库镇卫生院', '法库县法库镇卫生院', null, null, '04', 5, '210124100', 210124100, null, null, null, null, '法库县法库镇吉祥街', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124205', '210124', '法库县冯贝堡乡卫生院', '法库县冯贝堡乡卫生院', null, null, '04', 5, '210124205', 210124205, null, null, null, null, '法库县冯贝堡乡冯贝堡村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103022', '210103', '沈阳市沈河区志新社区卫生服务中心', '沈河区志新社区卫生服务中心', null, null, '04', 5, '210103022', 210103022, null, null, null, null, '沈阳市沈河区小西路25-2号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105025', '210105', '沈阳市皇姑区昆山社区卫生服务中心', '皇姑区昆山社区卫生服务中心', null, null, '04', 5, '210105025', 210105025, null, null, null, null, '沈阳市皇姑区巴兰河街14号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112024', '210112', '浑南区望滨社区卫生中心', '望滨社区卫生中心', null, null, '04', 5, '210112024', 210112024, null, null, null, null, '沈阳市浑南区望滨街道南三家子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113001', '210113', '新城子街道卫生服务中心', '新城子街道卫生服务中心', null, null, '04', 5, '210113001', 210113001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400302', '210114003', '沈阳市于洪区陵西街道龙逸社区卫生服务站', '陵西街道龙逸社区卫生服务站', null, null, '15', 6, '21011400302', 21011400302, null, null, null, null, '于洪区长江北街62-22号4门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401107', '210114011', '沈阳市于洪区城东湖街道青铜社区卫生服务站', '城东湖街道青铜社区卫生服务站', null, null, '15', 6, '21011401107', 21011401107, null, null, null, null, '沈阳市于洪区吉力湖街235-40号3门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114012', '210114', '沈阳市于洪区平罗卫生院', '于洪区平罗卫生院', null, null, '04', 5, '210114012', 210114012, null, null, null, null, '沈阳市于洪区平罗街道平罗中街60号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124207', '210124', '法库县五台子乡卫生院', '法库县五台子乡卫生院', null, null, '04', 5, '210124207', 210124207, null, null, null, null, '法库县五台子乡五台子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201302', '210102013', '沈阳市和平区南市场八卦街社区卫生服务站', '南市场八卦街社区卫生服务站', null, null, '15', 6, '21010201302', 21010201302, null, null, null, null, '沈阳市和平区云集东巷33号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202101', '210102021', '沈阳市和平区长白社区天河社区卫生服务站', '长白社区天河社区卫生服务站', null, null, '15', 6, '21010202101', 21010202101, null, null, null, null, '沈阳市和平区夹河路9-1号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200202', '210102002', '沈阳市和平区新华街道宜春社区卫生服务站', '新华街道宜春社区卫生服务站', null, null, '15', 6, '21010200202', 21010200202, null, null, null, null, '沈阳市和平区南七马路48号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600001', '210106', '沈阳经济技术开发区人民医院', '沈阳经济技术开发区人民医院', null, null, '14', 4, '21010600001', 21010600001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400001', '210104', '沈阳市大东区人民医院', '沈阳市大东区人民医院', null, null, '01', 4, '21010400001', 21010400001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105023', '210105', '沈阳市皇姑区龙江社区卫生服务中心', '皇姑区龙江社区卫生服务中心', null, null, '04', 5, '210105023', 210105023, null, null, null, null, '沈阳市皇姑区宁山东路33号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110109', '210111015', '沈阳市苏家屯区八一街道八一社区卫生服务站', '八一社区卫生服务站', null, null, '15', 6, '21011110109', 21011110109, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110104', '210111015', '沈阳市苏家屯区八一街道八一官立村卫生室', '八一街道八一官立村卫生室', null, null, '15', 6, '21011110104', 21011110104, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110105', '210111015', '沈阳市苏家屯区八一街道八一来胜村卫生室', '八一街道八一来胜村卫生室', null, null, '15', 6, '21011110105', 21011110105, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110111', '210111015', '沈阳市苏家屯区八一街道八一佟罗村卫生室', '八一佟罗村卫生室', null, null, '15', 6, '21011110111', 21011110111, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110106', '210111015', '沈阳市苏家屯区八一街道八一仁而村卫生室', '八一街道八一仁而村卫生室', null, null, '15', 6, '21011110106', 21011110106, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110102', '210111015', '沈阳市苏家屯区八一街道八一八家子村卫生室', '八一街道八一八家子村卫生室', null, null, '15', 6, '21011110102', 21011110102, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110108', '210111015', '沈阳市苏家屯区八一街道八一邵林子村卫生室', '八一邵林子村卫生室', null, null, '15', 6, '21011110108', 21011110108, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110107', '210111015', '沈阳市苏家屯区八一街道八一三家子村卫生室', '八一三家子村卫生室', null, null, '15', 6, '21011110107', 21011110107, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110110', '210111015', '沈阳市苏家屯区八一街道八一武镇营村卫生室', '八一武镇营村卫生室', null, null, '15', 6, '21011110110', 21011110110, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110103', '210111015', '沈阳市苏家屯区八一街道八一大双村卫生室', '八一街道八一大双村卫生室', null, null, '15', 6, '21011110103', 21011110103, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111205', '210111', '沈阳市苏家屯区大沟乡卫生服务中心', '大沟乡卫生服务中心', null, null, '04', 5, '210111205', 210111205, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120503', '210111205', '沈阳市苏家屯区大沟乡大范村卫生室', '大沟乡大范村卫生室', null, null, '15', 6, '21011120503', 21011120503, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120504', '210111205', '沈阳市苏家屯区大沟乡大沟村卫生室', '大沟乡大沟村卫生室', null, null, '15', 6, '21011120504', 21011120504, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120501', '210111205', '沈阳市苏家屯区大沟乡菜屯村卫生室', '大沟乡菜屯村卫生室', null, null, '15', 6, '21011120501', 21011120501, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120515', '210111205', '沈阳市苏家屯区大沟乡杨城村卫生室', '大沟乡杨城村卫生室', null, null, '15', 6, '21011120515', 21011120515, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120509', '210111205', '沈阳市苏家屯区大沟乡莽公村卫生室', '大沟乡莽公村卫生室', null, null, '15', 6, '21011120509', 21011120509, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120513', '210111205', '沈阳市苏家屯区大沟乡团山村卫生室', '大沟乡团山村卫生室', null, null, '15', 6, '21011120513', 21011120513, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120507', '210111205', '沈阳市苏家屯区大沟乡胡古村卫生室', '大沟乡胡古村卫生室', null, null, '15', 6, '21011120507', 21011120507, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120511', '210111205', '沈阳市苏家屯区大沟乡沈双村卫生室', '大沟乡沈双村卫生室', null, null, '15', 6, '21011120511', 21011120511, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111105', '210111', '沈阳市苏家屯区十里河街道卫生服务中心', '十里河街道卫生服务中心', null, null, '04', 5, '210111105', 210111105, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110506', '210111105', '沈阳市苏家屯区十里河街道三洪村卫生室', '十里河街道三洪村卫生室', null, null, '15', 6, '21011110506', 21011110506, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110510', '210111105', '沈阳市苏家屯区十里河街道新庄村卫生室', '十里河街道新庄村卫生室', null, null, '15', 6, '21011110510', 21011110510, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110501', '210111105', '沈阳市苏家屯区十里河街道板桥村卫生室', '十里河街道板桥村卫生室', null, null, '15', 6, '21011110501', 21011110501, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110502', '210111105', '沈阳市苏家屯区十里河街道灰菜村卫生室', '十里河街道灰菜村卫生室', null, null, '15', 6, '21011110502', 21011110502, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110504', '210111105', '沈阳市苏家屯区十里河街道浪子村卫生室', '十里河街道浪子村卫生室', null, null, '15', 6, '21011110504', 21011110504, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110505', '210111105', '沈阳市苏家屯区十里河街道柳沟村卫生室', '十里河街道柳沟村卫生室', null, null, '15', 6, '21011110505', 21011110505, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111206', '210111', '沈阳市苏家屯区白清乡卫生服务中心', '白清乡卫生服务中心', null, null, '04', 5, '210111206', 210111206, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120603', '210111206', '沈阳市苏家屯区白清乡和顺村卫生室', '白清乡和顺村卫生室', null, null, '15', 6, '21011120603', 21011120603, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120602', '210111206', '沈阳市苏家屯区白清乡邓家沟村卫生室', '白清乡邓家沟村卫生室', null, null, '15', 6, '21011120602', 21011120602, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120607', '210111206', '沈阳市苏家屯区白清乡太平山村卫生室', '白清乡太平山村卫生室', null, null, '15', 6, '21011120607', 21011120607, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120601', '210111206', '沈阳市苏家屯区白清乡白清村卫生室', '白清乡白清村卫生室', null, null, '15', 6, '21011120601', 21011120601, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120605', '210111206', '沈阳市苏家屯区白清乡康宁营村卫生室', '白清乡康宁营村卫生室', null, null, '15', 6, '21011120605', 21011120605, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120606', '210111206', '沈阳市苏家屯区白清乡台沟村卫生室', '白清乡台沟村卫生室', null, null, '15', 6, '21011120606', 21011120606, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120604', '210111206', '沈阳市苏家屯区白清乡康家山村卫生室', '白清乡康家山村卫生室', null, null, '15', 6, '21011120604', 21011120604, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103021', '210103', '沈阳市沈河区丰乐社区卫生服务中心', '沈河区丰乐社区卫生服务中心', null, null, '04', 5, '210103021', 210103021, null, null, null, null, '沈阳市沈河区泉园三路22号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103015', '210103', '沈阳市沈河区风雨坛社区卫生服务中心', '沈河区风雨坛社区卫生服务中心', null, null, '04', 5, '210103015', 210103015, null, null, null, null, '沈阳市沈河区奉天街60号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103011', '210103', '沈阳市沈河区山东庙社区卫生服务中心', '沈河区山东庙社区卫生服务中心', null, null, '04', 5, '210103011', 210103011, null, null, null, null, '沈阳市沈河区十三纬路68号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104019', '210104', '沈阳市大东区管城社区卫生服务中心', '大东区管城社区卫生服务中心', null, null, '04', 5, '210104019', 210104019, null, null, null, null, '大东区管城四街76号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104018', '210104', '沈阳市大东区前进卫生院', '沈阳市大东区前进卫生院', null, null, '04', 5, '210104018', 210104018, null, null, null, null, '辽宁省沈阳市东陵区前进乡榆林村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105015', '210105', '沈阳市皇姑区塔湾社区卫生服务中心', '沈阳市皇姑区塔湾社区卫生服务中心', null, null, '04', 5, '210105015', 210105015, null, null, null, null, '沈阳市皇姑区珠江街130号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105012', '210105', '塔湾社区卫生服务中心', '塔湾社区卫生服务中心', null, null, '04', 5, '210105012', 210105012, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105028', '210105', '沈阳市皇姑区向工社区卫生服务中心', '皇姑区向工社区卫生服务中心', null, null, '04', 5, '210105028', 210105028, null, null, null, null, '沈阳市皇姑区涟水街20号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105021', '210105', '沈阳市皇姑区北塔社区卫生服务中心', '皇姑区北塔社区卫生服务中心', null, null, '04', 5, '210105021', 210105021, null, null, null, null, '沈阳市皇姑区崇山东路28号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105024', '210105', '沈阳市皇姑区泰山社区卫生服务中心', '皇姑区泰山社区卫生服务中心', null, null, '04', 5, '210105024', 210105024, null, null, null, null, '沈阳市皇姑区宁山中路25号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105029', '210105', '沈阳市皇姑区淮河社区卫生服务中心', '皇姑区淮河社区卫生服务中心', null, null, '04', 5, '210105029', 210105029, null, null, null, null, '沈阳市皇姑区汾河街56-4号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105026', '210105', '沈阳市皇姑区亚明社区卫生服务中心', '皇姑区亚明社区卫生服务中心', null, null, '04', 5, '210105026', 210105026, null, null, null, null, '沈阳市皇姑区黄浦江街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105017', '210105', '沈阳七三九医院', '沈阳七三九医院', null, null, '04', 5, '210105017', 210105017, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122200', '210122', '辽中县乌伯牛乡卫生院', '乌伯牛乡卫生院', null, null, '04', 5, '210122200', 210122200, null, null, null, null, '辽中乌伯牛乡', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122118', '210122', '辽中县大黑岗子乡卫生院', '大黑岗子乡卫生院', null, null, '04', 5, '210122118', 210122118, null, null, null, null, '辽中大黑乡大黑村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120510', '210111205', '沈阳市苏家屯区大沟乡莽公村卫生室（石庙子）', '大沟乡莽公村卫生室（石庙子）', null, null, '15', 6, '21011120510', 21011120510, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120514', '210111205', '沈阳市苏家屯区大沟乡团山村卫生室（东山）', '大沟乡团山村卫生室（东山）', null, null, '15', 6, '21011120514', 21011120514, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120512', '210111205', '沈阳市苏家屯区大沟乡沈双村卫生室（李双）', '大沟乡沈双村卫生室（李双）', null, null, '15', 6, '21011120512', 21011120512, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100803', '210111008', '沈阳市苏家屯区姚千街道靠山村卫生室', '姚千街道靠山村卫生室', null, null, '15', 6, '21011100803', 21011100803, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100810', '210111008', '沈阳市苏家屯区姚千街道乌金沟村卫生室', '姚千街道乌金沟村卫生室', null, null, '15', 6, '21011100810', 21011100810, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100812', '210111008', '沈阳市苏家屯区姚千街道杨千村卫生室', '姚千街道杨千村卫生室', null, null, '15', 6, '21011100812', 21011100812, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100711', '210111007', '沈阳市苏家屯区林盛街道林盛村第二卫生室', '林盛街道林盛村第二卫生室', null, null, '15', 6, '21011100711', 21011100711, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100721', '210111007', '沈阳市苏家屯区林盛街道文成村第一卫生室', '林盛街道文成村第一卫生室', null, null, '15', 6, '21011100721', 21011100721, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100718', '210111007', '沈阳市苏家屯区林盛街道四方台村第一卫生室', '林盛街道四方台村第一卫生室', null, null, '15', 6, '21011100718', 21011100718, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100720', '210111007', '沈阳市苏家屯区林盛街道四方台村英窝卫生室', '林盛街道四方台村英窝卫生室', null, null, '15', 6, '21011100720', 21011100720, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100705', '210111007', '沈阳市苏家屯区林盛街道达连村卫生室2', '林盛街道达连村卫生室2', null, null, '15', 6, '21011100705', 21011100705, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111007061', '210111007', '沈阳市苏家屯区林盛街道达连村卫生室3', '林盛街道达连村卫生室3', null, null, '15', 6, '210111007061', 210111007061, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100708', '210111007', '沈阳市苏家屯区林盛街道吉祥村卫生室2', '林盛街道吉祥村卫生室2', null, null, '15', 6, '21011100708', 21011100708, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100709', '210111007', '沈阳市苏家屯区林盛街道吉祥村卫生室3', '林盛街道吉祥村卫生室3', null, null, '15', 6, '21011100709', 21011100709, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100703', '210111007', '沈阳市苏家屯区林盛街道长兴村朱三家子村卫生室', '林盛街道长兴村朱三家子村卫生室', null, null, '15', 6, '21011100703', 21011100703, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120508', '210111205', '沈阳市苏家屯区大沟乡胡古村卫生室（宁官）', '大沟乡胡古村卫生室（宁官）', null, null, '15', 6, '21011120508', 21011120508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100108', '210111001', '沈阳市苏家屯区解放街道苏北社区卫生服务站', '解放街道苏北社区卫生服务站', null, null, '15', 6, '21011100108', 21011100108, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111007', '210111', '沈阳市苏家屯区林盛街道卫生服务中心', '林盛街道卫生服务中心', null, null, '04', 5, '210111007', 210111007, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100213', '210111002', '沈阳市苏家屯区陈相街道西河山村卫生室', '陈相街道西河山村卫生室', null, null, '15', 6, '21011100213', 21011100213, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110101', '210111015', '沈阳市苏家屯区八一大古家子村卫生室', '八一大古家子村卫生室', null, null, '15', 6, '21011110101', 21011110101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 1000 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100704', '210111007', '沈阳市苏家屯区林盛街道达连村卫生室1', '林盛街道达连村卫生室1', null, null, '15', 6, '21011100704', 21011100704, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100605', '210111006', '沈阳市苏家屯区湖西街道金电社区卫生服务站', '湖西街道金电社区卫生服务站', null, null, '15', 6, '21011100605', 21011100605, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111207', '210111', '沈阳市苏家屯区佟沟街道卫生服务中心', '佟沟街道卫生服务中心', null, null, '04', 5, '210111207', 210111207, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120701', '210111207', '沈阳市苏家屯区佟沟街道刘后地村卫生室', '佟沟街道刘后地村卫生室', null, null, '15', 6, '21011120701', 21011120701, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100206', '210111002', '沈阳市苏家屯区陈相街道胡老村卫生室', '陈相街道胡老村卫生室', null, null, '15', 6, '21011100206', 21011100206, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100204', '210111002', '沈阳市苏家屯区陈相街道河山村卫生室', '陈相街道河山村卫生室', null, null, '15', 6, '21011100204', 21011100204, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120306', '210111203', '沈阳市苏家屯区王纲堡乡杨孟达村卫生室', '王纲堡乡杨孟达村卫生室', null, null, '15', 6, '21011120306', 21011120306, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120309', '210111203', '沈阳市苏家屯区王纲乡马头浪村第一卫生室', '王纲乡马头浪村第一卫生室', null, null, '15', 6, '21011120309', 21011120309, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120806', '210111208', '沈阳市苏家屯区永乐乡互助村卫生室', '永乐乡互助村卫生室', null, null, '15', 6, '21011120806', 21011120806, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120807', '210111208', '沈阳市苏家屯区永乐乡孟达村卫生室', '永乐乡孟达村卫生室', null, null, '15', 6, '21011120807', 21011120807, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111203', '210111', '沈阳市苏家屯区王纲乡卫生服务中心', '王纲乡卫生服务中心', null, null, '04', 5, '210111203', 210111203, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110201', '210111102', '沈阳市苏家屯区红菱镇北红村卫生室', '红菱镇北红村卫生室', null, null, '15', 6, '21011110201', 21011110201, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110415', '210111104', '沈阳市苏家屯区沙河街道吴家屯东村卫生室', '沙河街道吴家屯东村卫生室', null, null, '15', 6, '21011110415', 21011110415, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120803', '210111208', '沈阳市苏家屯区永乐乡大韩台村卫生室', '永乐乡大韩台村卫生室', null, null, '15', 6, '21011120803', 21011120803, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120307', '210111203', '沈阳市苏家屯区王纲乡大庄科村卫生室', '王纲乡大庄科村卫生室', null, null, '15', 6, '21011120307', 21011120307, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120805', '210111208', '沈阳市苏家屯区永乐乡二台子村卫生室', '永乐乡二台子村卫生室', null, null, '15', 6, '21011120805', 21011120805, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120301', '210111203', '沈阳市苏家屯区王纲堡乡金大台村卫生室', '王纲堡乡金大台村卫生室', null, null, '15', 6, '21011120301', 21011120301, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111101', '210111015', '沈阳市苏家屯区八一街道卫生服务中心', '八一街道卫生服务中心', null, null, '04', 5, '210111101', 210111101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120506', '210111205', '沈阳市苏家屯区大沟乡蛤蚂村卫生室', '大沟乡蛤蚂村卫生室', null, null, '15', 6, '21011120506', 21011120506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110509', '210111105', '沈阳市苏家屯区十里河街道五里村卫生室', '十里河街道五里村卫生室', null, null, '15', 6, '21011110509', 21011110509, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100714', '210111007', '沈阳市苏家屯区林盛街道林盛社区卫生服务站', '林盛街道林盛社区卫生服务站', null, null, '15', 6, '21011100714', 21011100714, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120810', '210111208', '沈阳市苏家屯区永乐乡新台子村卫生室', '永乐乡新台子村卫生室', null, null, '15', 6, '21011120810', 21011120810, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100202', '210111002', '沈阳市苏家屯区陈相街道东英村卫生室', '陈相街道东英村卫生室', null, null, '15', 6, '21011100202', 21011100202, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110402', '210111104', '沈阳市苏家屯区沙河街道长岭子村卫生室', '沙河街道长岭子村卫生室', null, null, '15', 6, '21011110402', 21011110402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110203', '210111102', '沈阳市苏家屯区红菱镇黑林村卫生室', '红菱镇黑林村卫生室', null, null, '15', 6, '21011110203', 21011110203, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100401', '210111004', '沈阳市苏家屯区临湖街道北营子村卫生室', '临湖街道北营子村卫生室', null, null, '15', 6, '21011100401', 21011100401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100506', '210111005', '沈阳市苏家屯区中兴街道铜兴社区卫生服务站', '中兴街道铜兴社区卫生服务站', null, null, '15', 6, '21011100506', 21011100506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100603', '210111006', '沈阳市苏家屯区湖西街道浑南社区卫生服务站', '湖西街道浑南社区卫生服务站', null, null, '15', 6, '21011100603', 21011100603, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100809', '210111008', '沈阳市苏家屯区姚千街道田水村卫生室', '姚千街道田水村卫生室', null, null, '15', 6, '21011100809', 21011100809, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100312', '210111003', '沈阳市苏家屯区民主街道小格镇社区卫生服务站', '民主街道小格镇社区卫生服务站', null, null, '15', 6, '21011100312', 21011100312, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120809', '210111208', '沈阳市苏家屯区永乐乡小韩台村卫生室1', '永乐乡小韩台村卫生室1', null, null, '15', 6, '21011120809', 21011120809, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110417', '210111104', '沈阳市苏家屯区沙河街道于家洼子村卫生室', '沙河街道于家洼子村卫生室', null, null, '15', 6, '21011110417', 21011110417, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200104', '210102001', '沈阳市和平区浑河湾街道玉屏二社区卫生服务站', '浑河湾街道玉屏二社区卫生服务站', null, null, '15', 6, '21010200104', 21010200104, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202102', '210102021', '沈阳市和平区长白社区长白苑社区卫生服务站', '长白社区长白苑社区卫生服务站', null, null, '15', 6, '21010202102', 21010202102, null, null, null, null, '沈阳市和平区夹河路9-1号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202202', '210102022', '沈阳市和平区太原街洪福社区卫生服务站', '太原街洪福社区卫生服务站', null, null, '15', 6, '21010202202', 21010202202, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202311', '210102023', '沈阳市和平区北市场街道大庆路社区卫生服务站', '北市场街道大庆路社区卫生服务站', null, null, '15', 6, '21010202311', 21010202311, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202312', '210102023', '沈阳市和平区北市街道大庆路社区卫生服务站', '北市街道大庆路社区卫生服务站', null, null, '15', 6, '21010202312', 21010202312, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202313', '210102023', '沈阳市和平区北市街道总站路社区卫生服务团队', '北市街道总站路社区卫生服务团队', null, null, '15', 6, '21010202313', 21010202313, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202314', '210102023', '沈阳市和平区北市街道皇寺路社区卫生服务团队', '北市街道皇寺路社区卫生服务团队', null, null, '15', 6, '21010202314', 21010202314, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202315', '210102023', '沈阳市和平区北市街道市府路社区卫生服团队', '北市街道市府路社区卫生服团队', null, null, '15', 6, '21010202315', 21010202315, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202325', '210102023', '沈阳市和平区北市场街道民富社区卫生服务团队', '北市场街道民富社区卫生服务团队', null, null, '15', 6, '21010202325', 21010202325, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202326', '210102023', '沈阳市和平区北市场街道北市社区卫生服务团队', '北市场街道北市社区卫生服务团队', null, null, '15', 6, '21010202326', 21010202326, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200802', '210102008', '沈阳市和平区八经街道宝环社区卫生服务站', '八经街道宝环社区卫生服务站', null, null, '15', 6, '21010200802', 21010200802, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200803', '210102008', '沈阳市和平区八经街道沈电社区卫生服务团队', '八经街道沈电社区卫生服务团队', null, null, '15', 6, '21010200803', 21010200803, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200804', '210102008', '沈阳市和平区八经街道新村社区卫生服务团', '八经街道新村社区卫生服务团', null, null, '15', 6, '21010200804', 21010200804, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200805', '210102008', '沈阳市和平区八经街道延安里社区卫生服务团队', '八经街道延安里社区卫生服务团队', null, null, '15', 6, '21010200805', 21010200805, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200806', '210102008', '沈阳市和平区八经街道桂林社区卫生服务团队', '八经街道桂林社区卫生服务团队', null, null, '15', 6, '21010200806', 21010200806, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200807', '210102008', '沈阳市和平区八经街道红塔社区卫生服务团队', '八经街道红塔社区卫生服务团队', null, null, '15', 6, '21010200807', 21010200807, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200808', '210102008', '沈阳市和平区八经街道市府社区卫生服团队', '八经街道市府社区卫生服团队', null, null, '15', 6, '21010200808', 21010200808, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200105', '210102001', '沈阳市和平区浑河湾街道水源地社区卫生服务站', '浑河湾街道水源地社区卫生服务站', null, null, '15', 6, '21010200105', 21010200105, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200106', '210102001', '沈阳市和平区浑河湾街道砂阳南社区服务站', '浑河湾街道砂阳南社区服务站', null, null, '15', 6, '21010200106', 21010200106, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200107', '210102001', '沈阳市和平区浑河湾街道南京南社区服务站', '浑河湾街道南京南社区服务站', null, null, '15', 6, '21010200107', 21010200107, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200108', '210102001', '沈阳市和平区浑河湾街道河北社区服务站', '浑河湾街道河北社区服务站', null, null, '15', 6, '21010200108', 21010200108, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110508', '210111105', '沈阳市苏家屯区十里河街道十里河社区卫生服务站', '十里河街道十里河社区卫生服务站', null, null, '15', 6, '21011110508', 21011110508, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100715', '210111007', '沈阳市苏家屯区林盛街道南乱村卫生室', '林盛街道南乱村卫生室', null, null, '15', 6, '21011100715', 21011100715, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100702', '210111007', '沈阳市苏家屯区林盛街道长兴村卫生室', '林盛街道长兴村卫生室', null, null, '15', 6, '21011100702', 21011100702, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100419', '210111004', '沈阳市苏家屯区临湖街道新兴村卫生室', '临湖街道新兴村卫生室', null, null, '15', 6, '21011100419', 21011100419, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200201', '210102002', '沈阳市和平区南新华街道南十社区卫生服务站', '南新华街道南十社区卫生服务站', null, null, '15', 6, '21010200201', 21010200201, null, null, null, null, '沈阳市和平区西安街168号3-1-1', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100211', '210111002', '沈阳市苏家屯区陈相街道铁东社区卫生室', '陈相街道铁东社区卫生室', null, null, '15', 6, '21011100211', 21011100211, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100216', '210111002', '沈阳市苏家屯区陈相街道朱庄村卫生室', '陈相街道朱庄村卫生室', null, null, '15', 6, '21011100216', 21011100216, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100208', '210111002', '沈阳市苏家屯区陈相街道蛇山村卫生室', '陈相街道蛇山村卫生室', null, null, '15', 6, '21011100208', 21011100208, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100107', '210111001', '沈阳市苏家屯区解放街道苏白路社区卫生服务站', '解放街道苏白路社区卫生服务站', null, null, '15', 6, '21011100107', 21011100107, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100101', '210111001', '沈阳市苏家屯区解放街道冬青社区卫生服务站', '解放街道冬青社区卫生服务站', null, null, '15', 6, '21011100101', 21011100101, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100311', '210111003', '沈阳市苏家屯区民主街道人字路社区卫生服务站', '民主街道人字路社区卫生服务站', null, null, '15', 6, '21011100311', 21011100311, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100303', '210111003', '沈阳市苏家屯区民主街道富城社区卫生服务站', '民主街道富城社区卫生服务站', null, null, '15', 6, '21011100303', 21011100303, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100305', '210111003', '沈阳市苏家屯区民主街道河畔社区卫生服务站', '民主街道河畔社区卫生服务站', null, null, '15', 6, '21011100305', 21011100305, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100304', '210111003', '沈阳市苏家屯区民主街道工人村社区卫生服务站', '民主街道工人村社区卫生服务站', null, null, '15', 6, '21011100304', 21011100304, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100209', '210111002', '沈阳市苏家屯区陈相街道桃木村沙河卫生室', '陈相街道桃木村沙河卫生室', null, null, '15', 6, '21011100209', 21011100209, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106001', '210106', '七路社区卫生服务中心', '七路社区卫生服务中心', null, null, '04', 5, '210106001', 210106001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106002', '210106', '笃工社区卫生服务中心', '笃工社区卫生服务中心', null, null, '04', 5, '210106002', 210106002, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106003', '210106', '兴顺社区卫生服务中心', '兴顺社区卫生服务中心', null, null, '04', 5, '210106003', 210106003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106004', '210106', '霁虹社区卫生服务中心', '霁虹社区卫生服务中心', null, null, '04', 5, '210106004', 210106004, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106005', '210106', '妇幼保健计划生育服务中心', '妇幼保健计划生育服务中心', null, null, '04', 5, '210106005', 210106005, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106006', '210106', '轻工社区卫生服务中心', '轻工社区卫生服务中心', null, null, '04', 5, '210106006', 210106006, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106007', '210106', '卫工社区卫生服务中心', '卫工社区卫生服务中心', null, null, '04', 5, '210106007', 210106007, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106008', '210106', '工人村社区卫生服务中心', '工人村社区卫生服务中心', null, null, '04', 5, '210106008', 210106008, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106009', '210106', '路官社区卫生服务中心', '路官社区卫生服务中心', null, null, '04', 5, '210106009', 210106009, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106010', '210106', '齐贤社区卫生服务中心', '齐贤社区卫生服务中心', null, null, '04', 5, '210106010', 210106010, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106011', '210106', '启工社区卫生服务中心', '启工社区卫生服务中心', null, null, '04', 5, '210106011', 210106011, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106012', '210106', '大青社区卫生服务中心', '大青社区卫生服务中心', null, null, '04', 5, '210106012', 210106012, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106015', '210106', '高花卫生院', '高花卫生院', null, null, '04', 5, '210106015', 210106015, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106016', '210106', '新民屯中心卫生院', '新民屯中心卫生院', null, null, '04', 5, '210106016', 210106016, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106019', '210106', '四方台卫生院', '四方台卫生院', null, null, '04', 5, '210106019', 210106019, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106020', '210106', '彰驿站卫生院', '彰驿站卫生院', null, null, '04', 5, '210106020', 210106020, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010020', '2101', '沈阳市妇女儿童保健中心', '沈阳市妇女儿童保健中心', 'SYSFNETBJZ', null, '12', 3, '21010020', 18, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010021', '2101', '沈阳市中心血站', '沈阳市中心血站', 'SYSZXXZ', null, '02', 3, '21010021', 21, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102027', '210102', '和平区沈水湾社区卫生服务中心', '和平区沈水湾社区卫生服务中心', null, null, '04', 5, '210102027', 210102027, null, '83699391', null, null, '长白路150号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102019', '210102', '和平区南湖社区卫生服务中心', '和平区南湖社区卫生服务中心', null, null, '04', 5, '210102019', 210102019, null, '83303312', null, null, '和平区文体西路100号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102016', '210102', '和平区马路湾社区卫生服务中心', '和平区马路湾社区卫生服务中心', null, null, '04', 5, '210102016', 210102016, null, '02423856653', null, null, '沈阳市和平区嘉兴街70号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102002', '210102', '和平区新华社区卫生服务中心', '和平区新华社区卫生服务中心', null, null, '04', 5, '210102002', 210102002, null, '02423388304', null, null, '沈阳市和平区太原南街363号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102028', '210102', '和平区浑河站西社区卫生服务中心', '和平区浑河站西社区卫生服务中心', null, null, '04', 5, '210102028', 210102028, null, '024-23700410', null, null, '辽宁省沈阳市和平区浑河站乡前进街47号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102017', '210102', '和平区集贤社区卫生服务中心', '和平区集贤社区卫生服务中心', null, '0', '04', 5, '210102017', 210102017, null, '13897955003', null, null, '沈阳市和平区和平南大街91号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500910', '210105009', '渭河团队', '渭河团队', null, null, '15', 6, '21010500910', 21010500910, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400306', '210114003', '沈阳市于洪区陵西街道龙腾社区卫生服务站', '陵西街道龙腾社区卫生服务站', null, null, '15', 6, '21011400306', 21011400306, null, null, null, null, '于洪区陵西街道近河巷5号10门11单元', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400107', '210114005', '沈阳市于洪区迎宾路街道南里社区卫生服务站', '迎宾路街道南里社区卫生服务站', null, null, '15', 6, '21011400107', 21011400107, null, null, null, null, '沈阳市于洪区洪湖街3-2号3门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114010', '210114', '沈阳市于洪区南阳湖社区卫生服务中心', '于洪区南阳湖社区卫生服务中心', null, null, '04', 5, '210114010', 210114010, null, null, null, null, '沈阳市于洪区南阳湖街154号3门-13门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400708', '210114007', '沈阳市于洪区北陵街道小韩社区卫生服务站', '北陵街道小韩社区卫生服务站', null, null, '15', 6, '21011400708', 21011400708, null, null, null, null, '沈阳市于洪区松山西路155-7号1门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401109', '210114011', '沈阳市于洪区城东湖街道凯城社区卫生服务站', '城东湖街道凯城社区卫生服务站', null, null, '15', 6, '21011401109', 21011401109, null, null, null, null, '沈阳市于洪区吉力湖街18号B5-6门、7门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114003', '210114', '沈阳市于洪区陵西社区卫生服务中心', '于洪区陵西社区卫生服务中心', null, null, '04', 5, '210114003', 210114003, null, null, null, null, '沈阳市于洪区长江北街44号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114014', '210114', '沈阳市于洪区造化卫生院', '于洪区造化卫生院', null, null, '04', 5, '210114014', 210114014, null, null, null, null, '沈阳市于洪区造化街道造化村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 1100 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400301', '210114003', '沈阳市于洪区陵西街道千山社区卫生服务站', '陵西街道千山社区卫生服务站', null, null, '15', 6, '21011400301', 21011400301, null, null, null, null, '于洪区黄河北大街96-7号3、4、5门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200109', '210102001', '沈阳市和平区浑河湾街道三利和平湾社区服务站', '浑河湾街道三利和平湾社区服务站', null, null, '15', 6, '21010200109', 21010200109, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200203', '210102002', '沈阳市和平区新华街道新华西站', '新华街道新华西站', null, null, '15', 6, '21010200203', 21010200203, null, null, null, null, '沈阳市和平区南七马路48号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200204', '210102002', '沈阳市和平区新华街道新华平安站', '新华街道新华平安站', null, null, '15', 6, '21010200204', 21010200204, null, null, null, null, '沈阳市和平区南七马路48号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200404', '210102016', '沈阳市和平区长兴社区', '沈阳市和平区长兴社区', null, null, '15', 6, '21010200404', 21010200404, null, null, null, null, '沈阳市和平区南七马路48号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200110', '210102001', '沈阳市和平区浑河湾街道丰泽社区服务站', '浑河湾街道丰泽社区服务站', null, null, '15', 6, '21010200110', 21010200110, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200701', '210102007', '和平区西塔社区方迪站', '和平区西塔社区方迪站', null, null, '15', 6, '21010200701', 21010200701, null, '23472360', null, null, '沈阳市和平区西塔街85号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102008', '210102', '和平区八经社区卫生服务中心', '和平区八经社区卫生服务中心', null, null, '04', 5, '210102008', 210102008, null, '23472360', null, null, '沈阳市和平区西塔街85号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201103', '210102011', '沈阳市和平区社管科', '沈阳市和平区社管科', null, null, '15', 6, '21010201103', 21010201103, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201602', '210102016', '和平区马路湾嘉兴站', '和平区马路湾嘉兴站', null, null, '15', 6, '21010201602', 21010201602, null, '02423856653', null, null, '沈阳市和平区嘉兴街70号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201603', '210102016', '和平区马路湾电业社区', '和平区马路湾电业社区', null, null, '15', 6, '21010201603', 21010201603, null, '02423856653', null, null, '沈阳市和平区嘉兴街70号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201605', '210102016', '和平区马路湾振兴社区', '和平区马路湾振兴社区', null, null, '15', 6, '21010201605', 21010201605, null, '02423856653', null, null, '沈阳市和平区嘉兴街70号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201606', '210102016', '和平区马路湾铁厦社区', '和平区马路湾铁厦社区', null, null, '15', 6, '21010201606', 21010201606, null, '02423856653', null, null, '沈阳市和平区嘉兴街70号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201607', '210102016', '和平区马路湾康复', '和平区马路湾康复', null, null, '15', 6, '21010201607', 21010201607, null, '02423856653', null, null, '沈阳市和平区嘉兴街70号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201301', '210102013', '沈阳市和平区南市场街道群芳社区卫生服务站', '南市场街道群芳社区卫生服务站', null, null, '15', 6, '21010201301', 21010201301, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201902', '210102019', '沈阳市和平区南湖街道新世界社区卫生服务站', '南湖街道新世界社区卫生服务站', null, null, '15', 6, '21010201902', 21010201902, null, null, null, null, '沈阳市和平区彩塔街36号3-1-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201903', '210102019', '沈阳市和平区南湖街道中科院社区卫生服务站', '南湖街道中科院社区卫生服务站', null, null, '15', 6, '21010201903', 21010201903, null, null, null, null, '沈阳市和平区彩塔街36号3-1-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103001', '210103', '沈河区人民医院(皇城社区卫生服务中心)', '沈河区人民医院(皇城社区卫生服务中心)', null, null, '04', 5, '210103001', 210103001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103007', '210103', '沈河区中医院(朱剪炉社区卫生服务中心)', '沈河区中医院(朱剪炉社区卫生服务中心)', null, null, '04', 5, '210103007', 210103007, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103008', '210103', '沈河区第二中医院(南塔社区卫生服务中心)', '沈河区第二中医院(南塔社区卫生服务中心)', null, null, '04', 5, '210103008', 210103008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103009', '210103', '沈河区第二人民医院(东陵社区卫生服务中心)', '沈河区第二人民医院(东陵社区卫生服务中心)', null, null, '04', 5, '210103009', 210103009, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103012', '210103', '沈阳市沈河区泉园社区卫生服务中心', '沈河区泉园社区卫生服务中心', null, null, '04', 5, '210103012', 210103012, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301201', '210103012', '沈阳市沈河区御龙社区卫生服务站新', '沈河区御龙社区卫生服务站新', null, null, '15', 6, '21010301201', 21010301201, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301501', '210103015', '沈阳市沈河区青年社区卫生服务站', '沈河区青年社区卫生服务站', null, null, '15', 6, '21010301501', 21010301501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301401', '210103014', '沈阳市沈河区凯旋社区卫生服务站', '沈河区凯旋社区卫生服务站', null, null, '15', 6, '21010301401', 21010301401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301402', '210103014', '沈阳市沈河区山东堡社区卫生服务站', '沈河区山东堡社区卫生服务站', null, null, '15', 6, '21010301402', 21010301402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301403', '210103014', '沈阳市沈河区狮慈社区卫生服务站', '沈河区狮慈社区卫生服务站', null, null, '15', 6, '21010301403', 21010301403, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301502', '210103015', '沈阳市沈河区永环社区卫生服务站', '沈河区永环社区卫生服务站', null, null, '15', 6, '21010301502', 21010301502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301503', '210103015', '沈阳市沈河区桃源社区卫生服务站', '沈河区桃源社区卫生服务站', null, null, '15', 6, '21010301503', 21010301503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301101', '210103011', '沈阳市沈河区三八南社区卫生服务站', '沈河区三八南社区卫生服务站', null, null, '15', 6, '21010301101', 21010301101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301102', '210103011', '沈阳市沈河区兴胜社区卫生服务站', '沈河区兴胜社区卫生服务站', null, null, '15', 6, '21010301102', 21010301102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301103', '210103011', '沈阳市沈河区进华社区卫生服务站', '沈河区进华社区卫生服务站', null, null, '15', 6, '21010301103', 21010301103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301104', '210103011', '沈阳市沈河区菜行社区卫生服务站', '沈河区菜行社区卫生服务站', null, null, '15', 6, '21010301104', 21010301104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300101', '210103001', '沈阳市沈河区西华社区卫生服务站', '沈河区西华社区卫生服务站', null, null, '15', 6, '21010300101', 21010300101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300102', '210103001', '沈阳市沈河区翠生社区卫生服务站', '沈河区西华社区卫生服务站', null, null, '15', 6, '21010300102', 21010300102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300103', '210103001', '沈阳市沈河区药大社区卫生服务站', '沈河区药大社区卫生服务站', null, null, '15', 6, '21010300103', 21010300103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300104', '210103001', '沈阳市沈河区河畔社区卫生服务站', '沈河区河畔社区卫生服务站', null, null, '15', 6, '21010300104', 21010300104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300105', '210103001', '沈阳市沈河区五里河社区卫生服务站', '沈河区五里河社区卫生服务站', null, null, '15', 6, '21010300105', 21010300105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300401', '210103004', '沈阳市沈河区天光社区卫生服务站', '沈河区天光社区卫生服务站', null, null, '15', 6, '21010300401', 21010300401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300402', '210103004', '沈阳市沈河区兴丰社区卫生服务站', '沈河区兴丰社区卫生服务站', null, null, '15', 6, '21010300402', 21010300402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300701', '210103007', '沈阳市沈河区晓春社区卫生服务站', '沈河区晓春社区卫生服务站', null, null, '15', 6, '21010300701', 21010300701, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300702', '210103007', '沈阳市沈河区剪炉社区卫生服务站', '沈河区剪炉社区卫生服务站', null, null, '15', 6, '21010300702', 21010300702, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300703', '210103007', '沈阳市沈河区府东社区卫生服务站', '沈河区府东社区卫生服务站', null, null, '15', 6, '21010300703', 21010300703, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010302201', '210103022', '沈阳市沈河区回民社区卫生服务站', '沈河区回民社区卫生服务站', null, null, '15', 6, '21010302201', 21010302201, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300501', '210103005', '沈阳市沈河区六合社区卫生服务站', '沈河区六合社区卫生服务站', null, null, '15', 6, '21010300501', 21010300501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300502', '210103005', '沈阳市沈河区祥顺社区卫生服务站', '沈河区祥顺社区卫生服务站', null, null, '15', 6, '21010300502', 21010300502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301001', '210103010', '沈阳市沈河区莲花社区卫生服务站', '沈河区莲花社区卫生服务站', null, null, '15', 6, '21010301001', 21010301001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301002', '210103010', '沈阳市沈河区怡静园社区卫生服务站', '沈河区怡静园社区卫生服务站', null, null, '15', 6, '21010301002', 21010301002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301003', '210103010', '沈阳市沈河区大万莲社区卫生服务站', '沈河区大万莲社区卫生服务站', null, null, '15', 6, '21010301003', 21010301003, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111015', '210111', '沈阳市苏家屯区第五医院', '沈阳市苏家屯区第五医院', null, null, '04', 5, '210111015', 210111015, null, null, null, null, '沈阳市苏家屯区永乐乡大韩台村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111103', '210111', '沈阳市苏家屯区第四医院', '沈阳市苏家屯区第四医院', null, null, '04', 5, '210111103', 210111103, null, null, null, null, '沈阳市苏家屯区林盛镇苏盛街78号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111107', '210111', '沈阳市苏家屯区二院', '沈阳市苏家屯区二院', null, null, '04', 5, '210111107', 210111107, null, null, null, null, '苏家屯区姚千户镇秋风路36号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112006', '210112', '浑南区东陵卫生院', '东陵卫生院', null, null, '04', 5, '210112006', 210112006, null, null, null, null, '辽宁省沈阳市浑南区汪家街道汪南村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112017', '210112', '浑南区祝家中心卫生院', '祝家中心卫生院', null, null, '04', 5, '210112017', 210112017, null, null, null, null, '辽宁省沈阳市浑南区祝家街道', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112018', '210112', '浑南区白塔社区卫生服务中心', '白塔社区卫生服务中心', null, null, '04', 5, '210112018', 210112018, null, null, null, null, '沈阳市浑南区白塔街道白塔村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112014', '210112', '浑南区高坎社区卫生服务中心', '高坎社区卫生服务中心', null, null, '04', 5, '210112014', 210112014, null, null, null, null, '辽宁省沈阳市浑南区高坎街道213路54号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112019', '210112', '浑南区桃仙卫生院', '桃仙卫生院', null, null, '04', 5, '210112019', 210112019, null, null, null, null, '辽宁省沈阳市浑南区桃仙街道宁路村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112020', '210112', '浑南区李相卫生院', '李相卫生院', null, null, '04', 5, '210112020', 210112020, null, null, null, null, '辽宁省沈阳市浑南区李相村601号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112010', '210112', '浑南区五三社区卫生服务中心', '五三社区卫生服务中心', null, null, '04', 5, '210112010', 210112010, null, null, null, null, '沈阳市浑南区华园东路3号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112015', '210112', '浑南区满堂社区卫生服务中心', '满堂社区卫生服务中心', null, null, '04', 5, '210112015', 210112015, null, null, null, null, '沈阳市浑南区满堂街道中水泉村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112023', '210112', '浑南区王滨卫生院', '王滨卫生院', null, null, '04', 5, '210112023', 210112023, null, null, null, null, '辽宁省沈阳市浑南区王滨街道王滨村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112007', '210112', '浑南区英达卫生院', '英达卫生院', null, null, '04', 5, '210112007', 210112007, null, null, null, null, '辽宁省沈阳市浑南区英达街道', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113002', '210113', '清水医院', '清水医院', null, null, '04', 5, '210113002', 210113002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113202', '210113', '沈阳市沈北新区黄家锡伯族乡卫生院', '黄家锡伯族乡卫生院', null, null, '04', 5, '210113202', 210113202, null, null, null, null, '沈北新区黄家乡黄家村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113004', '210113', '沈阳市沈北新区道义社区卫生服务中心', '道义社区卫生服务中心', null, null, '04', 5, '210113004', 210113004, null, null, null, null, '沈北新区道义街道', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113003', '210113', '沈阳市沈北新区辉山社区卫生服务中心', '沈北新区辉山社区卫生服务中心', null, null, '04', 5, '210113003', 210113003, null, null, null, null, '沈北新区通顺街75号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113007', '210113', '沈阳市沈北新区财落中心卫生院', '财落中心卫生院', null, null, '04', 5, '210113007', 210113007, null, null, null, null, '沈北新区财落街道', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113102', '210113', '沈阳市沈北新区兴隆台锡伯族镇中心卫生院', '兴隆台锡伯族镇中心卫生院', null, null, '04', 5, '210113102', 210113102, null, null, null, null, '沈北新区兴隆台锡伯族镇', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113006', '210113', '虎石台社区卫生服务中心', '虎石台社区卫生服务中心', null, null, '04', 5, '210113006', 210113006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113206', '210113', '沈阳市沈北区马刚乡卫生院', '马刚乡卫生院', null, null, '04', 5, '210113206', 210113206, null, null, null, null, '沈北马刚乡马刚村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400902', '210114009', '沈阳市于洪区沙岭街道沙岭社区卫生服务站', '沙岭街道沙岭社区卫生服务站', null, null, '15', 6, '21011400902', 21011400902, null, null, null, null, '沈阳市于洪区沙岭路1-4号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400706', '210114007', '沈阳市于洪区北陵街道魅力之城社区卫生服务站', '北陵街道魅力之城社区卫生服务站', null, null, '15', 6, '21011400706', 21011400706, null, null, null, null, '沈阳市于洪区松山西路98号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114015', '210114', '沈阳市于洪区大兴卫生院', '于洪区大兴卫生院', null, null, '04', 5, '210114015', 210114015, null, null, null, null, '沈阳市于洪区大兴街道西桥村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401401', '210114014', '沈阳市于洪区造化街道大方士社区卫生服务站', '造化街道大方士社区卫生服务站', null, null, '15', 6, '21011401401', 21011401401, null, null, null, null, '于洪区造化街道大方士社区', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401102', '210114011', '沈阳市于洪区城东湖街道顺丰社区卫生服务站', '城东湖街道顺丰社区卫生服务站', null, null, '15', 6, '21011401102', 21011401102, null, null, null, null, '辽宁省沈阳市于洪区吉力湖街211号10门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400707', '210114007', '沈阳市于洪区北陵街道北美社区卫生服务站', '北陵街道北美社区卫生服务站', null, null, '15', 6, '21011400707', 21011400707, null, null, null, null, '辽宁省沈阳市于洪区白山路65-37号8、9门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400506', '210114005', '沈阳市于洪区于洪街道湖畔社区卫生服务站', '于洪街道湖畔社区卫生服务站', null, null, '15', 6, '21011400506', 21011400506, null, null, null, null, '于洪区于洪街道丁香湖畔新城A2', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400507', '210114005', '沈阳市于洪区于洪街道尚东社区卫生服务站', '于洪街道尚东社区卫生服务站', null, null, '15', 6, '21011400507', 21011400507, null, null, null, null, '于洪区沈大路152-6号4门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400101', '210114005', '沈阳市于洪区迎宾路街道太湖社区卫生服务站', '迎宾路街道太湖社区卫生服务站', null, null, '15', 6, '21011400101', 21011400101, null, null, null, null, '于洪区黄海路57-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400502', '210114005', '沈阳市于洪区于洪街道红旗社区卫生服务站', '于洪街道红旗社区卫生服务站', null, null, '15', 6, '21011400502', 21011400502, null, null, null, null, ' 沈阳市于洪区广业西路130号10门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401402', '210114014', '沈阳市于洪区造化街道大转湾社区卫生服务站', '造化街道大转湾社区卫生服务站', null, null, '15', 6, '21011401402', 21011401402, null, null, null, null, '于洪区造化街道大转弯社区', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400503', '210114005', '沈阳市于洪区于洪街道于洪机场社区卫生服务站', '于洪街道于洪机场社区卫生服务站', null, null, '15', 6, '21011400503', 21011400503, null, null, null, null, '沈阳市于洪区洪湖北街73号网点1 门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400305', '210114003', '沈阳市于洪区陵西街道红田社区卫生服务站', '陵西街道红田社区卫生服务站', null, null, '15', 6, '21011400305', 21011400305, null, null, null, null, '于洪区怒江北街20-2号4门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123103', '210123', '方家屯中心卫生院', '方家屯中心卫生院', null, null, '04', 5, '210123103', 210123103, null, null, null, null, '方家屯中心卫生院', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123203', '210123', '康平县北四家子乡中心卫生院', '康平县北四家子乡中心卫生院', null, null, '04', 5, '210123203', 210123203, null, null, null, null, '康平县北四家子乡北四家子村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123211', '210123', '康平县东升乡卫生院', '康平县东升乡卫生院', null, null, '04', 5, '210123211', 210123211, null, null, null, null, '康平县东升乡东升村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123104', '210123', '东关镇卫生院', '东关镇卫生院', null, null, '04', 5, '210123104', 210123104, null, null, null, null, '东关镇卫生院', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123204', '210123', '两家子乡卫生院', '两家子乡卫生院', null, null, '04', 5, '210123204', 210123204, null, null, null, null, '康平县两家子乡两家子村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123205', '210123', '康平县山东屯乡卫生院', '康平县山东屯乡卫生院', null, null, '04', 5, '210123205', 210123205, null, null, null, null, '山东屯乡后山村卫生院', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123105', '210123', '康平郝官镇卫生院', '康平郝官镇卫生院', null, null, '04', 5, '210123105', 210123105, null, null, null, null, '康平县郝官镇', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123209', '210123', '康平县柳树屯卫生院', '康平县柳树屯卫生院', null, null, '04', 5, '210123209', 210123209, null, null, null, null, '康平县柳树屯乡', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123210', '210123', '康平县西关乡卫生院', '康平县西关乡卫生院', null, null, '04', 5, '210123210', 210123210, null, null, null, null, '康平县', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123206', '210123', '康平县海洲窝堡乡卫生院', '康平县海洲窝堡乡卫生院', null, null, '04', 5, '210123206', 210123206, null, null, null, null, '康平县海洲乡', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123106', '210123', '康平县二牛所口镇卫生院', '康平县二牛所口镇卫生院', null, null, '04', 5, '210123106', 210123106, null, null, null, null, '康平县二牛所口镇卫生院', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123102', '210123', '张强镇中心卫生院', '张强镇中心卫生院', null, null, '04', 5, '210123102', 210123102, null, null, null, null, '辽宁省康平县张强卫生院', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123100', '210123', '康平县胜利医院', '康平县胜利医院', null, null, '04', 5, '210123100', 210123100, null, null, null, null, '康平镇胜利村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124211', '210124', '法库县包家屯乡卫生院', '法库县包家屯乡卫生院', null, null, '04', 5, '210124211', 210124211, null, null, null, null, '法库县包家屯乡包家屯村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124206', '210124', '法库县依牛堡乡卫生院', '法库县依牛堡乡卫生院', null, null, '04', 5, '210124206', 210124206, null, null, null, null, '法库县依牛堡乡依牛堡村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105014', '210105', '武功山社区卫生服务站', '武功山社区卫生服务站', null, null, '04', 5, '210105014', 210105014, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300004', '210103', '沈河区沈河区妇婴医院', '沈河区沈河区妇婴医院', 'SHQFYYY', null, '01', 4, '21010300004', 21010300004, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 1200 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300005', '210103', '沈河区沈河区妇幼保健所', '沈河区沈河区妇幼保健所', 'SHQFYBJS', null, '01', 4, '21010300005', 21010300005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300006', '210103', '沈河区沈河区牙病防治所', '沈河区沈河区牙病防治所', 'SHQYBFZS', null, '01', 4, '21010300006', 21010300006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103023', '210103', '沈阳市沈河区马官桥社区卫生服务中心', '沈河区马官桥社区卫生服务中心', null, null, '04', 5, '210103023', 210103023, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400007', '210104', '大东区前进卫生院', '大东区前进卫生院', null, null, '14', 4, '21010400007', 21010400007, null, '024-88264782', null, null, '辽宁省沈阳市东陵区前进乡榆林村', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113012', '210113', '黄家卫生院', '黄家卫生院', null, null, '04', 5, '210113012', 210113012, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113019', '210113', '清泉街道', '清泉街道', null, null, '04', 5, '210113019', 210113019, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113008', '210113', '辉山社区卫生服务中心', '辉山社区卫生服务中心', null, null, '04', 5, '210113008', 210113008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300506', '210113005', '救兵台村卫生室', '救兵台村卫生室', null, null, '15', 6, '21011300506', 21011300506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301504', '210113015', '房身村卫生室', '房身村卫生室', null, null, '15', 6, '21011301504', 21011301504, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300502', '210113005', '大孤柳村卫生室', '大孤柳村卫生室', null, null, '15', 6, '21011300502', 21011300502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301701', '210113017', '北四家子村卫生室', '北四家子村卫生室', null, null, '15', 6, '21011301701', 21011301701, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301501', '210113015', '石佛寺街道', '石佛寺街道', null, null, '15', 6, '21011301501', 21011301501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300509', '210113005', '小黑台子村卫生室', '小黑台子村卫生室', null, null, '15', 6, '21011300509', 21011300509, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113010', '210113', '马刚卫生院', '马刚卫生院', null, null, '04', 5, '210113010', 210113010, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113005', '210113', '兴隆台中心卫生院', '兴隆台中心卫生院', null, null, '04', 5, '210113005', 210113005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300508', '210113005', '烟台村卫生室', '烟台村卫生室', null, null, '15', 6, '21011300508', 21011300508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300504', '210113005', '兴鲜村卫生室', '兴鲜村卫生室', null, null, '15', 6, '21011300504', 21011300504, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113009', '210113', '财落中心卫生院', '财落中心卫生院', null, null, '04', 5, '210113009', 210113009, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300503', '210113005', '大营子村卫生室', '大营子村卫生室', null, null, '15', 6, '21011300503', 21011300503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301505', '210113015', '鲁家村卫生室', '鲁家村卫生室', null, null, '15', 6, '21011301505', 21011301505, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113011', '210113', '道义社区卫生服务中心', '道义社区卫生服务中心', null, null, '04', 5, '210113011', 210113011, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113014', '210113', '尹家卫生院', '尹家卫生院', null, null, '04', 5, '210113014', 210113014, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200003', '210102', '和平区中心医院', '和平区中心医院', 'HPQZXYY', null, '01', 4, '21010200003', 21010200003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300003', '210103', '沈河区中心医院', '沈河区中心医院', 'SHQZXYY', null, '01', 4, '21010300003', 21010300003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400003', '210104', '大东区中心医院', '大东区中心医院', 'DDQZXYY', null, '14', 4, '21010400003', 21010400003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124103', '210124', '法库县秀水河子镇中心卫生院', '法库县秀水河子镇中心卫生院', null, null, '04', 5, '210124103', 210124103, null, null, null, null, '法库县秀水河子镇秀水河子村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400705', '210114007', '沈阳市于洪区北陵街道金荷兰庭社区卫生服务站', '北陵街道金荷兰庭社区卫生服务站', null, null, '15', 6, '21011400705', 21011400705, null, null, null, null, '于洪区松山西路125号3门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401001', '210114010', '沈阳市于洪区南阳湖街道鹏程社区卫生服务站', '南阳湖街道鹏程社区卫生服务站', null, null, '15', 6, '21011401001', 21011401001, null, null, null, null, '沈阳市于洪区南阳湖街20-43号7门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103', '2101', '沈河区卫生健康局', '沈河区卫生健康局', null, '0', '03', 3, '210103', 210103, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105', '2101', '皇姑区卫生健康局', '皇姑区卫生健康局', null, '0', '03', 3, '210105', 210105, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111', '2101', '苏家屯区卫生健康局', '苏家屯区卫生健康局', null, '0', '03', 3, '210111', 210111, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124', '2101', '法库县卫生健康局', '法库县卫生健康局', null, '0', '03', 3, '210124', 210124, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012200002', '210122', '辽中县中医院', '辽中县中医院', null, '0', '14', 4, '21012200002', 21012200002, 'ZH', null, null, '15700084497', '辽中县', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21', null, '辽宁省卫生与健康委员会', '辽宁省卫健委', null, null, '01', 1, '21', 21, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2101', '21', '沈阳市卫生与健康委员会', '沈阳市卫健委', null, null, '02', 2, '2101', 0, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102', '2101', '和平区卫生健康局', '和平区卫生健康局', null, '0', '03', 3, '210102', 210102, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104', '2101', '大东区卫生健康局', '大东区卫生健康局', null, '0', '03', 3, '210104', 210104, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106', '2101', '铁西区卫生健康局', '铁西区卫生健康局', null, '0', '03', 3, '210106', 210106, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112', '2101', '浑南区卫生健康局', '浑南区卫生健康局', null, '0', '03', 3, '210112', 210112, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114', '2101', '于洪区卫生健康局', '于洪区卫生健康局', null, '0', '03', 3, '210114', 210114, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122', '2101', '辽中区卫生健康局', '辽中区卫生健康局', null, '0', '03', 3, '210122', 210122, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123', '2101', '康平县卫生健康局', '康平县卫生健康局', null, '0', '03', 3, '210123', 210123, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181', '2101', '新民市卫生健康局', '新民市卫生健康局', null, '0', '03', 3, '210181', 210181, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113', '2101', '沈北新区卫生健康局', '沈北新区卫生健康局', null, '0', '03', 3, '210113', 210113, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010005', '2101', '沈阳市第七人民医院', '沈阳市第七人民医院', null, null, '12', 3, '21010005', 7, '李铁男', '23875481', null, '13478886779', '沈阳市和平区东纬路13号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010006', '2101', '沈阳医学院附属中心医院', '沈阳医学院附属中心医院', null, null, '12', 3, '21010006', 8, null, '18002478215', null, '18002478215', '沈阳市皇姑区淮河南街6号6附近', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010016', '2101', '沈阳市急救中心附属医院', '沈阳市急救医院', 'SYSJJZXFSY', null, '12', 3, '21010016', 17, null, '13840099339', null, '13840099339', '沈阳市黄河北大街121', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010008', '2101', '沈阳市第十人民医院', '沈阳市第十人民医院', null, '0', '12', 3, '21010008', 10, '张娟', '024-88324551', null, null, '沈阳市大东区北海街11号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010014', '2101', '沈阳市骨科医院', '沈阳市骨科医院', null, null, '12', 3, '21010014', 11, '邬波', '024-88890227', null, null, '沈阳市大东区东北大马路115号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010011', '2101', '沈阳市儿童医院', '沈阳市儿童医院', null, null, '12', 3, '21010011', 15, '黄彦红', '024-86900230', null, null, '沈阳市皇姑区崇山东路74号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010007', '2101', '沈阳市第九人民医院', '沈阳市第九人民医院', null, null, '12', 3, '21010007', 9, null, '31088956', null, null, '沈阳市铁西区南十一西路十八号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010009', '2101', '沈阳医学院附属第二医院', '沈阳医学院附属第二医院', null, null, '12', 3, '21010009', 2, '吴玉东', '22824430', null, null, '沈阳市和平区北九马路20号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010013', '2101', '沈阳市肛肠医院', '沈阳市肛肠医院', null, null, '12', 3, '21010013', 13, '腾卫宁', '22510727', null, null, '沈阳市和平区南京北街9号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010003', '2101', '沈阳市第五人民医院', '沈阳市第五人民医院', null, null, '12', 3, '21010003', 5, '颜鸿飞', '254037832017', null, null, '沈阳市铁西区兴顺街188号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010017', '2101', '沈阳市精神卫生中心', '沈阳市精神卫生中心', null, null, '12', 3, '21010017', 19, '陈耀', '23818767', null, null, '沈阳市浑南区金帆中路12号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010015', '2101', '沈阳市红十字会医院', '沈阳市红十字会医院', null, null, '12', 3, '21010015', 3, '韩毅', '22942012', null, null, '沈阳市沈河区中山路389号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010001', '2101', '沈阳市第一人民医院', '沈阳市第一人民医院', 'SYSDYRMYY', null, '12', 3, '21010001', 1, '马岩', '024-88504565', null, null, '大东区大北关街清泉路69号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010002', '2101', '沈阳市第四人民医院', '沈阳市第四人民医院', null, null, '12', 3, '21010002', 4, '王树东', '024-86862514', null, null, '沈阳市皇姑区黄河南大街20号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010018', '2101', '沈阳市口腔医院', '沈阳市口腔医院', null, null, '12', 3, '21010018', 12, '张桂荣', '22822908', null, null, '沈阳市和平区中山路138号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010010', '2101', '沈阳市中医院', '沈阳市中医院', null, null, '12', 3, '21010010', 16, '吴兴恺', '23893338', null, null, '沈阳市和平区三好街23号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010004', '2101', '沈阳市第六人民医院', '沈阳市第六人民医院', null, null, '12', 3, '21010004', 6, '谷野', '23387410-129', null, null, '沈阳市和平区和平南大街85号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010012', '2101', '沈阳市妇婴医院', '沈阳市妇婴医院', null, null, '12', 3, '21010012', 14, '史玉林', '22853728', null, null, '沈河区大南街87号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010019', '2101', '沈阳市安宁医院', '沈阳市安宁医院', null, null, '12', 3, '21010019', 20, '徐桂娟', '024-88081416', null, null, '沈阳市沈北新区辉山大街134号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012200001', '210122', '辽中区人民医院', '辽中区人民医院', null, '0', '14', 4, '21012200001', 21012200001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500003', '210105', '皇姑区中心医院', '皇姑区中心医院', null, null, '14', 4, '21010500003', 21010500003, '曹洪波', '024-31857795', null, null, '沈阳市皇姑区昆山中路169号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500004', '210105', '皇姑区妇婴医院', '皇姑区妇婴医院', null, null, '14', 4, '21010500004', 21010500004, '李勇', '024-86861236', null, null, '沈阳市皇姑区珠江街130号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500002', '210105', '皇姑区中医院', '皇姑区中医院', null, null, '14', 4, '21010500002', 21010500002, '王黎黎', '024-86406831', null, null, '沈阳市皇姑区黄浦江街11号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500005', '210105', '皇姑区精神卫生医院', '皇姑区精神卫生医院', null, null, '14', 4, '21010500005', 21010500005, '赵辉', '024-86287283', null, null, '沈阳市皇姑区米兰河街51巷34号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500006', '210105', '皇姑区红十字会医院', '皇姑区红十字会医院', null, null, '14', 4, '21010500006', 21010500006, '魏虹', '024-86719199', null, null, '沈阳市皇姑区明廉路45号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600005', '210106', '铁西区华康医院', '铁西区华康医院', null, null, '14', 4, '21010600005', 21010600005, '缪宏宇', '25829744', null, null, '沈阳市铁西区卫工北街28号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600004', '210106', '铁西区中心医院', '铁西区中心医院', null, null, '14', 4, '21010600004', 21010600004, '葛晓丽', '25603887', null, null, '沈阳市铁西区云峰南街5号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600006', '210106', '铁西区精神卫生中心', '铁西区精神卫生中心', null, null, '14', 4, '21010600006', 21010600006, '王丽君', '62445499', null, null, '沈阳市于洪区沈新路59号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100002', '210111', '苏家屯区中医医院', '苏家屯区中医医院', null, null, '14', 4, '21011100002', 21011100002, '赵凯', '024-89814515', null, null, '沈阳市苏家屯区雪松路49号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100003', '210111', '苏家屯区中心医院', '苏家屯区中心医院', null, null, '14', 4, '21011100003', 21011100003, '林振强', '89815107', null, null, '苏家屯区翠柏二路9号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100004', '210111', '苏家屯区妇婴医院', '苏家屯区妇婴医院', null, null, '14', 4, '21011100004', 21011100004, '徐铁兵', '024-89122915', null, null, '沈阳市苏家屯区海棠街68号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200004', '210112', '浑南区医院', '浑南区医院', null, null, '14', 4, '21011200004', 21011200004, '郭平', '024-23811730', null, null, '辽宁省沈阳市浑南区华园东路3号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200003', '210112', '浑南区中心医院', '浑南区中心医院', null, null, '14', 4, '21011200003', 21011200003, '陈荣宗', '024-24228196', null, null, '辽宁省沈阳市沈河区泉园二路87号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300003', '210113', '沈北新区中心医院', '沈北新区中心医院', null, null, '14', 4, '21011300003', 21011300003, '王绍龙', '024-89865267', null, null, '沈北新区青州路16号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400001', '210114', '于洪区人民医院', '于洪区人民医院', null, null, '14', 4, '21011400001', 21011400001, '何勇', '25311987', null, null, '沈阳市于洪区沈大路112号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012300001', '210123', '康平县人民医院', '康平县人民医院', null, null, '14', 4, '21012300001', 21012300001, '张志城', '87342302', null, null, '康平县康平镇', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012400002', '210124', '法库县中医医院', '法库县中医医院', null, null, '14', 4, '21012400002', 21012400002, '洪泽生', '024-87122708', null, null, '法库县法库镇团结街', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012400003', '210124', '法库县中心医院', '法库县中心医院', null, null, '14', 4, '21012400003', 21012400003, '侯向忱', '024-87122522', null, null, '法库县法库镇河南街', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100002', '210181', '新民市中医院', '新民市中医院', null, null, '14', 4, '21018100002', 21018100002, '肇铁', '87853462', null, null, '新民市东城街道中兴东路2号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100003', '210181', '新民市第二人民医院', '新民市第二人民医院', null, null, '14', 4, '21018100003', 21018100003, '常庆成', '87532492', null, null, '新民市新柳区铁北委218号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100001', '210181', '新民市人民医院', '新民市人民医院', null, null, '14', 4, '21018100001', 21018100001, '李淑梅', '87852362', null, null, '新民市西城区康复街', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100004', '210181', '新民市妇婴医院', '新民市妇婴医院', null, '0', '14', 4, '21018100004', 21018100004, '史彦君', '27602222', null, null, '新民市东城区老君当委', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104008', '210104', '沈阳市大东区津桥社区卫生服务中心', '大东区津桥社区卫生服务中心', null, null, '04', 5, '210104008', 210104008, null, '13516042715', null, null, '大东区小东路163号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104001', '210104', '大东区小北社区卫生服务中心', '大东区小北社区卫生服务中心', null, null, '04', 5, '210104001', 210104001, null, '66687536', null, null, '沈阳市大东区小北街72号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104007', '210104', '大东区二台子社区卫生服务中心', '大东区二台子社区卫生服务中心', null, null, '04', 5, '210104007', 210104007, null, '88325032', null, null, '大东区上园路48-4号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104009', '210104', '大东区东站社区卫生服务中心', '大东区东站社区卫生服务中心', null, null, '04', 5, '210104009', 210104009, null, '88902818', null, null, '沈阳市大东区东北大马路东站七巷七号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104003', '210104', '大东区万泉社区卫生服务中心', '大东区万泉社区卫生服务中心', null, null, '04', 5, '210104003', 210104003, null, '024-24835786', null, null, '沈阳市大东区大东路70号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104002', '210104', '大东区大北社区卫生服务中心', '大东区大北社区卫生服务中心', null, null, '04', 5, '210104002', 210104002, null, '88505001', null, null, '沈阳市大东区大北街37号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104010', '210104', '大东区辽沈社区卫生服务中心', '大东区辽沈社区卫生服务中心', null, null, '04', 5, '210104010', 210104010, null, '88113157', null, null, '沈阳市大东区洮昌街81号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110503', '210111105', '沈阳市苏家屯区十里河街道江浒村卫生室', '十里河街道江浒村卫生室', null, null, '15', 6, '21011110503', 21011110503, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100806', '210111008', '沈阳市苏家屯区姚千街道马耳山村卫生室', '姚千街道马耳山村卫生室', null, null, '15', 6, '21011100806', 21011100806, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100814', '210111008', '沈阳市苏家屯区姚千街道姚千村卫生室', '姚千街道姚千村卫生室', null, null, '15', 6, '21011100814', 21011100814, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100801', '210111008', '沈阳市苏家屯区姚千街道代官村卫生室', '姚千街道代官村卫生室', null, null, '15', 6, '21011100801', 21011100801, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100815', '210111008', '沈阳市苏家屯区姚千街道姚千社区卫生服务站', '姚千街道姚千社区卫生服务站', null, null, '15', 6, '21011100815', 21011100815, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100105', '210111001', '沈阳市苏家屯区解放街道浑农街道卫生服务站', '解放街道浑农街道卫生服务站', null, null, '15', 6, '21011100105', 21011100105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120310', '210111203', '沈阳市苏家屯区王纲乡王纲堡村第二卫生室', '王纲乡王纲堡村第二卫生室', null, null, '15', 6, '21011120310', 21011120310, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 1300 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100315', '210111003', '沈阳市苏家屯区民主街道振兴西社区卫生服务站', '民主街道振兴西社区卫生服务站', null, null, '15', 6, '21011100315', 21011100315, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100314', '210111003', '沈阳市苏家屯区民主街道振兴东社区卫生服务站', '民主街道振兴东社区卫生服务站', null, null, '15', 6, '21011100314', 21011100314, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100310', '210111003', '沈阳市苏家屯区民主街道南营子社区卫生服务站', '民主街道南营子社区卫生服务站', null, null, '15', 6, '21011100310', 21011100310, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100301', '210111003', '沈阳市苏家屯区民主街道碧桂园社区卫生服务站', '民主街道碧桂园社区卫生服务站', null, null, '15', 6, '21011100301', 21011100301, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100307', '210111003', '沈阳市苏家屯区民主街道联盟村卫生服务站', '民主街道联盟村卫生服务站', null, null, '15', 6, '21011100307', 21011100307, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100313', '210111003', '沈阳市苏家屯区民主街道星光村卫生服务站', '民主街道星光村卫生服务站', null, null, '15', 6, '21011100313', 21011100313, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100408', '210111004', '沈阳市苏家屯区临湖街道胡家村卫生室', '临湖街道胡家村卫生室', null, null, '15', 6, '21011100408', 21011100408, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100412', '210111004', '沈阳市苏家屯区临湖街道前谟村第三卫生室', '临湖街道前谟村第三卫生室', null, null, '15', 6, '21011100412', 21011100412, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100413', '210111004', '沈阳市苏家屯区临湖街道前谟村第四卫生室', '临湖街道前谟村第四卫生室', null, null, '15', 6, '21011100413', 21011100413, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100414', '210111004', '沈阳市苏家屯区临湖街道前谟村第五卫生室', '临湖街道前谟村第五卫生室', null, null, '15', 6, '21011100414', 21011100414, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100418', '210111004', '沈阳市苏家屯区临湖街道新兴村第一卫生室', '临湖街道新兴村第一卫生室', null, null, '15', 6, '21011100418', 21011100418, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100416', '210111004', '沈阳市苏家屯区临湖街道西苏村第二卫生室', '临湖街道西苏村第二卫生室', null, null, '15', 6, '21011100416', 21011100416, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100407', '210111004', '沈阳市苏家屯区临湖街道胡家村第一卫生室', '临湖街道胡家村第一卫生室', null, null, '15', 6, '21011100407', 21011100407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120814', '210111208', '沈阳市苏家屯区永乐乡羿古村卫生室', '永乐乡羿古村卫生室', null, null, '15', 6, '21011120814', 21011120814, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120801', '210111208', '沈阳市苏家屯区永乐乡白云村卫生室', '永乐乡白云村卫生室', null, null, '15', 6, '21011120801', 21011120801, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120804', '210111208', '沈阳市苏家屯区永乐乡大韩台村卫生室1', '永乐乡大韩台村卫生室1', null, null, '15', 6, '21011120804', 21011120804, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120302', '210111203', '沈阳市苏家屯区王纲堡乡水萝卜台村卫生室', '纲堡乡水萝卜台村卫生室', null, null, '15', 6, '21011120302', 21011120302, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120305', '210111203', '沈阳市苏家屯区王纲堡乡杨孟达村第一卫生室', '王纲堡乡杨孟达村第一卫生室', null, null, '15', 6, '21011120305', 21011120305, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120304', '210111203', '沈阳市苏家屯区王纲堡乡新开河村第二卫生室', '王纲堡乡新开河村第二卫生室', null, null, '15', 6, '21011120304', 21011120304, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120303', '210111203', '沈阳市苏家屯区王纲堡乡王纲村第一卫生室', '王纲堡乡王纲村第一卫生室', null, null, '15', 6, '21011120303', 21011120303, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110413', '210111104', '沈阳市苏家屯区沙河街道沙河沿村卫生室', '沙河街道沙河沿村卫生室', null, null, '15', 6, '21011110413', 21011110413, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110418', '210111104', '沈阳市苏家屯区沙河街道赵家甸子村', '沙河街道赵家甸子村', null, null, '15', 6, '21011110418', 21011110418, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110407', '210111104', '沈阳市苏家屯区沙河街道后黄花甸村卫生室', '沙河街道后黄花甸村卫生室', null, null, '15', 6, '21011110407', 21011110407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110410', '210111104', '沈阳市苏家屯区沙河街道沙河东村卫生室', '沙河街道沙河东村卫生室', null, null, '15', 6, '21011110410', 21011110410, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110408', '210111104', '沈阳市苏家屯区沙河街道前桑栏子村卫生室', '沙河街道前桑栏子村卫生室', null, null, '15', 6, '21011110408', 21011110408, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120502', '210111205', '沈阳市苏家屯区大沟乡菜屯村卫生室（大堡）', '大沟乡菜屯村卫生室（大堡）', null, null, '15', 6, '21011120502', 21011120502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120505', '210111205', '沈阳市苏家屯区大沟乡大洼村卫生室', '大沟乡大洼村卫生室', null, null, '15', 6, '21011120505', 21011120505, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201701', '210102017', '沈阳市和平区集贤街道南九社区卫生服务站', '集贤街道南九社区卫生服务站', null, null, '15', 6, '21010201701', 21010201701, null, null, null, null, '沈阳市和平区海口街40号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201901', '210102019', '沈阳市和平区南湖街道彩塔社区卫生服务站', '南湖街道彩塔社区卫生服务站', null, null, '15', 6, '21010201901', 21010201901, null, null, null, null, '沈阳市和平区彩塔街36号3-1-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202201', '210102022', '沈阳市和平区太原街道环宇社区卫生服务站', '太原街道环宇社区卫生服务站', null, null, '15', 6, '21010202201', 21010202201, null, null, null, null, '沈阳市和平区天津南街88号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200801', '210102008', '沈阳市和平区八经街道蓝翎社区卫生服务站', '八经街道蓝翎社区卫生服务站', null, null, '15', 6, '21010200801', 21010200801, null, null, null, null, '沈阳市和平区扬州街11号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200102', '210102001', '沈阳市和平区浑河湾街道万和社区卫生服务站', '浑河湾街道万和社区卫生服务站', null, null, '15', 6, '21010200102', 21010200102, null, null, null, null, '沈阳市和平区砂山街91号北1门', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200101', '210102001', '沈阳市和平区浑河湾街道和平湾社区卫生服务站', '浑河湾街道和平湾社区卫生服务站', null, null, '15', 6, '21010200101', 21010200101, null, null, null, null, '沈阳市和平区河北街25号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103010', '210103', '沈阳市沈河区大南社区卫生服务中心', '沈河区大南社区卫生服务中心', null, null, '04', 5, '210103010', 210103010, null, null, null, null, '沈河区热闹路111号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103005', '210103', '沈阳市沈河区滨河社区卫生服务中心', '沈河区滨河社区卫生服务中心', null, null, '04', 5, '210103005', 210103005, null, null, null, null, '沈阳市沈河区南乐郊路32号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103004', '210103', '沈阳市沈河区大西社区卫生服务中心', '沈河区大西社区卫生服务中心', null, null, '04', 5, '210103004', 210103004, null, null, null, null, '沈阳市沈河区大西路316号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300601', '210103006', '沈阳市沈河区万莲街道先农坛社区卫生服务站', '沈河区万莲街道先农坛社区卫生服务站', null, null, '15', 6, '21010300601', 21010300601, null, null, null, null, '沈阳市沈河区先农坛路12号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103014', '210103', '沈阳市沈河区新北站社区卫生服务中心', '沈河区新北站社区卫生服务中心', null, null, '04', 5, '210103014', 210103014, null, null, null, null, '沈阳市沈河区惠工东一街36号', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400108', '210114005', '沈阳市于洪区迎宾路街道渤海路社区卫生服务站', '迎宾路街道渤海路社区卫生服务站', null, null, '15', 6, '21011400108', 21011400108, null, null, null, null, '沈阳市于洪区沈新路62-31#', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400504', '210114005', '沈阳市于洪区于洪街道李红路社区卫生服务站', '于洪街道李红路社区卫生服务站', null, null, '15', 6, '21011400504', 21011400504, null, null, null, null, '沈阳市于洪区洪汇路8号5、6门网点（8-1#）', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401108', '210114011', '沈阳市于洪区城东湖街道三隆社区卫生服务站', '城东湖街道三隆社区卫生服务站', null, null, '15', 6, '21011401108', 21011401108, null, null, null, null, '沈阳市于洪区南阳湖街9-1号3门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401101', '210114011', '沈阳市于洪区城东湖街道碧桂园社区卫生服务站', '城东湖街道碧桂园社区卫生服务站', null, null, '15', 6, '21011401101', 21011401101, null, null, null, null, '沈阳市于洪区南阳湖街81号7门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400109', '210114005', '沈阳市于洪区迎宾路街道西湖社区卫生服务站', '迎宾路街道西湖社区卫生服务站', null, null, '15', 6, '21011400109', 21011400109, null, null, null, null, '于洪区沈新路168-4栋5号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400702', '210114007', '沈阳市于洪区北陵街道松山社区卫生服务站', '北陵街道松山社区卫生服务站', null, null, '15', 6, '21011400702', 21011400702, null, null, null, null, '沈阳市于洪区黑山路12-22号1门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114009', '210114', '沈阳市于洪区沙岭中心卫生院', '于洪区沙岭中心卫生院', null, null, '04', 5, '210114009', 210114009, null, null, null, null, '沈阳市于洪区沙岭街道沙岭村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400303', '210114003', '沈阳市于洪区陵西街道川江社区卫生服务站', '陵西街道川江社区卫生服务站', null, null, '15', 6, '21011400303', 21011400303, null, null, null, null, '沈阳市于洪区黑山路8-8号113', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400106', '210114005', '沈阳市于洪区迎宾路街道珍珠社区卫生服务站', '迎宾路街道珍珠社区卫生服务站', null, null, '15', 6, '21011400106', 21011400106, null, null, null, null, '于洪区黄海路38-1号10门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114011', '210114', '沈阳市于洪区城东湖社区卫生服务中心', '于洪区城东湖社区卫生服务中心', null, null, '04', 5, '210114011', 210114011, null, null, null, null, '沈阳市于洪区南阳湖街49号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114214', '210114', '沈阳市于洪区解放卫生院', '于洪区解放卫生院', null, null, '04', 5, '210114214', 210114214, null, null, null, null, '沈阳市于洪区光辉街道解放村', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106017', '210106', '长滩中心卫生院', '长滩中心卫生院', null, null, '04', 5, '210106017', 210106017, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106018', '210106', '大潘中心卫生院', '大潘中心卫生院', null, null, '04', 5, '210106018', 210106018, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400701', '210114007', '沈阳市于洪区北陵街道银亿社区卫生服务站', '北陵街道银亿社区卫生服务站', null, null, '15', 6, '21011400701', 21011400701, null, null, null, null, '沈阳市于洪区怒江北街227-4号（网点3门）', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400105', '210114005', '沈阳市于洪区迎宾街道太湖社区明颂卫生服务站', '迎宾街道太湖社区明颂卫生服务站', null, null, '15', 6, '21011400105', 21011400105, null, null, null, null, '沈阳市于洪区太湖街18-1号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401106', '210114011', '沈阳市于洪区城东湖街道紫郡城东社区卫生服务站', '城东湖街道紫郡城东社区卫生服务站', null, null, '15', 6, '21011401106', 21011401106, null, null, null, null, '沈阳市于洪区汪河路5-9号8栋2-1-1号和1-1-2号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600007', '210106', '铁西区妇婴医院', '铁西区妇婴医院', null, null, '14', 4, '21010600007', 21010600007, '王丽君', '62445499', null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600008', '210106', '铁西区结核防治所', '铁西区结核防治所', null, null, '14', 4, '21010600008', 21010600008, '王丽君', '62445499', null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600009', '210106', '东北输变电设备集团中心医院', '东北输变电设备集团中心医院', null, null, '14', 4, '21010600009', 21010600009, '王丽君', '62445499', null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106021', '210106', '兴工社区', '兴工社区', null, null, '04', 5, '210106021', 210106021, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106022', '210106', '昆明湖卫生社区', '昆明湖卫生社区', null, null, '04', 5, '210106022', 210106022, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114007', '210114', '沈阳市于洪区北陵社区卫生服务中心', '于洪区北陵社区卫生服务中心', null, null, '04', 5, '210114007', 210114007, null, null, null, null, '沈阳市于洪区白山路46甲号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400703', '210114007', '沈阳市于洪区北陵街道桃源社区卫生服务站', '北陵街道桃源社区卫生服务站', null, null, '15', 6, '21011400703', 21011400703, null, null, null, null, '于洪区怒江北街185号2门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400505', '210114005', '沈阳市于洪区于洪街道和泰社区卫生服务站 ', '于洪街道和泰社区卫生服务站 ', null, null, '15', 6, '21011400505', 21011400505, null, null, null, null, '于洪区沈大路160-1号', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401105', '210114011', '沈阳市于洪区城东湖街道紫郡城西社区卫生服务站', '城东湖街道紫郡城西社区卫生服务站', null, null, '15', 6, '21011401105', 21011401105, null, null, null, null, '于洪区城东湖街11-8号8门', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201801', '210112018', '浑南区白塔社区卫生服务中心白塔街道白塔北村刘志敏卫生室', '白塔街道白塔北村刘志敏卫生室', null, null, '04', 5, '21011201801', 21011201801, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201802', '210112018', '浑南区白塔社区卫生服务中心白塔街道白塔村杜凤华卫生室', '白塔街道白塔村杜凤华卫生室', null, null, '04', 5, '21011201802', 21011201802, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201803', '210112018', '浑南区白塔社区卫生服务中心白塔街道白塔村杜凤华卫生室', '白塔街道白塔村杜凤华卫生室', null, null, '04', 5, '21011201803', 21011201803, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201804', '210112018', '浑南区白塔社区卫生服务中心白塔街道白塔南村刘志刚卫生室', '白塔街道白塔南村刘志刚卫生室', null, null, '04', 5, '21011201804', 21011201804, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201805', '210112018', '浑南区白塔社区卫生服务中心白塔街道白塔南村张恩林卫生室', '白塔街道白塔南村张恩林卫生室', null, null, '04', 5, '21011201805', 21011201805, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201806', '210112018', '浑南区白塔社区卫生服务中心白塔街道白塔社区卫生服务站', '白塔街道白塔社区卫生服务站', null, null, '04', 5, '21011201806', 21011201806, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201807', '210112018', '浑南区白塔社区卫生服务中心白塔街道大羊安村卜素云卫生室', '白塔街道大羊安村卜素云卫生室', null, null, '04', 5, '21011201807', 21011201807, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201808', '210112018', '浑南区白塔社区卫生服务中心白塔街道大羊安村胡英男卫生室', '白塔街道大羊安村胡英男卫生室', null, null, '04', 5, '21011201808', 21011201808, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201809', '210112018', '浑南区白塔社区卫生服务中心白塔街道大羊安社区卫生服务站', '白塔街道大羊安社区卫生服务站', null, null, '04', 5, '21011201809', 21011201809, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201810', '210112018', '浑南区白塔社区卫生服务中心白塔街道大张尔社区卫生服务站', '白塔街道大张尔社区卫生服务站', null, null, '04', 5, '21011201810', 21011201810, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201811', '210112018', '浑南区白塔社区卫生服务中心白塔街道大张林村卫生室', '白塔街道大张林村卫生室', null, null, '04', 5, '21011201811', 21011201811, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '数据来源于125数据库', '0');
commit;
prompt 1374 records loaded
prompt Loading SYS_DICT...
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', null, '系统设置-定时任务分组', 'sys_task_group', 1, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '1', '系统任务', 'sys_task_group_1', 1, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '系统设置模块中的任务', '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('3', null, '系统设置-系统类型', 'sys_system_type', 2, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('4', '3', '基础支撑', 'sys_system_type_1', 1, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('5', '3', '数据分析', 'sys_system_type_2', 2, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('7', '3', '演示页面', 'sys_system_type_3', 3, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 6 records loaded
prompt Loading SYS_MENU...
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('9', '字典管理', '/menu/sys/dict.png', '/sys/dict', '/sys/dict', '1', '0', 1, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('10', '系统配置', '/menu/sys/sys.png', '/sysset', null, '0', '0', 2, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('11', '系统管理', '/menu/sys/system.png', '/sysset/system', '/sys/system', '0', '0', 3, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('12', '菜单管理', '/menu/sys/menu.png', '/sysset/menu', '/sys/menu', '0', '0', 2, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('13', '按钮权限', '/menu/sys/button.png', '/sysset/button', '/sys/button', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('14', '用户管理', '/menu/sys/user.png', '/sys/user', '/sys/user', '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('15', '角色管理', '/menu/sys/role.png', '/sys/role', '/sys/role', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('16', '机构部门', '/menu/sys/dept.png', '/sys/dept', '/sys/dept', '0', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('17', '定时任务', '/menu/sys/task.png', '/sys/task', '/sys/task', '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('18', '系统分析', '/menu/sys/tjfx.png', '/sys/home', '/sys/home', '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('19', '首页示例', '/menu/ys/ys.png', '/example/dashboard', null, '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('20', '分析页', '/menu/ys/ys.png', '/example/dashboard/analysis', '/example/dashboard/analysis', '1', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21', '工作台', '/menu/ys/ys.png', '/example/dashboard/workplace', '/example/dashboard/workplace', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('22', '监控页', '/menu/ys/ys.png', '/example/dashboard/monitor', '/example/dashboard/monitor', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('23', '表单页', '/menu/ys/ys.png', '/example/form', null, '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('24', '基础表单', '/menu/ys/ys.png', '/example/form/basic-form', '/example/form/basic-form', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('25', '分步表单', '/menu/ys/ys.png', '/example/form/step-form', '/example/form/step-form', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('26', '高级表单', '/menu/ys/ys.png', '/example/form/advanced-form', '/example/form/advanced-form', '0', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('27', '列表页', '/menu/ys/ys.png', '/example/list', null, '0', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('28', '搜索列表', '/menu/ys/ys.png', '/example/list/search', '/example/list/search', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('29', '搜索列表（文章）', '/menu/ys/ys.png', '/example/list/search/articles', '/example/list/search/articles', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('30', '搜索列表（项目）', '/menu/ys/ys.png', '/example/list/search/projects', '/example/list/search/projects', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('31', '搜索列表（应用）', '/menu/ys/ys.png', '/example/list/search/applications', '/example/list/search/applications', '0', '0', 3, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('32', '查询表格', '/menu/ys/ys.png', '/example/list/table-list', '/example/list/table-list', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('33', '标准列表', '/menu/ys/ys.png', '/example/list/basic-list', '/example/list/basic-list', '0', '0', 3, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('34', '卡片列表', '/menu/ys/ys.png', '/example/list/card-list', '/example/list/card-list', '0', '0', 4, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('35', '详情页', '/menu/ys/ys.png', '/example/profile', null, '0', '0', 4, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('36', '基础详情页', '/menu/ys/ys.png', '/example/profile/basic', '/example/profile/basic', '0', '0', 1, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('37', '高级详情页', '/menu/ys/ys.png', '/example/profile/advanced', '/example/profile/advanced', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('38', '结果页', '/menu/ys/ys.png', '/example/result', null, '0', '0', 5, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('39', '成功页', '/menu/ys/ys.png', '/example/result/success', '/example/result/success', '0', '0', 1, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('40', '失败页', '/menu/ys/ys.png', '/example/result/fail', '/example/result/fail', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('41', '异常页', '/menu/ys/ys.png', '/example/exception', null, '0', '0', 6, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('42', '403', '/menu/ys/ys.png', '/example/exception/403', '/example/exception/403', '0', '0', 1, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('43', '404', '/menu/ys/ys.png', '/example/exception/404', '/example/exception/404', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('44', '500', '/menu/ys/ys.png', '/example/exception/500', '/example/exception/500', '0', '0', 3, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('45', '个人页', '/menu/ys/ys.png', '/example/account', null, '0', '0', 7, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('46', '个人中心', '/menu/ys/ys.png', '/example/account/center', '/example/account/center', '0', '0', 1, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('47', '个人设置', '/menu/ys/ys.png', '/example/account/settings', '/example/account/settings', '0', '0', 2, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('48', '图形编辑器', '/menu/ys/ys.png', '/example/editor', null, '0', '0', 8, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('49', '流程编辑器', '/menu/ys/ys.png', '/example/editor/flow', '/example/editor/flow', '0', '0', 1, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('50', '脑图编辑器', '/menu/ys/ys.png', '/example/editor/mind', '/example/editor/mind', '0', '0', 2, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('51', '拓扑编辑器', '/menu/ys/ys.png', '/example/editor/koni', '/example/editor/koni', '0', '0', 3, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('52', '操作日志', '/menu/log/handle.png', '/log/handle', '/log/handle', '1', '0', 1, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('53', '登录日志', '/menu/log/login.png', '/log/login', '/log/login', '0', '0', 2, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 45 records loaded
prompt Loading SYS_RESOURCE...
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('25', null, '1', '13', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('26', null, '1', '14', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('27', null, '1', '15', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('28', null, '1', '16', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('29', '25', '2', '9', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('30', '25', '2', '10', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('31', '30', '2', '11', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('32', '30', '2', '12', to_date('14-07-2020 15:27:13', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('33', '30', '2', '13', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('34', '26', '2', '14', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('35', '26', '2', '15', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('36', '26', '2', '16', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('37', '27', '2', '17', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('38', '28', '2', '18', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('39', '25', '3', '6', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('40', '25', '3', '7', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('41', '25', '3', '8', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('42', '25', '3', '9', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('43', '34', '3', '10', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('44', null, '1', '17', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('45', null, '1', '18', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('46', '45', '2', '19', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('47', '46', '2', '20', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('48', '46', '2', '21', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('49', '46', '2', '22', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('50', '45', '2', '23', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('51', '50', '2', '24', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('52', '50', '2', '25', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('53', '50', '2', '26', to_date('14-07-2020 15:27:14', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('54', '45', '2', '27', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('55', '54', '2', '28', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('56', '55', '2', '29', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('57', '55', '2', '30', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('58', '55', '2', '31', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('59', '54', '2', '32', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('60', '54', '2', '33', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('61', '54', '2', '34', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('62', '45', '2', '35', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('63', '62', '2', '36', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('64', '62', '2', '37', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('65', '45', '2', '38', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('66', '65', '2', '39', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('67', '65', '2', '40', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('68', '45', '2', '41', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('69', '68', '2', '42', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('70', '68', '2', '43', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('71', '68', '2', '44', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('72', '45', '2', '45', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('73', '72', '2', '46', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('74', '72', '2', '47', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('75', '45', '2', '48', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('76', '75', '2', '49', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('77', '75', '2', '50', to_date('14-07-2020 15:27:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('78', '75', '2', '51', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('79', null, '1', '19', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('80', '79', '2', '52', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('81', '79', '2', '53', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('82', '79', '3', '11', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('83', '79', '3', '12', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('84', '79', '3', '13', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_RESOURCE (id, parent_id, type, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('85', '79', '3', '14', to_date('14-07-2020 15:27:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 61 records loaded
prompt Loading SYS_ROLE...
insert into SYS_ROLE (id, name, code, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '超级管理员', 'admin', to_date('14-07-2020 15:28:51', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:28:51', 'dd-mm-yyyy hh24:mi:ss'), null, '系统权限最高的角色，为开发人员配置系统使用，禁止修改，禁止用户使用。', '0');
insert into SYS_ROLE (id, name, code, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '测试角色', 'test', to_date('14-07-2020 15:28:51', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('15-07-2020 09:43:03', 'dd-mm-yyyy hh24:mi:ss'), 'admin', '查看 ant design pro 原生页面', '0');
commit;
prompt 2 records loaded
prompt Loading SYS_ROLE_RESOURCE...
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '39', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '40', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '41', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '42', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '45', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '46', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '47', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '48', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '49', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '50', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '51', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '52', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '53', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '54', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '55', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '56', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '57', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '58', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '59', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '60', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '61', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '62', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '63', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '64', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '65', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '66', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '67', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '68', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '69', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '70', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '71', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '72', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '73', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '74', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '75', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '76', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '77', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '78', to_date('15-07-2020 14:22:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '25', to_date('14-07-2020 15:31:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '26', to_date('14-07-2020 15:31:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '27', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '28', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '29', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '30', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '31', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '32', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '33', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '34', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '35', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '36', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '37', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '38', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '39', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '40', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '41', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '42', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '43', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '44', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '45', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '46', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '47', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '48', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '49', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '50', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '51', to_date('14-07-2020 15:31:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '52', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '53', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '54', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '55', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '56', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '57', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '58', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '59', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '60', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '61', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '62', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '63', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '64', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '65', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '66', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '67', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '68', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '69', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '70', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '71', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '72', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '73', to_date('14-07-2020 15:31:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '74', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '75', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '76', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '77', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '78', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '79', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '80', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '81', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '82', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '83', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '84', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_ROLE_RESOURCE (role_id, resource_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '85', to_date('14-07-2020 15:31:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 99 records loaded
prompt Loading SYS_SYSTEM...
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('13', 'sys_system_type_1', '系统设置', '对系统、菜单、按钮以及访问路径等系统资源进行配置。并维护系统字典信息。', '/system/xtsz.png', '1', '0', null, 1, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('14', 'sys_system_type_1', '权限管理', '对登录用户的管理，以及登录用户归属的角色、部门信息，并对角色进行授权。', '/system/qxgl.png', '0', '0', null, 2, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('15', 'sys_system_type_1', '程序任务', '对系统内的定时任务进行管理', '/system/cxrw.png', '0', '0', null, 3, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('16', 'sys_system_type_2', '数据分析', '对数据的分析展示', '/system/sjfx.png', '0', '0', '/sys/home', 1, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('17', 'sys_system_type_2', '百度链接', null, '/system/sjfx.png', '0', '1', 'http://www.baidu.com', 2, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('18', 'sys_system_type_3', '演示页面', 'antd pro 前端框架带的静态页面，可作为开发的参考页面', '/system/ys.png', '0', '0', null, 1, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('19', 'sys_system_type_2', '日志调阅', null, '/system/rz.png', '0', '0', null, 3, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
commit;
prompt 7 records loaded
prompt Loading SYS_TASK...
insert into SYS_TASK (id, name, "group", rule, class_name, used_state, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '测试2', 'sys_task_group_1', '0 0 23 * * ?', 'com.zhixiang.health.modules.sys.task.SysTestTask', '1', to_date('14-07-2020 15:33:28', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:33:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0');
commit;
prompt 1 records loaded
prompt Loading SYS_USER...
insert into SYS_USER (id, user_name, password, real_name, phone, birthday, sex, photo, used_state, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', 'admin', '$2a$10$lKOBjPD4ayNIzMKNsyaRU.IfcwNljdBMekeutyxfOZ96ofhMnaD6q', '超级管理员', '13333333333', to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), '1', null, '1', to_date('14-01-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_USER (id, user_name, password, real_name, phone, birthday, sex, photo, used_state, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', 'test', '$2a$10$VcHwIZOZXLZB9xU5fwWCvuD5YVMVIxnNL7huYGvry5tkC.GWgUSAe', '测试', '13333333333', to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), '1', null, '1', to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
commit;
prompt 2 records loaded
prompt Loading SYS_USER_DEPT...
insert into SYS_USER_DEPT (user_id, dept_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '21', to_date('14-07-2020 15:35:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_USER_DEPT (user_id, dept_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '21', to_date('14-07-2020 15:35:12', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 2 records loaded
prompt Loading SYS_USER_ROLE...
insert into SYS_USER_ROLE (user_id, role_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '1', to_date('14-07-2020 15:35:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_USER_ROLE (user_id, role_id, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '2', to_date('14-07-2020 15:35:40', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 2 records loaded
set feedback on
set define on
prompt Done.

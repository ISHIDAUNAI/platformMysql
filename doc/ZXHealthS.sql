prompt PL/SQL Developer import file
prompt Created on 2020��7��17�� by wang
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
  is '������־��Ϣ';
comment on column LOG_HANDLE.id
  is '����ID';
comment on column LOG_HANDLE.year
  is '��';
comment on column LOG_HANDLE.month
  is '��';
comment on column LOG_HANDLE.day
  is '��';
comment on column LOG_HANDLE.user_name
  is '�û���½����';
comment on column LOG_HANDLE.detail
  is '��־��Ϣ';
comment on column LOG_HANDLE.method
  is '���ʷ�����';
comment on column LOG_HANDLE.url
  is '����·��';
comment on column LOG_HANDLE.http_type
  is '���ʷ�ʽ';
comment on column LOG_HANDLE.args
  is '���ʲ���';
comment on column LOG_HANDLE.event_type
  is '��־�����¼�����';
comment on column LOG_HANDLE.module_type
  is '��־��¼ģ������';
comment on column LOG_HANDLE.create_date
  is '����ʱ��';
comment on column LOG_HANDLE.create_by
  is '������';
comment on column LOG_HANDLE.update_date
  is '�޸�ʱ��';
comment on column LOG_HANDLE.update_by
  is '�޸���';
comment on column LOG_HANDLE.remark
  is '��ע';
comment on column LOG_HANDLE.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '��¼��־';
comment on column LOG_LOGIN.id
  is '����ID';
comment on column LOG_LOGIN.year
  is '��';
comment on column LOG_LOGIN.month
  is '��';
comment on column LOG_LOGIN.day
  is '��';
comment on column LOG_LOGIN.user_name
  is '�û���½����';
comment on column LOG_LOGIN.result
  is '��¼��� 0ʧ�� 1�ɹ�';
comment on column LOG_LOGIN.code
  is '�������';
comment on column LOG_LOGIN.message
  is '�����Ϣ';
comment on column LOG_LOGIN.create_date
  is '����ʱ��';
comment on column LOG_LOGIN.create_by
  is '������';
comment on column LOG_LOGIN.update_date
  is '�޸�ʱ��';
comment on column LOG_LOGIN.update_by
  is '�޸���';
comment on column LOG_LOGIN.remark
  is '��ע';
comment on column LOG_LOGIN.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '��ť������Ȩ������';
comment on column SYS_BUTTON.id
  is '����ID';
comment on column SYS_BUTTON.name
  is '��ť����';
comment on column SYS_BUTTON.permission
  is 'Ȩ�ޱ�ʶ';
comment on column SYS_BUTTON.url
  is '��������';
comment on column SYS_BUTTON.method
  is '���󷽷�  1:Get��2:Post��3:Put��4:Delete';
comment on column SYS_BUTTON.create_date
  is '����ʱ��';
comment on column SYS_BUTTON.create_by
  is '������';
comment on column SYS_BUTTON.update_date
  is '�޸�ʱ��';
comment on column SYS_BUTTON.update_by
  is '�޸���';
comment on column SYS_BUTTON.remark
  is '��ע';
comment on column SYS_BUTTON.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '������Ϣ��';
comment on column SYS_DEPT.id
  is '����';
comment on column SYS_DEPT.parent_id
  is '�ϼ���������, ��Ϊ��������';
comment on column SYS_DEPT.name
  is '��������';
comment on column SYS_DEPT.name_simple
  is '�������';
comment on column SYS_DEPT.name_py
  is '����ƴ����';
comment on column SYS_DEPT.name_wb
  is '���������';
comment on column SYS_DEPT.type
  is '�������ͣ�0��ͷΪ������1��ͷΪҽԺ�� 01 ʡ������ 02 �м����� 03 �������� 04 �������� 11 ʡֱҽԺ 12 ��ֱҽԺ 13��Ӫί�� 14��ֱҽԺ 15����ҽԺ';
comment on column SYS_DEPT.grade
  is '��������';
comment on column SYS_DEPT.code
  is '�������';
comment on column SYS_DEPT.sort
  is '����ֵ';
comment on column SYS_DEPT.relation_name
  is '������';
comment on column SYS_DEPT.relation_phone1
  is '��ϵ�绰1';
comment on column SYS_DEPT.relation_phone2
  is '��ϵ�绰2';
comment on column SYS_DEPT.relation_mobile
  is '��ϵ�ֻ�';
comment on column SYS_DEPT.relation_address
  is '��ϸ��ַ';
comment on column SYS_DEPT.create_date
  is '����ʱ��';
comment on column SYS_DEPT.create_by
  is '������';
comment on column SYS_DEPT.update_date
  is '�޸�ʱ��';
comment on column SYS_DEPT.update_by
  is '�޸���';
comment on column SYS_DEPT.remark
  is '��ע';
comment on column SYS_DEPT.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '�ֵ��';
comment on column SYS_DICT.parent_id
  is '�ϼ��ֵ�ID, ��Ϊ�����ֵ䶨��';
comment on column SYS_DICT.label
  is '�ֵ��ǩ';
comment on column SYS_DICT.value
  is '�ֵ��ֵ';
comment on column SYS_DICT.sort
  is '����ֵ';
comment on column SYS_DICT.create_date
  is '����ʱ��';
comment on column SYS_DICT.create_by
  is '������';
comment on column SYS_DICT.update_date
  is '�޸�ʱ��';
comment on column SYS_DICT.update_by
  is '�޸���';
comment on column SYS_DICT.remark
  is '��ע';
comment on column SYS_DICT.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '�˵�����';
comment on column SYS_MENU.id
  is '����ID';
comment on column SYS_MENU.name
  is '�˵�����';
comment on column SYS_MENU.icon
  is 'ͼ��';
comment on column SYS_MENU.path
  is 'router·��';
comment on column SYS_MENU.component
  is '���·��';
comment on column SYS_MENU.is_index
  is '�Ƿ�����ҳ��1�ǣ�0��';
comment on column SYS_MENU.show_type
  is 'ҳ��չʾ��ʽ  0 HOME  1 SCREEN';
comment on column SYS_MENU.sort
  is '����ֵ';
comment on column SYS_MENU.create_date
  is '����ʱ��';
comment on column SYS_MENU.create_by
  is '������';
comment on column SYS_MENU.update_date
  is '�޸�ʱ��';
comment on column SYS_MENU.update_by
  is '�޸���';
comment on column SYS_MENU.remark
  is '��ע';
comment on column SYS_MENU.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is 'ϵͳ��Դ��';
comment on column SYS_RESOURCE.id
  is '����ID';
comment on column SYS_RESOURCE.parent_id
  is '����ԴID��ָ��sys_resource.id';
comment on column SYS_RESOURCE.type
  is '��Դ���� 1:System 2:Menu 3:Button';
comment on column SYS_RESOURCE.resource_id
  is '��Դid �� type==System r_id==sys_system.id';
comment on column SYS_RESOURCE.create_date
  is '����ʱ��';
comment on column SYS_RESOURCE.create_by
  is '������';
comment on column SYS_RESOURCE.update_date
  is '�޸�ʱ��';
comment on column SYS_RESOURCE.update_by
  is '�޸���';
comment on column SYS_RESOURCE.remark
  is '��ע';
comment on column SYS_RESOURCE.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '��ɫ��Ϣ��';
comment on column SYS_ROLE.id
  is '����';
comment on column SYS_ROLE.name
  is '��ɫ����';
comment on column SYS_ROLE.code
  is '��ɫ����';
comment on column SYS_ROLE.create_date
  is '����ʱ��';
comment on column SYS_ROLE.create_by
  is '������';
comment on column SYS_ROLE.update_date
  is '�޸�ʱ��';
comment on column SYS_ROLE.update_by
  is '�޸���';
comment on column SYS_ROLE.remark
  is '��ע';
comment on column SYS_ROLE.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '��ɫȨ�ޱ�';
comment on column SYS_ROLE_RESOURCE.role_id
  is '��ɫID';
comment on column SYS_ROLE_RESOURCE.resource_id
  is '��ԴID';
comment on column SYS_ROLE_RESOURCE.create_date
  is '����ʱ��';
comment on column SYS_ROLE_RESOURCE.create_by
  is '������';
comment on column SYS_ROLE_RESOURCE.update_date
  is '�޸�ʱ��';
comment on column SYS_ROLE_RESOURCE.update_by
  is '�޸���';
comment on column SYS_ROLE_RESOURCE.remark
  is '��ע';
comment on column SYS_ROLE_RESOURCE.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is 'ϵͳ����';
comment on column SYS_SYSTEM.id
  is '����ID';
comment on column SYS_SYSTEM.type
  is 'ϵͳ���ͣ������ֵ��sys_system_type';
comment on column SYS_SYSTEM.name
  is 'ϵͳ����';
comment on column SYS_SYSTEM.describe
  is 'ϵͳ���';
comment on column SYS_SYSTEM.icon
  is 'ͼ��';
comment on column SYS_SYSTEM.is_guide
  is '�Ƿ���Ҫ����ҳ��1�ǣ�0��';
comment on column SYS_SYSTEM.show_type
  is '����ϵͳ��ʽ��0 _SELF��1 _BLANK';
comment on column SYS_SYSTEM.blank_path
  is 'ϵͳ���뷽ʽΪblankʱ��·��';
comment on column SYS_SYSTEM.sort
  is '����ֵ';
comment on column SYS_SYSTEM.create_date
  is '����ʱ��';
comment on column SYS_SYSTEM.create_by
  is '������';
comment on column SYS_SYSTEM.update_date
  is '�޸�ʱ��';
comment on column SYS_SYSTEM.update_by
  is '�޸���';
comment on column SYS_SYSTEM.remark
  is '��ע';
comment on column SYS_SYSTEM.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '��ʱ�������ñ�';
comment on column SYS_TASK.id
  is '����ID';
comment on column SYS_TASK.name
  is '������';
comment on column SYS_TASK."group"
  is '������,�����ֵ��,sys_task_group';
comment on column SYS_TASK.rule
  is '��ʱ����';
comment on column SYS_TASK.class_name
  is '������';
comment on column SYS_TASK.used_state
  is '����״̬ 1���� 0����';
comment on column SYS_TASK.create_date
  is '����ʱ��';
comment on column SYS_TASK.create_by
  is '������';
comment on column SYS_TASK.update_date
  is '�޸�ʱ��';
comment on column SYS_TASK.update_by
  is '�޸���';
comment on column SYS_TASK.remark
  is '��ע';
comment on column SYS_TASK.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is 'ϵͳ�û���Ϣ��';
comment on column SYS_USER.id
  is '����';
comment on column SYS_USER.user_name
  is '�û���½����';
comment on column SYS_USER.password
  is '�û���½����';
comment on column SYS_USER.real_name
  is '�û���ʵ����';
comment on column SYS_USER.phone
  is '�ֻ�����';
comment on column SYS_USER.birthday
  is '��������';
comment on column SYS_USER.sex
  is '�Ա� 1�� 0Ů';
comment on column SYS_USER.photo
  is '�û�ͷ��';
comment on column SYS_USER.used_state
  is '����״̬ 1���� 0����';
comment on column SYS_USER.create_date
  is '����ʱ��';
comment on column SYS_USER.create_by
  is '������';
comment on column SYS_USER.update_date
  is '�޸�ʱ��';
comment on column SYS_USER.update_by
  is '�޸���';
comment on column SYS_USER.remark
  is '��ע';
comment on column SYS_USER.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '�û����ű�';
comment on column SYS_USER_DEPT.user_id
  is '�û�ID';
comment on column SYS_USER_DEPT.dept_id
  is '����ID';
comment on column SYS_USER_DEPT.create_date
  is '����ʱ��';
comment on column SYS_USER_DEPT.create_by
  is '������';
comment on column SYS_USER_DEPT.update_date
  is '�޸�ʱ��';
comment on column SYS_USER_DEPT.update_by
  is '�޸���';
comment on column SYS_USER_DEPT.remark
  is '��ע';
comment on column SYS_USER_DEPT.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
  is '�û���ɫ��';
comment on column SYS_USER_ROLE.user_id
  is '�û�ID';
comment on column SYS_USER_ROLE.role_id
  is '��ɫID';
comment on column SYS_USER_ROLE.create_date
  is '����ʱ��';
comment on column SYS_USER_ROLE.create_by
  is '������';
comment on column SYS_USER_ROLE.update_date
  is '�޸�ʱ��';
comment on column SYS_USER_ROLE.update_by
  is '�޸���';
comment on column SYS_USER_ROLE.remark
  is '��ע';
comment on column SYS_USER_ROLE.delete_state
  is 'ʹ��״̬ 1��ɾ�� 0δɾ��';
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
values ('fc3e2c412f67378146a1fda71906f33c', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010003, parentId=2101, name=�����е�������ҽԺ, nameSimple=�����е�������ҽԺ, namePy=null, nameWb=null, type=Y12, grade=3, code=21010003, sort=5, relationName=�պ��, relationPhone1=254037832017, relationPhone2=null, relationMobile=null, relationAddress=��������������˳��188��)]', '3', '01', to_date('16-07-2020 17:43:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('bd6e4267e659b31a5977247e3bf8b6de', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010004, parentId=2101, name=�����е�������ҽԺ, nameSimple=�����е�������ҽԺ, namePy=null, nameWb=null, type=Y12, grade=3, code=21010004, sort=6, relationName=��Ұ, relationPhone1=23387410-129, relationPhone2=null, relationMobile=null, relationAddress=�����к�ƽ����ƽ�ϴ��85��)]', '3', '01', to_date('16-07-2020 17:44:09', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('20f8395a8c0ac063fb69df394d38d2ce', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010005, parentId=2101, name=�����е�������ҽԺ, nameSimple=�����е�������ҽԺ, namePy=null, nameWb=null, type=Y12, grade=3, code=21010005, sort=7, relationName=������, relationPhone1=23875481, relationPhone2=null, relationMobile=13478886779, relationAddress=�����к�ƽ����γ·13��)]', '3', '01', to_date('16-07-2020 17:44:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('887d24c01222cea6259f3da7c59f37b5', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010007, parentId=2101, name=�����еھ�����ҽԺ, nameSimple=�����еھ�����ҽԺ, namePy=null, nameWb=null, type=Y12, grade=3, code=21010007, sort=9, relationName=null, relationPhone1=31088956, relationPhone2=null, relationMobile=null, relationAddress=��������������ʮһ��·ʮ�˺�)]', '3', '01', to_date('16-07-2020 17:44:41', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('dd9dd082e5d3d93b39243669ea45c8e2', 2020, 7, 17, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:36:25', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('f55a758e86e67659d5dab7e827beb99a', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:45:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('a4363e1018f726c623d104add1f5c39e', 2020, 7, 16, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('16-07-2020 17:42:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('943c372e1f6bacf3c0aea2855b4b4f4d', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010015, parentId=2101, name=�����к�ʮ�ֻ�ҽԺ, nameSimple=�����к�ʮ�ֻ�ҽԺ, namePy=null, nameWb=null, type=Y12, grade=3, code=21010015, sort=3, relationName=����, relationPhone1=22942012, relationPhone2=null, relationMobile=null, relationAddress=�������������ɽ·389��)]', '3', '01', to_date('16-07-2020 17:43:24', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('a1b31c0f79607a51be225114b1610f26', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:29:57', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('34eca56f4239106783acd1816405a252', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:30:30', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('cc9f1112e4ce8d2e4fd5e037b6320021', 2020, 7, 17, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:36:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('147cddc2b75b668a3ed3b21ea4e3f18a', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:37:01', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1fcd6159cb951ad0065edd825f6a9973', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:47:20', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('8e251f73d24af86b317ea802a37cfea3', 2020, 7, 16, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('16-07-2020 17:22:11', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('831d122a903beeb895df283f7ffdce13', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=2101, parentId=21, name=�����������뽡��ίԱ��, nameSimple=����������ί, namePy=null, nameWb=null, type=J02, grade=2, code=2101, sort=0, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('16-07-2020 17:26:51', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('60db4f0820101ade7072f6a06b16d54a', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:47:22', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d8bddf366e2248967c8eed291c81cdc4', 2020, 7, 17, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:49:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('58f7ad94e106c733d7ac4018a3e49b94', 2020, 7, 17, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010023, parentId=2101, name=�����м���Ԥ����������, nameSimple=�����м�������, namePy=SYSJBYFKZZ, nameWb=null, type=J01, grade=3, code=21010023, sort=23, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:27', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('df1b20050f2b1da9f59e1605b22bdf22', 2020, 7, 17, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010024, parentId=2101, name=�����������ල��, nameSimple=�����������ල��, namePy=SYSWSJDS, nameWb=null, type=J02, grade=3, code=21010024, sort=24, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:38', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('dcc5eaa1f9fdace5362ce61415418624', 2020, 7, 17, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010023, parentId=2101, name=�����м���Ԥ����������, nameSimple=�����м�������, namePy=SYSJBYFKZZ, nameWb=null, type=J02, grade=3, code=21010023, sort=23, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('644fd4129c232c917fc33131ec5b0544', 2020, 7, 17, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010022, parentId=2101, name=�����м������ģ�120��, nameSimple=������120, namePy=SYSJJZX120, nameWb=null, type=J02, grade=3, code=21010022, sort=22, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:57', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('76e654eb3882f43af410dd8c80405dac', 2020, 7, 16, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('16-07-2020 17:02:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('7bb7eedcbe8fb66451c81810fce59620', 2020, 7, 16, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=0, pageEnd=0)]', '1', '01', to_date('16-07-2020 17:02:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('ebaf5d44b851c4d6c0147adc17a3f2d7', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:27:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('93f4b2aa3a98e9edaae2a1694b6c3d94', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:29:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2a70354dcdc523c5665226582bbfaf9e', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:29:55', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('c02d67cfe3dbcbd0b5b8993bfafab8fe', 2020, 7, 17, 'admin', '�鿴��ʱ�����б�', 'com.zhixiang.health.modules.sys.api.SysTaskApi.page', 'http://localhost:8280/sys/task/page', 'GET', '[com.zhixiang.health.common.http.pagination.Page@56d1c3d2, SysTask(id=null, name=null, group=null, rule=null, className=null, usedState=null)]', '1', '01', to_date('17-07-2020 08:30:26', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d260e702b9c058fc31995b519ddfdede', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:18', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('e3709647fd26d1d92853c265a4c7ddeb', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:25', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('117aab5e849ac53a5ecf1088718a8901', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:27', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1be22c2c5148239d13c46ece723beef7', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d704728734d53cc4331f067d944325c6', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:36:58', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('6780ea86c4d1cb36e5cb667657d840a9', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:37:30', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('cadac54d6e89eeb58bb22355cc993890', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:45:05', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('682848c2b808381e5ea151bece2be22b', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:45:23', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('ea6024accac44629b6904b3ed02202ee', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:49:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2821957e1f25e45dc0ff0d29d94e80a6', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:49:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('b6533b53a1a5178ff6020d7ee1a7d963', 2020, 7, 17, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010022, parentId=2101, name=�����м������ģ�120��, nameSimple=������120, namePy=SYSJJZX120, nameWb=null, type=J01, grade=3, code=21010022, sort=22, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:00:19', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2633079fb225ae59c12cc6e41cd8d965', 2020, 7, 17, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010021, parentId=2101, name=����������Ѫվ, nameSimple=����������Ѫվ, namePy=SYSZXXZ, nameWb=null, type=J02, grade=3, code=21010021, sort=21, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('17-07-2020 09:01:10', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('e7877190c3abf80e916aa8ced454e48f', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=2101, parentId=, name=�����������뽡��ίԱ��, nameSimple=����������ί, namePy=null, nameWb=null, type=J02, grade=2, code=2101, sort=0, relationName=null, relationPhone1=null, relationPhone2=null, relationMobile=null, relationAddress=null)]', '3', '01', to_date('16-07-2020 17:26:39', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('a8c124e120814118f33b03b44dccf0d2', 2020, 7, 16, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('16-07-2020 17:42:56', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('5c3b136843518ffba0748b243243907a', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010002, parentId=2101, name=�����е�������ҽԺ, nameSimple=�����е�������ҽԺ, namePy=null, nameWb=null, type=Y12, grade=3, code=21010002, sort=4, relationName=������, relationPhone1=024-86862514, relationPhone2=null, relationMobile=null, relationAddress=�����лʹ����ƺ��ϴ��20��)]', '3', '01', to_date('16-07-2020 17:43:37', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('4fa79c7b91b4999885f247b55e3feaf6', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010006, parentId=2101, name=����ҽѧԺ��������ҽԺ, nameSimple=����ҽѧԺ��������ҽԺ, namePy=null, nameWb=null, type=Y12, grade=3, code=21010006, sort=8, relationName=null, relationPhone1=18002478215, relationPhone2=null, relationMobile=18002478215, relationAddress=�����лʹ��������Ͻ�6��6����)]', '3', '01', to_date('16-07-2020 17:44:23', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('ce4483020bcde62b949e34bd818005b7', 2020, 7, 16, 'admin', '�޸Ļ���������Ϣ', 'com.zhixiang.health.modules.sys.api.SysDeptApi.updateById', 'http://localhost:8280/sys/dept/update', 'PUT', '[SysDept(id=21010008, parentId=2101, name=�����е�ʮ����ҽԺ, nameSimple=�����е�ʮ����ҽԺ, namePy=null, nameWb=0, type=Y12, grade=3, code=21010008, sort=10, relationName=�ž�, relationPhone1=024-88324551, relationPhone2=null, relationMobile=null, relationAddress=�����д���������11��)]', '3', '01', to_date('16-07-2020 17:44:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2f8feda342a8270fdd479e4f15e060f2', 2020, 7, 17, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:27:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1c92689a57780545c89a9aa5ab6a42e0', 2020, 7, 17, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:29:55', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('77d90ba37e5f7ec58a1c6644b410605d', 2020, 7, 17, 'admin', '�鿴�û��б�', 'com.zhixiang.health.modules.sys.api.SysUserApi.page', 'http://localhost:8280/sys/user/page', 'GET', '[SysUserSearchParam(roleId=, deptId=, pageSize=20, current=1, pageStart=1, pageEnd=20)]', '1', '01', to_date('17-07-2020 08:30:30', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into LOG_HANDLE (id, year, month, day, user_name, detail, method, url, http_type, args, event_type, module_type, create_date, create_by, update_date, update_by, remark, delete_state)
values ('d36a894289087706ef4f2fd566e39092', 2020, 7, 17, 'admin', '�鿴��ɫ�б�', 'com.zhixiang.health.modules.sys.api.SysRoleApi.list', 'http://localhost:8280/sys/role/list', 'GET', '[]', '1', '01', to_date('17-07-2020 08:34:54', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 48 records loaded
prompt Loading LOG_LOGIN...
insert into LOG_LOGIN (id, year, month, day, user_name, result, code, message, create_date, create_by, update_date, update_by, remark, delete_state)
values ('8819579db04611da7e71774c285271e4', 2020, 7, 17, 'admin', '1', 200, '��½�ɹ�', to_date('17-07-2020 08:24:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into LOG_LOGIN (id, year, month, day, user_name, result, code, message, create_date, create_by, update_date, update_by, remark, delete_state)
values ('0e821cc41334ee8e06f3b951392beb4d', 2020, 7, 16, 'admin', '1', 200, '��½�ɹ�', to_date('16-07-2020 16:59:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
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
values ('10', '���뵼���û�Ȩ��', 'auth_sys_user', '/sys/user/save', '2', to_date('14-07-2020 15:16:06', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
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
values ('21012211812', '210122118', '�����������ش�ڸ������żҴ�������', '��ڸ������żҴ�������', null, null, '15', 6, '21012211812', 21012211812, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211903', '210122119', '������������ţ�������ϻ��ڴ�������', 'ţ�������ϻ��ڴ�������', null, null, '15', 6, '21012211903', 21012211903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211904', '210122119', '������������ţ������ţ���Ӵ�������', 'ţ������ţ���Ӵ�������', null, null, '15', 6, '21012211904', 21012211904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211905', '210122119', '������������ţ������ܼҴ�������', 'ţ������ܼҴ�������', null, null, '15', 6, '21012211905', 21012211905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211906', '210122119', '������������ţ������ţ�����������', 'ţ������ţ�����������', null, null, '15', 6, '21012211906', 21012211906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211908', '210122119', '������������ţ�������������������', 'ţ�������������������', null, null, '15', 6, '21012211908', 21012211908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211909', '210122119', '������������ţ������С�ڸڴ�������', 'ţ������С�ڸڴ�������', null, null, '15', 6, '21012211909', 21012211909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211910', '210122119', '������������ţ��������������������', 'ţ��������������������', null, null, '15', 6, '21012211910', 21012211910, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211911', '210122119', '������������ţ����������ڴ�������', 'ţ����������ڴ�������', null, null, '15', 6, '21012211911', 21012211911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210101', '210122101', '�������������ڼҷ����ڼҷ�������������վ', '�ڼҷ����ڼҷ�������������վ', null, null, '15', 6, '21012210101', 21012210101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210102', '210122101', '�������������ڼҷ���������������������վ', '�ڼҷ���������������������վ', null, null, '15', 6, '21012210102', 21012210102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210103', '210122101', '�������������ڼҷ��������������', '�ڼҷ��������������', null, null, '15', 6, '21012210103', 21012210103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210104', '210122101', '�������������ڼҷ������鿲��������', '�ڼҷ������鿲��������', null, null, '15', 6, '21012210104', 21012210104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210105', '210122101', '�������������ڼҷ���߼������������', '�ڼҷ���߼������������', null, null, '15', 6, '21012210105', 21012210105, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210106', '210122101', '�������������ڼҷ�����ҷ���������', '�ڼҷ�����ҷ���������', null, null, '15', 6, '21012210106', 21012210106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210107', '210122101', '�������������ڼҷ��򻨼ҷ���������', '�ڼҷ��򻨼ҷ���������', null, null, '15', 6, '21012210107', 21012210107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210108', '210122101', '�������������ڼҷ��򺫼Ҵ�������', '�ڼҷ��򺫼Ҵ�������', null, null, '15', 6, '21012210108', 21012210108, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210109', '210122101', '�������������ڼҷ��򶸹��Ӵ�������', '�ڼҷ��򶸹��Ӵ�������', null, null, '15', 6, '21012210109', 21012210109, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210111', '210122101', '�������������ڼҷ����϶��Ӵ�������', '�ڼҷ����϶��Ӵ�������', null, null, '15', 6, '21012210111', 21012210111, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210201', '210122102', '��������������ҷ�����ҷ���������վ', '��ҷ�����ҷ���������վ', null, null, '15', 6, '21012210201', 21012210201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210202', '210122102', '��������������ҷ����ͷ����������վ', '��ҷ����ͷ����������վ', null, null, '15', 6, '21012210202', 21012210202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210203', '210122102', '��������������ҷ�����ҷ���������վ', '��ҷ�����ҷ���������վ', null, null, '15', 6, '21012210203', 21012210203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210204', '210122102', '��������������ҷ��������������', '��ҷ��������������', null, null, '15', 6, '21012210204', 21012210204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210205', '210122102', '��������������ҷ�������������', '��ҷ�������������', null, null, '15', 6, '21012210205', 21012210205, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210206', '210122102', '��������������ҷ�����Ӵ�������', '��ҷ�����Ӵ�������', null, null, '15', 6, '21012210206', 21012210206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210207', '210122102', '��������������ҷ����Թ���������', '��ҷ����Թ���������', null, null, '15', 6, '21012210207', 21012210207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210208', '210122102', '��������������ҷ�������������', '��ҷ�������������', null, null, '15', 6, '21012210208', 21012210208, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210210', '210122102', '��������������ҷ��������Ӵ�������', '��ҷ��������Ӵ�������', null, null, '15', 6, '21012210210', 21012210210, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210211', '210122102', '��������������ҷ����ǽ�Ӵ�������', '��ҷ����ǽ�Ӵ�������', null, null, '15', 6, '21012210211', 21012210211, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210301', '210122102', '���������������ӱ�����ǰ��������վ', '���ӱ�����ǰ��������վ', null, null, '15', 6, '21012210301', 21012210301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210302', '210122103', '���������������ӱ��������������վ', '���ӱ��������������վ', null, null, '15', 6, '21012210302', 21012210302, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210303', '210122103', '���������������ӱ����������������', '���ӱ����������������', null, null, '15', 6, '21012210303', 21012210303, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210305', '210122103', '���������������ӱ����˺ʹ�������', '���ӱ����˺ʹ�������', null, null, '15', 6, '21012210305', 21012210305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210306', '210122103', '���������������ӱ��������������', '���ӱ��������������', null, null, '15', 6, '21012210306', 21012210306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210307', '210122103', '���������������ӱ���ƶ���������', '���ӱ���ƶ���������', null, null, '15', 6, '21012210307', 21012210307, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210308', '210122103', '���������������ӱ��������������', '���ӱ��������������', null, null, '15', 6, '21012210308', 21012210308, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210313', '210122103', '���������������ӱ�����Ҵ�������', '���ӱ�����Ҵ�������', null, null, '15', 6, '21012210313', 21012210313, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210314', '210122103', '���������������ӱ���æǰ��������', '���ӱ���æǰ��������', null, null, '15', 6, '21012210314', 21012210314, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210315', '210122103', '���������������ӱ���æ���������', '���ӱ���æ���������', null, null, '15', 6, '21012210315', 21012210315, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210316', '210122103', '���������������ӱ�����ʿ��������', '���ӱ�����ʿ��������', null, null, '15', 6, '21012210316', 21012210316, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210317', '210122103', '���������������ӱ���ųǴ�������', '���ӱ���ųǴ�������', null, null, '15', 6, '21012210317', 21012210317, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210910', '210122109', '������������Фկ����ɳ����������', 'Фկ����ɳ����������', null, null, '15', 6, '21012210910', 21012210910, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211202', '210122112', '�����������سǽ���˫ɽ�Ӵ�������', '�ǽ���˫ɽ�Ӵ�������', null, null, '15', 6, '21012211202', 21012211202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211206', '210122112', '�����������سǽ����Ž��������', '�ǽ����Ž��������', null, null, '15', 6, '21012211206', 21012211206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211210', '210122112', '�����������سǽ����ϼҴ�������', '�ǽ����ϼҴ�������', null, null, '15', 6, '21012211210', 21012211210, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211306', '210122113', '���������������䷿��²˸��Ӵ�������', '���䷿��²˸��Ӵ�������', null, null, '15', 6, '21012211306', 21012211306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211310', '210122113', '���������������䷿�����Ҵ�������', '���䷿�����Ҵ�������', null, null, '15', 6, '21012211310', 21012211310, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211315', '210122113', '���������������䷿���������������', '���䷿���������������', null, null, '15', 6, '21012211315', 21012211315, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211403', '210122114', '��������������ʿ���������������', '��ʿ���������������', null, null, '15', 6, '21012211403', 21012211403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211407', '210122114', '��������������ʿ����׼Ҹڴ�������', '��ʿ����׼Ҹڴ�������', null, null, '15', 6, '21012211407', 21012211407, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211506', '210122115', '�������������˼ұ���̲��ִ�������', '�˼ұ���̲��ִ�������', null, null, '15', 6, '21012211506', 21012211506, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122100', '210122', '�����������ֵ�������������', '�����ֵ�������������', null, null, '04', 5, '210122100', 210122100, null, null, null, null, '����������', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122113', '210122', '���������䷿������Ժ', '���������䷿������Ժ', null, null, '04', 5, '210122113', 210122113, null, null, null, null, '�������䷿��', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400101', '210104001', '����С������������ͥҽ���Ŷ�', '����С������������ͥҽ���Ŷ�', null, null, '15', 6, '21010400101', 21010400101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113017', '210113', '�򱱽ֵ�', '�򱱽ֵ�', null, null, '04', 5, '210113017', 210113017, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211707', '210122117', '�������������ϴ����ϼҴ�������', '�ϴ����ϼҴ�������', null, null, '15', 6, '21012211707', 21012211707, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211501', '210122115', '�������������˼ұ����˼ұ���������', '�˼ұ����˼ұ���������', null, null, '15', 6, '21012211501', 21012211501, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211602', '210122116', '�������������Ϲ������ڴ�������', '�Ϲ������ڴ�������', null, null, '15', 6, '21012211602', 21012211602, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211703', '210122117', '�������������ϴ����ϴ󷿴�������', '�ϴ����ϴ󷿴�������', null, null, '15', 6, '21012211703', 21012211703, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211710', '210122117', '�������������ϴ������ִ�������', '�ϴ������ִ�������', null, null, '15', 6, '21012211710', 21012211710, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211804', '210122118', '�����������ش�ڸ����緽�Ҹ��Ӵ�������', '��ڸ����緽�Ҹ��Ӵ�������', null, null, '15', 6, '21012211804', 21012211804, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211702', '210122117', '�������������ϴ���߼Ҵ�������', '�ϴ���߼Ҵ�������', null, null, '15', 6, '21012211702', 21012211702, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210023', '210122100', '������������������������������', '������������������', null, null, '15', 6, '21012210023', 21012210023, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210602', '210122106', '�����������ش�������Ʊ���������', '��������Ʊ���������', null, null, '15', 6, '21012210602', 21012210602, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210609', '210122106', '�����������ش��������һ������������վ', '���������һ������������վ', null, null, '15', 6, '21012210609', 21012210609, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210614', '210122106', '�����������ش�������ǰ�����������', '��������ǰ�����������', null, null, '15', 6, '21012210614', 21012210614, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210619', '210122106', '�����������ش����������������������վ', '�����������������������վ', null, null, '15', 6, '21012210619', 21012210619, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210706', '210122107', '��������������������Ѻţ�ִ�������', '��������Ѻţ�ִ�������', null, null, '15', 6, '21012210706', 21012210706, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210804', '210122108', '��������������ʿ������ʿ��������������վ', '��ʿ������ʿ��������������վ', null, null, '15', 6, '21012210804', 21012210804, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210209', '210122102', '��������������ҷ����ͷ����������', '��ҷ����ͷ����������', null, null, '15', 6, '21012210209', 21012210209, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210304', '210122103', '���������������ӱ����ɽ����������', '���ӱ����ɽ����������', null, null, '15', 6, '21012210304', 21012210304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210312', '210122103', '���������������ӱ�����Ӹڴ�������', '���ӱ�����Ӹڴ�������', null, null, '15', 6, '21012210312', 21012210312, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210905', '210122109', '������������Фկ����Ф��������������վ', 'Фկ����Ф��������������վ', null, null, '15', 6, '21012210905', 21012210905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220102', '210122201', '����������������������������', '����������������', null, null, '15', 6, '21012220102', 21012220102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220107', '210122201', '���������������������ĵش�������', '���������ĵش�������', null, null, '15', 6, '21012220107', 21012220107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211907', '210122119', '������������ţ�������������������', 'ţ�������������������', null, null, '15', 6, '21012211907', 21012211907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211912', '210122119', '������������ţ�����������״�������', 'ţ�����������״�������', null, null, '15', 6, '21012211912', 21012211912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211502', '210122115', '�������������˼ұ����żҴ�������', '�˼ұ����żҴ�������', null, null, '15', 6, '21012211502', 21012211502, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300801', '210103008', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300801', 21010300801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300805', '210103008', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300805', 21010300805, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010024', '2101', '�����������ල��', '�����������ල��', 'SYSWSJDS', null, '02', 3, '21010024', 24, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181106', '210181', '�����д���������������Ժ', '�����д���������������Ժ', null, null, '04', 5, '210181106', 210181106, null, null, null, null, '�����д�������', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110507', '210111105', '�������ռ�����ʮ��ӽֵ�ʮ��Ӵ�������', 'ʮ��ӽֵ�ʮ��Ӵ�������', null, null, '15', 6, '21011110507', 21011110507, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100717', '210111007', '�������ռ�������ʢ�ֵ�ʷ����������', '��ʢ�ֵ�ʷ����������', null, null, '15', 6, '21011100717', 21011100717, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100405', '210111004', '�������ռ������ٺ��ֵ�����������������վ', '�ٺ��ֵ�����������������վ', null, null, '15', 6, '21011100405', 21011100405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100505', '210111005', '�������ռ��������˽ֵ��ռ��ͱ�������������վ', '���˽ֵ��ռ��ͱ�������������վ', null, null, '15', 6, '21011100505', 21011100505, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100406', '210111004', '�������ռ������ٺ��ֵ����Ҵ�ڶ�������', '�ٺ��ֵ����Ҵ�ڶ�������', null, null, '15', 6, '21011100406', 21011100406, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100712', '210111007', '�������ռ�������ʢ�ֵ���ʢ���һ������', '��ʢ�ֵ���ʢ���һ������', null, null, '15', 6, '21011100712', 21011100712, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100214', '210111002', '�������ռ���������ֵ�С�´�������', '����ֵ�С�´�������', null, null, '15', 6, '21011100214', 21011100214, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112016', '210112', '�����������������Ժ', '�����������Ժ', null, null, '04', 5, '210112016', 210112016, null, null, null, null, '����ʡ�����л�������ӽֵ���Ӵ�', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400501', '210114005', '�������ں����ں�ֵ����������������վ', '�ں�ֵ����������������վ', null, null, '15', 6, '21011400501', 21011400501, null, null, null, null, '�ں�������ٶ�ƽ����36-11��', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210403', '210122104', '�������������������򱱳��ٸ�������������վ', '�������򱱳��ٸ�������������վ', null, null, '15', 6, '21012210403', 21012210403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210615', '210122106', '�����������ش����������������������վ', '�����������������������վ', null, null, '15', 6, '21012210615', 21012210615, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211902', '210122119', '������������ţ�������������������', 'ţ�������������������', null, null, '15', 6, '21012211902', 21012211902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210110', '210122101', '�������������ڼҷ��򷶼������������', '�ڼҷ��򷶼������������', null, null, '15', 6, '21012210110', 21012210110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110601', '210111106', '�������ռ�������Ժ������', '�ռ�������Ժ������', null, null, '15', 6, '21011110601', 21011110601, null, null, null, null, '�������ռ��������������ɽ·27��', to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501404', '210105014', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501404', 21010501404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501113', '210105011', '�����˿�', '�����˿�', null, null, '15', 6, '21010501113', 21010501113, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211604', '210122116', '�������������Ϲ�����Ф�����������', '�Ϲ�����Ф�����������', null, null, '15', 6, '21012211604', 21012211604, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211711', '210122117', '�������������ϴ����ɽ��������', '�ϴ����ɽ��������', null, null, '15', 6, '21012211711', 21012211711, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 100 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501603', '210105016', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501603', 21010501603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105006', '210105', '��������������������', '��������������������', null, null, '04', 5, '210105006', 210105006, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500702', '210105007', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500702', 21010500702, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500907', '210105009', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500907', 21010500907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105011', '210105', '��������������������', '��������������������', null, null, '04', 5, '210105011', 210105011, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501107', '210105011', '�������������Ŷ�', '�������������Ŷ�', null, null, '15', 6, '21010501107', 21010501107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105013', '210105', '®ɽ������������վ', '®ɽ������������վ', null, null, '04', 5, '210105013', 210105013, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105010', '210105', '��������������������', '��������������������', null, null, '04', 5, '210105010', 210105010, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501119', '210105011', '���ǩԼһ�Ŷ�', '���ǩԼһ�Ŷ�', null, null, '15', 6, '21010501119', 21010501119, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500107', '210105001', '�������Ŷ�', '�������Ŷ�', null, null, '15', 6, '21010500107', 21010500107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500202', '210105002', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500202', 21010500202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500304', '210105003', '�Ӻ������Ŷ�', '�Ӻ������Ŷ�', null, null, '15', 6, '21010500304', 21010500304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500503', '210105005', '��ˮ�����Ŷ�', '��ˮ�����Ŷ�', null, null, '15', 6, '21010500503', 21010500503, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500606', '210105006', '���������Ŷ���', '���������Ŷ���', null, null, '15', 6, '21010500606', 21010500606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500701', '210105007', '��ʤ�����Ŷ�', '��ʤ�����Ŷ�', null, null, '15', 6, '21010500701', 21010500701, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500901', '210105009', '���Ⱥ��Ŷ�', '���Ⱥ��Ŷ�', null, null, '15', 6, '21010500901', 21010500901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501002', '210105010', 'վ���Ŷ�', 'վ���Ŷ�', null, null, '15', 6, '21010501002', 21010501002, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501010', '210105010', '��Ժ�Ŷ�', '��Ժ�Ŷ�', null, null, '15', 6, '21010501010', 21010501010, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501114', '210105011', 'ǩԼһ�Ŷ�', 'ǩԼһ�Ŷ�', null, null, '15', 6, '21010501114', 21010501114, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501123', '210105011', '���ǩԼ���Ŷ�', '���ǩԼ���Ŷ�', null, null, '15', 6, '21010501123', 21010501123, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501401', '210105014', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501401', 21010501401, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105001', '210105', '��������������������', '��������������������', null, null, '04', 5, '210105001', 210105001, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500703', '210105007', '��¡�����Ŷ�', '��¡�����Ŷ�', null, null, '15', 6, '21010500703', 21010500703, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500705', '210105007', '�鶫�����Ŷ�', '�鶫�����Ŷ�', null, null, '15', 6, '21010500705', 21010500705, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501007', '210105010', '��¥�Ŷ�', '��¥�Ŷ�', null, null, '15', 6, '21010501007', 21010501007, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501003', '210105010', 'վ���Ŷ�', 'վ���Ŷ�', null, null, '15', 6, '21010501003', 21010501003, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500103', '210105001', '�ɺ��Ŷ�', '�ɺ��Ŷ�', null, null, '15', 6, '21010500103', 21010500103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501106', '210105011', '���ĺ��Ŷ� ', '���ĺ��Ŷ� ', null, null, '15', 6, '21010501106', 21010501106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501110', '210105011', '̩�������Ŷ�', '̩�������Ŷ�', null, null, '15', 6, '21010501110', 21010501110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500904', '210105009', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500904', 21010500904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501602', '210105016', '÷�����Ŷ�', '÷�����Ŷ�', null, null, '15', 6, '21010501602', 21010501602, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105016', '210105', '�������Ķ�ҽԺ', '�������Ķ�ҽԺ', null, null, '04', 5, '210105016', 210105016, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501122', '210105011', '���ǩԼ���Ŷ�', '���ǩԼ���Ŷ�', null, null, '15', 6, '21010501122', 21010501122, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501115', '210105011', 'ǩԼ���Ŷ�', 'ǩԼ���Ŷ�', null, null, '15', 6, '21010501115', 21010501115, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500505', '210105005', '��ˮ�����Ŷ�', '��ˮ�����Ŷ�', null, null, '15', 6, '21010500505', 21010500505, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500104', '210105001', '��·���Ŷ�', '��·���Ŷ�', null, null, '15', 6, '21010500104', 21010500104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500706', '210105007', '�˻������Ŷ�', '�˻������Ŷ�', null, null, '15', 6, '21010500706', 21010500706, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500501', '210105005', '����������ҽ���Ŷ�', '����������ҽ���Ŷ�', null, null, '15', 6, '21010500501', 21010500501, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500106', '210105001', '��һ�Ŷ�', '��һ�Ŷ�', null, null, '15', 6, '21010500106', 21010500106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500801', '210105008', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500801', 21010500801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501103', '210105011', '����', '����', null, null, '15', 6, '21010501103', 21010501103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500902', '210105009', '��լ�Ŷ�', '��լ�Ŷ�', null, null, '15', 6, '21010500902', 21010500902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501111', '210105011', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010501111', 21010501111, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500908', '210105009', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500908', 21010500908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500608', '210105006', '���������ŶӰ�', '���������ŶӰ�', null, null, '15', 6, '21010500608', 21010500608, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501601', '210105016', '��ɽ�Ŷ�', '��ɽ�Ŷ�', null, null, '15', 6, '21010501601', 21010501601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501117', '210105011', 'ǩԼ���Ŷ�', 'ǩԼ���Ŷ�', null, null, '15', 6, '21010501117', 21010501117, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501121', '210105011', '���ǩԼ���Ŷ�', '���ǩԼ���Ŷ�', null, null, '15', 6, '21010501121', 21010501121, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500603', '210105006', '���������Ŷ���', '���������Ŷ���', null, null, '15', 6, '21010500603', 21010500603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500402', '210105004', '���꽭�Ŷ�', '���꽭�Ŷ�', null, null, '15', 6, '21010500402', 21010500402, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501004', '210105010', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501004', 21010501004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501204', '210105012', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501204', 21010501204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500306', '210105003', '�����������Ŷ�', '�����������Ŷ�', null, null, '15', 6, '21010500306', 21010500306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500502', '210105005', '��ˮ�����Ŷ�', '��ˮ�����Ŷ�', null, null, '15', 6, '21010500502', 21010500502, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500809', '210105008', '��ȪԤ����', '��ȪԤ����', null, null, '15', 6, '21010500809', 21010500809, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501604', '210105016', 'ĵ���Ŷ�', 'ĵ���Ŷ�', null, null, '15', 6, '21010501604', 21010501604, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201405', '210112014', '�������߿����������������ľ�վ����', '��վ����', null, null, '04', 5, '21011201405', 21011201405, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201406', '210112014', '�������߿������������������߼䷿����', '�߼䷿����', null, null, '04', 5, '21011201406', 21011201406, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201407', '210112014', '�������߿������������������ʾ�����', '�ʾ�����', null, null, '04', 5, '21011201407', 21011201407, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201408', '210112014', '�������߿�������������������������', '��������', null, null, '04', 5, '21011201408', 21011201408, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201409', '210112014', '�������߿��������������������ʾ�����', '���ʾ�����', null, null, '04', 5, '21011201409', 21011201409, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201410', '210112014', '�������߿�������������������¡����', '��¡����', null, null, '04', 5, '21011201410', 21011201410, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201411', '210112014', '�������߿�������������������������', '��������', null, null, '04', 5, '21011201411', 21011201411, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201501', '210112015', '��������������Ժ���ýֵ�������������', '���ýֵ�������������', null, null, '04', 5, '21011201501', 21011201501, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201502', '210112015', '��������������Ժ���ýֵ����ô�������', '���ýֵ����ô�������', null, null, '04', 5, '21011201502', 21011201502, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201503', '210112015', '��������������Ժ���ýֵ����ʹ�������', '���ýֵ����ʹ�������', null, null, '04', 5, '21011201503', 21011201503, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201601', '210112016', '�������������Ժ��ӽֵ���̨������˫������', '��ӽֵ���̨������˫������', null, null, '04', 5, '21011201601', 21011201601, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201602', '210112016', '�������������Ժ��ӽֵ�����կ������������վ', '��ӽֵ�����կ������������վ', null, null, '04', 5, '21011201602', 21011201602, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201603', '210112016', '�������������Ժ��ӽֵ�����կ������������', '��ӽֵ�����կ������������', null, null, '04', 5, '21011201603', 21011201603, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201604', '210112016', '�������������Ժ��ӽֵ����ʤ�ź�ΰ������', '��ӽֵ����ʤ�ź�ΰ������', null, null, '04', 5, '21011201604', 21011201604, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201605', '210112016', '�������������Ժ��ӽֵ������������������', '��ӽֵ������������������', null, null, '04', 5, '21011201605', 21011201605, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201606', '210112016', '�������������Ժ��ӽֵ�����������������վ', '��ӽֵ�����������������վ', null, null, '04', 5, '21011201606', 21011201606, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201607', '210112016', '�������������Ժ��ӽֵ�����������������վ', '��ӽֵ�����������������վ', null, null, '04', 5, '21011201607', 21011201607, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201608', '210112016', '�������������Ժ��ӽֵ�����������������', '��ӽֵ�����������������', null, null, '04', 5, '21011201608', 21011201608, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201609', '210112016', '�������������Ժ��ӽֵ�����������������', '��ӽֵ�����������������', null, null, '04', 5, '21011201609', 21011201609, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201610', '210112016', '�������������Ժ��ӽֵ�Ⱥ��������������վ', '��ӽֵ�Ⱥ��������������վ', null, null, '04', 5, '21011201610', 21011201610, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201611', '210112016', '�������������Ժ��ӽֵ����������������վ', '��ӽֵ����������������վ', null, null, '04', 5, '21011201611', 21011201611, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201612', '210112016', '�������������Ժ��ӽֵ�������̨��������', '��ӽֵ�������̨��������', null, null, '04', 5, '21011201612', 21011201612, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201613', '210112016', '�������������Ժ��ӽֵ��������Ҵ�������', '��ӽֵ��������Ҵ�������', null, null, '04', 5, '21011201613', 21011201613, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201614', '210112016', '�������������Ժ��ӽֵ�˫���Ӵ�Ԭ����������', '��ӽֵ�˫���Ӵ�Ԭ����������', null, null, '04', 5, '21011201614', 21011201614, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201615', '210112016', '�������������Ժ��ӽֵ�˫����������������վ', '��ӽֵ�˫����������������վ', null, null, '04', 5, '21011201615', 21011201615, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201616', '210112016', '�������������Ժ��ӽֵ�����ɽ������������վ', '��ӽֵ�����ɽ������������վ', null, null, '04', 5, '21011201616', 21011201616, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201617', '210112016', '�������������Ժ��ӽֵ�����������������վ', '��ӽֵ�����������������վ', null, null, '04', 5, '21011201617', 21011201617, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201701', '210112017', '������ף����������Ժף�ҽֵ�����կ������������վ', 'ף�ҽֵ�����կ������������վ', null, null, '04', 5, '21011201701', 21011201701, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201702', '210112017', '������ף����������Ժף�ҽֵ�������������', 'ף�ҽֵ�������������', null, null, '04', 5, '21011201702', 21011201702, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201703', '210112017', '������ף����������Ժף�ҽֵ��μҴ�������', 'ף�ҽֵ��μҴ�������', null, null, '04', 5, '21011201703', 21011201703, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201704', '210112017', '������ף����������Ժף�ҽֵ��߰�կ������������վ', 'ף�ҽֵ��߰�կ������������վ', null, null, '04', 5, '21011201704', 21011201704, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201705', '210112017', '������ף����������Ժף�ҽֵ���ţ������������վ', 'ף�ҽֵ���ţ������������վ', null, null, '04', 5, '21011201705', 21011201705, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201706', '210112017', '������ף����������Ժף�ҽֵ�������������������վ', 'ף�ҽֵ�������������������վ', null, null, '04', 5, '21011201706', 21011201706, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201707', '210112017', '������ף����������Ժף�ҽֵ���������������������վ', 'ף�ҽֵ���������������������վ', null, null, '04', 5, '21011201707', 21011201707, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201708', '210112017', '������ף����������Ժף�ҽֵ���ݹ�������������վ', 'ף�ҽֵ���ݹ�������������վ', null, null, '04', 5, '21011201708', 21011201708, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201709', '210112017', '������ף����������Ժף�ҽֵ�ɳ����������������վ', 'ף�ҽֵ�ɳ����������������վ', null, null, '04', 5, '21011201709', 21011201709, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201710', '210112017', '������ף����������Ժף�ҽֵ�ɽ����������������վ', 'ף�ҽֵ�ɽ����������������վ', null, null, '04', 5, '21011201710', 21011201710, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201711', '210112017', '������ף����������Ժף�ҽֵ��ϸ�ʿ������������վ', 'ף�ҽֵ��ϸ�ʿ������������վ', null, null, '04', 5, '21011201711', 21011201711, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201712', '210112017', '������ף����������Ժף�ҽֵ������������������վ', 'ף�ҽֵ������������������վ', null, null, '04', 5, '21011201712', 21011201712, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201713', '210112017', '������ף����������Ժף�ҽֵ��¸�ʿ������������վ', 'ף�ҽֵ��¸�ʿ������������վ', null, null, '04', 5, '21011201713', 21011201713, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201714', '210112017', '������ף����������Ժף�ҽֵ���¥��������������վ', 'ף�ҽֵ���¥��������������վ', null, null, '04', 5, '21011201714', 21011201714, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201715', '210112017', '������ף����������Ժף�ҽֵ�����������������վ', 'ף�ҽֵ�����������������վ', null, null, '04', 5, '21011201715', 21011201715, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201716', '210112017', '������ף����������Ժף�ҽֵ�ף�Ҵ�������������վ', 'ף�ҽֵ�ף�Ҵ�������������վ', null, null, '04', 5, '21011201716', 21011201716, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201717', '210112017', '������ף����������Ժף�ҽֵ�ף��������������վ', 'ף�ҽֵ�ף��������������վ', null, null, '04', 5, '21011201717', 21011201717, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 200 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201718', '210112017', '������ף����������Ժף�ҽֵ�١����������������վ', 'ף�ҽֵ�١����������������վ', null, null, '04', 5, '21011201718', 21011201718, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220104', '210122201', '����������������������ʹ�������', '����������ʹ�������', null, null, '15', 6, '21012220104', 21012220104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220105', '210122201', '����������������������ʹ�������', '����������ʹ�������', null, null, '15', 6, '21012220105', 21012220105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220106', '210122201', '�����������������򶫻ĵش�������', '�����򶫻ĵش�������', null, null, '15', 6, '21012220106', 21012220106, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220108', '210122201', '���������������������Ӫ��������', '���������Ӫ��������', null, null, '15', 6, '21012220108', 21012220108, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220109', '210122201', '���������������������Ҵ�������', '���������Ҵ�������', null, null, '15', 6, '21012220109', 21012220109, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220110', '210122201', '��������������������ʹ�������', '��������ʹ�������', null, null, '15', 6, '21012220110', 21012220110, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210401', '210122103', '������������������������������������վ', '������������������������վ', null, null, '15', 6, '21012210401', 21012210401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210402', '210122104', '������������������������������������վ', '������������������������վ', null, null, '15', 6, '21012210402', 21012210402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210404', '210122104', '��������������������Ƥ�ұ���������', '��������Ƥ�ұ���������', null, null, '15', 6, '21012210404', 21012210404, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210405', '210122104', '��������������������ľ���ڴ�������', '��������ľ���ڴ�������', null, null, '15', 6, '21012210405', 21012210405, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210406', '210122104', '���������������������ѺӴ�������', '���������ѺӴ�������', null, null, '15', 6, '21012210406', 21012210406, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210407', '210122104', '���������������������������ߴ�������', '���������������ߴ�������', null, null, '15', 6, '21012210407', 21012210407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210409', '210122104', '�������������������򶫸ߴ�������', '�������򶫸ߴ�������', null, null, '15', 6, '21012210409', 21012210409, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210410', '210122104', '�����������������������ڴ�������', '�����������ڴ�������', null, null, '15', 6, '21012210410', 21012210410, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210411', '210122104', '�������������������򶡼ҸߵǴ�������', '�������򶡼ҸߵǴ�������', null, null, '15', 6, '21012210411', 21012210411, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210412', '210122104', '�����������������������ߴ�������', '�����������ߴ�������', null, null, '15', 6, '21012210412', 21012210412, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210413', '210122104', '���������������������ڴ�������', '���������ڴ�������', null, null, '15', 6, '21012210413', 21012210413, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210601', '210122106', '�����������ش���������ϴ�������', '����������ϴ�������', null, null, '15', 6, '21012210601', 21012210601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210603', '210122106', '�����������ش����������������������վ', '�����������������������վ', null, null, '15', 6, '21012210603', 21012210603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210605', '210122106', '�����������ش��������Կܴ�������', '���������Կܴ�������', null, null, '15', 6, '21012210605', 21012210605, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210606', '210122106', '�����������ش�������̫ƽ��������', '��������̫ƽ��������', null, null, '15', 6, '21012210606', 21012210606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210607', '210122106', '�����������ش��������������������', '���������������������', null, null, '15', 6, '21012210607', 21012210607, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210608', '210122106', '�����������ش�������С������������', '��������С������������', null, null, '15', 6, '21012210608', 21012210608, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210610', '210122106', '�����������ش�������ڶ�������������վ', '��������ڶ�������������վ', null, null, '15', 6, '21012210610', 21012210610, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210611', '210122106', '�����������ش�������ƫ���Ӵ�������', '��������ƫ���Ӵ�������', null, null, '15', 6, '21012210611', 21012210611, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210612', '210122106', '�����������ش�����������������', '������������������', null, null, '15', 6, '21012210612', 21012210612, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210613', '210122106', '�����������ش����������������������վ', '�����������������������վ', null, null, '15', 6, '21012210613', 21012210613, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210616', '210122106', '�����������ش������������������', '�������������������', null, null, '15', 6, '21012210616', 21012210616, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210617', '210122106', '�����������ش�������ǰ���������', '��������ǰ���������', null, null, '15', 6, '21012210617', 21012210617, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210618', '210122106', '�����������ش���������ɽ��������', '����������ɽ��������', null, null, '15', 6, '21012210618', 21012210618, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210701', '210122107', '������������������������������������վ', '������������������������վ', null, null, '15', 6, '21012210701', 21012210701, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210702', '210122107', '��������������������ų��Ӵ�������', '��������ų��Ӵ�������', null, null, '15', 6, '21012210702', 21012210702, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210703', '210122107', '������������������������������������վ', '������������������������վ', null, null, '15', 6, '21012210703', 21012210703, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210704', '210122107', '������������������������ʹ�������', '������������ʹ�������', null, null, '15', 6, '21012210704', 21012210704, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210705', '210122107', '������������������������Ѵ�������', '������������Ѵ�������', null, null, '15', 6, '21012210705', 21012210705, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210708', '210122107', '�����������������������Ҵ�������', '�����������Ҵ�������', null, null, '15', 6, '21012210708', 21012210708, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210801', '210122108', '��������������ʿ����ɽ�ʹ�������', '��ʿ����ɽ�ʹ�������', null, null, '15', 6, '21012210801', 21012210801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210802', '210122108', '��������������ʿ������������������', '��ʿ������������������', null, null, '15', 6, '21012210802', 21012210802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210803', '210122108', '��������������ʿ�����ӻ���������������վ', '��ʿ�����ӻ���������������վ', null, null, '15', 6, '21012210803', 21012210803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210805', '210122108', '��������������ʿ������˱���������', '��ʿ������˱���������', null, null, '15', 6, '21012210805', 21012210805, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210806', '210122108', '��������������ʿ�����ϰ�Ҥ��������', '��ʿ�����ϰ�Ҥ��������', null, null, '15', 6, '21012210806', 21012210806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210808', '210122108', '��������������ʿ���������������', '��ʿ���������������', null, null, '15', 6, '21012210808', 21012210808, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211808', '210122118', '�����������ش�ڸ�������Ҹ��Ӵ�������', '��ڸ�������Ҹ��Ӵ�������', null, null, '15', 6, '21012211808', 21012211808, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211809', '210122118', '�����������ش�ڸ�����Ǯ���������', '��ڸ�����Ǯ���������', null, null, '15', 6, '21012211809', 21012211809, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211810', '210122118', '�����������ش�ڸ�������ũ��������', '��ڸ�������ũ��������', null, null, '15', 6, '21012211810', 21012211810, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211811', '210122118', '�����������ش�ڸ�����Ӫ�Ǵ�������', '��ڸ�����Ӫ�Ǵ�������', null, null, '15', 6, '21012211811', 21012211811, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501138', '210105011', '�������������������Ŷ�', '�������������������Ŷ�', null, null, '15', 6, '21010501138', 21010501138, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501139', '210105011', '�������������������Ŷ�', '�������������������Ŷ�', null, null, '15', 6, '21010501139', 21010501139, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501140', '210105011', '����ѧ�Ŷ�', '����ѧ�Ŷ�', null, null, '15', 6, '21010501140', 21010501140, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501141', '210105011', '�ɴ������Ŷ�', '�ɴ������Ŷ�', null, null, '15', 6, '21010501141', 21010501141, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501142', '210105011', '������������������Ŷ�', '������������������Ŷ�', null, null, '15', 6, '21010501142', 21010501142, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501143', '210105011', '¼��', '¼��', null, null, '15', 6, '21010501143', 21010501143, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501144', '210105011', '����������������ʮ�Ŷ�', '����������������ʮ�Ŷ�', null, null, '15', 6, '21010501144', 21010501144, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210810', '210122108', '��������������ʿ������ɽ��������', '��ʿ������ɽ��������', null, null, '15', 6, '21012210810', 21012210810, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210901', '210122109', '������������Фկ����������������', 'Фկ����������������', null, null, '15', 6, '21012210901', 21012210901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210902', '210122109', '������������Фկ�������ϴ�������', 'Фկ�������ϴ�������', null, null, '15', 6, '21012210902', 21012210902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210903', '210122109', '������������Фկ����������������', 'Фկ����������������', null, null, '15', 6, '21012210903', 21012210903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210904', '210122109', '������������Фկ��������ִ�������', 'Фկ��������ִ�������', null, null, '15', 6, '21012210904', 21012210904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210906', '210122109', '������������Фկ�����߱���������', 'Фկ�����߱���������', null, null, '15', 6, '21012210906', 21012210906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210908', '210122109', '������������Фկ����������������', 'Фկ����������������', null, null, '15', 6, '21012210908', 21012210908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210909', '210122109', '������������Фկ����ɳ����������', 'Фկ����ɳ����������', null, null, '15', 6, '21012210909', 21012210909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210911', '210122109', '������������Фկ����Ф��������������վ', 'Фկ����Ф��������������վ', null, null, '15', 6, '21012210911', 21012210911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210912', '210122109', '������������Фկ����Ф��������������վ', 'Фկ����Ф��������������վ', null, null, '15', 6, '21012210912', 21012210912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211201', '210122112', '�����������سǽ��򸶼��ʹ�������', '�ǽ��򸶼��ʹ�������', null, null, '15', 6, '21012211201', 21012211201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211203', '210122112', '�����������سǽ��������Ӵ�������', '�ǽ��������Ӵ�������', null, null, '15', 6, '21012211203', 21012211203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211204', '210122112', '�����������سǽ����ϴ�������', '�ǽ����ϴ�������', null, null, '15', 6, '21012211204', 21012211204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211205', '210122112', '�����������سǽ��򿨱���������', '�ǽ��򿨱���������', null, null, '15', 6, '21012211205', 21012211205, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211207', '210122112', '�����������سǽ�����ţ��������', '�ǽ�����ţ��������', null, null, '15', 6, '21012211207', 21012211207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301004', '210103010', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010301004', 21010301004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301005', '210103010', '�������������ʯ������������վ', '�������ʯ������������վ', null, null, '15', 6, '21010301005', 21010301005, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301006', '210103010', '������������ร������������վ', '������ร������������վ', null, null, '15', 6, '21010301006', 21010301006, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300503', '210103005', '�����������˫·������������վ', '�����˫·������������վ', null, null, '15', 6, '21010300503', 21010300503, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300901', '210103009', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300901', 21010300901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300902', '210103009', '�����������������������������վ', '�����������������������վ', null, null, '15', 6, '21010300902', 21010300902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300903', '210103009', '����������������������������վ', '����������������������վ', null, null, '15', 6, '21010300903', 21010300903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300904', '210103009', '���������������Ӫ������������վ', '���������Ӫ������������վ', null, null, '15', 6, '21010300904', 21010300904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300905', '210103009', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300905', 21010300905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300906', '210103009', '�����������������������������վ', '�����������������������վ', null, null, '15', 6, '21010300906', 21010300906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300907', '210103009', '���������������Ӫ��������������վ', '���������Ӫ��������������վ', null, null, '15', 6, '21010300907', 21010300907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300802', '210103008', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300802', 21010300802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300803', '210103008', '��������������������������վ', '��������������������վ', null, null, '15', 6, '21010300803', 21010300803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300804', '210103008', '�������������̳������������վ', '�������̳������������վ', null, null, '15', 6, '21010300804', 21010300804, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300806', '210103008', '������������º���������������վ', '������º���������������վ', null, null, '15', 6, '21010300806', 21010300806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300807', '210103008', '�������������ҩ��������������վ', '�������ҩ��������������վ', null, null, '15', 6, '21010300807', 21010300807, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010302101', '210103021', '���������������˹������������վ', '���������˹������������վ', null, null, '15', 6, '21010302101', 21010302101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211208', '210122112', '�����������سǽ���Ф�����Ӵ�������', '�ǽ���Ф�����Ӵ�������', null, null, '15', 6, '21012211208', 21012211208, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211301', '210122113', '���������������䷿����ҷ���������', '���䷿����ҷ���������', null, null, '15', 6, '21012211301', 21012211301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211302', '210122113', '���������������䷿�����䷿��������', '���䷿�����䷿��������', null, null, '15', 6, '21012211302', 21012211302, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211304', '210122113', '���������������䷿����ʿ����������', '���䷿����ʿ����������', null, null, '15', 6, '21012211304', 21012211304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211305', '210122113', '���������������䷿����Ҵ�������', '���䷿����Ҵ�������', null, null, '15', 6, '21012211305', 21012211305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211307', '210122113', '���������������䷿��������������', '���䷿��������������', null, null, '15', 6, '21012211307', 21012211307, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211308', '210122113', '���������������䷿��������������', '���䷿��������������', null, null, '15', 6, '21012211308', 21012211308, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211309', '210122113', '���������������䷿����̨��������', '���䷿����̨��������', null, null, '15', 6, '21012211309', 21012211309, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211311', '210122113', '���������������䷿���������Ӵ�������', '���䷿���������Ӵ�������', null, null, '15', 6, '21012211311', 21012211311, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211312', '210122113', '���������������䷿�򳤸��Ӵ�������', '���䷿�򳤸��Ӵ�������', null, null, '15', 6, '21012211312', 21012211312, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211313', '210122113', '���������������䷿�򻯼��´�������', '���䷿�򻯼��´�������', null, null, '15', 6, '21012211313', 21012211313, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211314', '210122113', '���������������䷿��������������', '���䷿��������������', null, null, '15', 6, '21012211314', 21012211314, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211316', '210122113', '���������������䷿��˼��Ӵ�������', '���䷿��˼��Ӵ�������', null, null, '15', 6, '21012211316', 21012211316, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211401', '210122114', '��������������ʿ������ǰ��������', '��ʿ������ǰ��������', null, null, '15', 6, '21012211401', 21012211401, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 300 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211402', '210122114', '��������������ʿ�����ı��Ӵ�������', '��ʿ�����ı��Ӵ�������', null, null, '15', 6, '21012211402', 21012211402, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211404', '210122114', '��������������ʿ��������ݴ�������', '��ʿ��������ݴ�������', null, null, '15', 6, '21012211404', 21012211404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211405', '210122114', '��������������ʿ�����������������', '��ʿ�����������������', null, null, '15', 6, '21012211405', 21012211405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211408', '210122114', '��������������ʿ�������ʹ�������', '��ʿ�������ʹ�������', null, null, '15', 6, '21012211408', 21012211408, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211409', '210122114', '��������������ʿ����ϸ���ش�������', '��ʿ����ϸ���ش�������', null, null, '15', 6, '21012211409', 21012211409, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211410', '210122114', '��������������ʿ����������������', '��ʿ����������������', null, null, '15', 6, '21012211410', 21012211410, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211503', '210122115', '�������������˼ұ�����챤��������', '�˼ұ�����챤��������', null, null, '15', 6, '21012211503', 21012211503, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211504', '210122115', '�������������˼ұ����ڼ�̨��������', '�˼ұ����ڼ�̨��������', null, null, '15', 6, '21012211504', 21012211504, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211505', '210122115', '�������������˼ұ����ۼҴ�������', '�˼ұ����ۼҴ�������', null, null, '15', 6, '21012211505', 21012211505, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211507', '210122115', '�������������˼ұ����ϳ����Ӵ�������', '�˼ұ����ϳ����Ӵ�������', null, null, '15', 6, '21012211507', 21012211507, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211601', '210122116', '�������������Ϲ������Ϲ����������', '�Ϲ������Ϲ����������', null, null, '15', 6, '21012211601', 21012211601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211603', '210122116', '�������������Ϲ�������ϱ���������', '�Ϲ�������ϱ���������', null, null, '15', 6, '21012211603', 21012211603, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211605', '210122116', '�������������Ϲ�����˫�����������', '�Ϲ�����˫�����������', null, null, '15', 6, '21012211605', 21012211605, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211606', '210122116', '�������������Ϲ�����������������', '�Ϲ�����������������', null, null, '15', 6, '21012211606', 21012211606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211701', '210122117', '�������������ϴ����Ѽ����������', '�ϴ����Ѽ����������', null, null, '15', 6, '21012211701', 21012211701, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211704', '210122117', '�������������ϴ��綫�ʹ�������', '�ϴ��綫�ʹ�������', null, null, '15', 6, '21012211704', 21012211704, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211705', '210122117', '�������������ϴ���δ�Ҵ�������', '�ϴ���δ�Ҵ�������', null, null, '15', 6, '21012211705', 21012211705, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211706', '210122117', '�������������ϴ�������ִ�������', '�ϴ�������ִ�������', null, null, '15', 6, '21012211706', 21012211706, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211708', '210122117', '�������������ϴ���Ѻʹ�������', '�ϴ���Ѻʹ�������', null, null, '15', 6, '21012211708', 21012211708, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211709', '210122117', '�������������ϴ����Ϲ۴�������', '�ϴ����Ϲ۴�������', null, null, '15', 6, '21012211709', 21012211709, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211801', '210122118', '�����������ش�ڸ����綫�ڸ��Ӵ�������', '��ڸ����綫�ڸ��Ӵ�������', null, null, '15', 6, '21012211801', 21012211801, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211802', '210122118', '�����������ش�ڸ������Լ������������', '��ڸ������Լ������������', null, null, '15', 6, '21012211802', 21012211802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211803', '210122118', '�����������ش�ڸ������������Ӵ�������', '��ڸ������������Ӵ�������', null, null, '15', 6, '21012211803', 21012211803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211806', '210122118', '�����������ش�ڸ�����������ѱ���������', '��ڸ�����������ѱ���������', null, null, '15', 6, '21012211806', 21012211806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211807', '210122118', '�����������ش�ڸ�������ܸ��Ӵ�������', '��ڸ�������ܸ��Ӵ�������', null, null, '15', 6, '21012211807', 21012211807, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200004', '210102', '��ƽ����ӤҽԺ', '��ƽ����ӤҽԺ', 'HPQFYYY', null, '01', 4, '21010200004', 21010200004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201812', '210112018', '�������������������������İ����ֵ�����������������', '�����ֵ�����������������', null, null, '04', 5, '21011201812', 21011201812, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201813', '210112018', '�������������������������İ����ֵ���������������������վ', '�����ֵ���������������������վ', null, null, '04', 5, '21011201813', 21011201813, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201814', '210112018', '�������������������������İ����ֵ���ʯ������������վ', '�����ֵ���ʯ������������վ', null, null, '04', 5, '21011201814', 21011201814, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201815', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201815', 21011201815, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201816', '210112018', '�������������������������İ����ֵ������������������վ', '�����ֵ������������������վ', null, null, '04', 5, '21011201816', 21011201816, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201817', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201817', 21011201817, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201818', '210112018', '�������������������������İ����ֵ��ռҸ���������������վ', '�����ֵ��ռҸ���������������վ', null, null, '04', 5, '21011201818', 21011201818, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201819', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201819', 21011201819, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201820', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201820', 21011201820, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201821', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201821', 21011201821, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201822', '210112018', '�������������������������İ����ֵ������������������', '�����ֵ������������������', null, null, '04', 5, '21011201822', 21011201822, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201823', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201823', 21011201823, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201824', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201824', 21011201824, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201825', '210112018', '�������������������������İ����ֵ�С��������������վ', '�����ֵ�С��������������վ', null, null, '04', 5, '21011201825', 21011201825, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201826', '210112018', '�������������������������İ����ֵ�С�Ŷ�������������վ', '�����ֵ�С�Ŷ�������������վ', null, null, '04', 5, '21011201826', 21011201826, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200907', '210112009', '�������������������������Ķ����ֵ�ţ���ʹ�������', '�����ֵ�ţ���ʹ�������', null, null, '04', 5, '21011200907', 21011200907, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200908', '210112009', '�������������������������Ķ����ֵ�ʯ���Ӵ�������', '�����ֵ�ʯ���Ӵ�������', null, null, '04', 5, '21011200908', 21011200908, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200909', '210112009', '�������������������������Ķ����ֵ�ˮ���ʹ�������', '�����ֵ�ˮ���ʹ�������', null, null, '04', 5, '21011200909', 21011200909, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200910', '210112009', '�������������������������Ķ����ֵ�����ʹ�������', '�����ֵ�����ʹ�������', null, null, '04', 5, '21011200910', 21011200910, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200911', '210112009', '�������������������������Ķ����ֵ��������������', '�����ֵ��������������', null, null, '04', 5, '21011200911', 21011200911, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200912', '210112009', '�������������������������Ķ����ֵ�����ʹ�������', '�����ֵ�����ʹ�������', null, null, '04', 5, '21011200912', 21011200912, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200913', '210112009', '�������������������������Ķ����ֵ������������', '�����ֵ������������', null, null, '04', 5, '21011200913', 21011200913, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201001', '210112010', '�����л������������������������Ľ�ر���������������վ', '��ر���������������վ', null, null, '04', 5, '21011201001', 21011201001, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201002', '210112010', '�����л������������������������������ֵ����ʴ�������', '�����ֵ����ʴ�������', null, null, '04', 5, '21011201002', 21011201002, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201003', '210112010', '�����л������������������������������ֵ������࿲��������', '�����ֵ������࿲��������', null, null, '04', 5, '21011201003', 21011201003, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201004', '210112010', '�����л������������������������������ֵ���������������', '�����ֵ���������������', null, null, '04', 5, '21011201004', 21011201004, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201005', '210112010', '�����л������������������������������ֵ���������������������վ', '�����ֵ���������������������վ', null, null, '04', 5, '21011201005', 21011201005, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201006', '210112010', '�����л������������������������������ֵ��¼��Ӵ�������', '�����ֵ��¼��Ӵ�������', null, null, '04', 5, '21011201006', 21011201006, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201007', '210112010', '�����л������������������������������ֵ��¼���������������վ', '�����ֵ��¼���������������վ', null, null, '04', 5, '21011201007', 21011201007, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201008', '210112010', '�����л������������������������������ֵ������³�������������վ', '�����ֵ������³�������������վ', null, null, '04', 5, '21011201008', 21011201008, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201009', '210112010', '�����л������������������������������ֵ�������̨��������', '�����ֵ�������̨��������', null, null, '04', 5, '21011201009', 21011201009, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201010', '210112010', '�����л������������������������������ֵ���Ե�´�������������վ', '�����ֵ���Ե�´�������������վ', null, null, '04', 5, '21011201010', 21011201010, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201011', '210112010', '�����л������������������������������ֵ���ӱ���������', '�����ֵ���ӱ���������', null, null, '04', 5, '21011201011', 21011201011, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201012', '210112010', '�����л������������������������������ֵ���ӱ�������������վ', '�����ֵ���ӱ�������������վ', null, null, '04', 5, '21011201012', 21011201012, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201013', '210112010', '�����л������������������������������ֵ����ϲ�ҵ��������������վ', '�����ֵ����ϲ�ҵ��������������վ', null, null, '04', 5, '21011201013', 21011201013, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201014', '210112010', '�����л������������������������������ֵ��λ��³�������������վ', '�����ֵ��λ��³�������������վ', null, null, '04', 5, '21011201014', 21011201014, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201015', '210112010', '�����л������������������������������ֵ���������������', '�����ֵ���������������', null, null, '04', 5, '21011201015', 21011201015, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201016', '210112010', '�����л������������������������������ֵ��̳���������', '�����ֵ��̳���������', null, null, '04', 5, '21011201016', 21011201016, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201017', '210112010', '�����л������������������������������ֵ�����峯�����������', '�����ֵ�����峯�����������', null, null, '04', 5, '21011201017', 21011201017, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201018', '210112010', '�����л������������������������������ֵ�������������', '�����ֵ�������������', null, null, '04', 5, '21011201018', 21011201018, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201019', '210112010', '�����л������������������������������ֵ���ˮ����������������վ', '�����ֵ���ˮ����������������վ', null, null, '04', 5, '21011201019', 21011201019, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201020', '210112010', '�����л������������������������������ֵ���̩������������վ', '�����ֵ���̩������������վ', null, null, '04', 5, '21011201020', 21011201020, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201021', '210112010', '�����л������������������������������ֵ���������������', '�����ֵ���������������', null, null, '04', 5, '21011201021', 21011201021, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201022', '210112010', '�����л������������������������������ֵ�ǰ����̨��������', '�����ֵ�ǰ����̨��������', null, null, '04', 5, '21011201022', 21011201022, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201023', '210112010', '�����л������������������������������ֵ����ɼ�԰������������վ', '�����ֵ����ɼ�԰������������վ', null, null, '04', 5, '21011201023', 21011201023, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201024', '210112010', '�����л������������������������������ֵ��Ϻ��峯�����������', '�����ֵ��Ϻ��峯�����������', null, null, '04', 5, '21011201024', 21011201024, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201025', '210112010', '�����л������������������������������ֵ�������ũҵ��е��ʵ�鳡��������', '�����ֵ�������ũҵ��е��ʵ�鳡��������', null, null, '04', 5, '21011201025', 21011201025, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201026', '210112010', '�����л������������������������������ֵ���̬԰������������վ', '�����ֵ���̬԰������������վ', null, null, '04', 5, '21011201026', 21011201026, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201027', '210112010', '�����л������������������������������ֵ���̬԰������������վ', '�����ֵ���̬԰������������վ', null, null, '04', 5, '21011201027', 21011201027, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201028', '210112010', '�����л������������������������������ֵ������³�������������վ', '�����ֵ������³�������������վ', null, null, '04', 5, '21011201028', 21011201028, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201029', '210112010', '�����л������������������������������ֵ��ǳ��Ӵ�������', '�����ֵ��ǳ��Ӵ�������', null, null, '04', 5, '21011201029', 21011201029, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201030', '210112010', '�����л������������������������������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201030', 21011201030, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201031', '210112010', '�����л������������������������������ֵ������ʹ�������', '�����ֵ������ʹ�������', null, null, '04', 5, '21011201031', 21011201031, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201032', '210112010', '�����л������������������������������ֵ���������������������վ', '�����ֵ���������������������վ', null, null, '04', 5, '21011201032', 21011201032, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201033', '210112010', '�����л������������������������������ֵ������������������', '�����ֵ������������������', null, null, '04', 5, '21011201033', 21011201033, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201034', '210112010', '�����л������������������������������ֵ���ʿ��������', '�����ֵ���ʿ��������', null, null, '04', 5, '21011201034', 21011201034, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201827', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201827', 21011201827, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201828', '210112018', '�������������������������İ����ֵ�ձ����������������վ', '�����ֵ�ձ����������������վ', null, null, '04', 5, '21011201828', 21011201828, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201829', '210112018', '�������������������������İ����ֵ�ձ����������������', '�����ֵ�ձ����������������', null, null, '04', 5, '21011201829', 21011201829, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201901', '210112019', '��������������Ժȫ�˴�������������վ', 'ȫ�˴�������������վ', null, null, '04', 5, '21011201901', 21011201901, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201902', '210112019', '��������������Ժ̩����Դ������������վ', '̩����Դ������������վ', null, null, '04', 5, '21011201902', 21011201902, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201903', '210112019', '��������������Ժ���ɽֵ����կ��������', '���ɽֵ����կ��������', null, null, '04', 5, '21011201903', 21011201903, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201904', '210112019', '��������������Ժ���ɽֵ����Ҵ�������', '���ɽֵ����Ҵ�������', null, null, '04', 5, '21011201904', 21011201904, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201905', '210112019', '��������������Ժ���ɽֵ��������Ӵ�������', '���ɽֵ��������Ӵ�������', null, null, '04', 5, '21011201905', 21011201905, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201906', '210112019', '��������������Ժ���ɽֵ����ϴ�������', '���ɽֵ����ϴ�������', null, null, '04', 5, '21011201906', 21011201906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201907', '210112019', '��������������Ժ���ɽֵ���̨��������������վ', '���ɽֵ���̨��������������վ', null, null, '04', 5, '21011201907', 21011201907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201908', '210112019', '��������������Ժ���ɽֵ�������������', '���ɽֵ�������������', null, null, '04', 5, '21011201908', 21011201908, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201909', '210112019', '��������������Ժ���ɽֵ���ɽ��������', '���ɽֵ���ɽ��������', null, null, '04', 5, '21011201909', 21011201909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201910', '210112019', '��������������Ժ���ɽֵ���¥�Ӵ�������', '���ɽֵ���¥�Ӵ�������', null, null, '04', 5, '21011201910', 21011201910, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201911', '210112019', '��������������Ժ���ɽֵ�����������������վ', '���ɽֵ�����������������վ', null, null, '04', 5, '21011201911', 21011201911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201912', '210112019', '��������������Ժ���ɽֵ�Ī��ɽ������������վ', '���ɽֵ�Ī��ɽ������������վ', null, null, '04', 5, '21011201912', 21011201912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201913', '210112019', '��������������Ժ���ɽֵ���ʯ��������', '���ɽֵ���ʯ��������', null, null, '04', 5, '21011201913', 21011201913, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201914', '210112019', '��������������Ժ���ɽֵ�������������', '���ɽֵ�������������', null, null, '04', 5, '21011201914', 21011201914, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201915', '210112019', '��������������Ժ���ɽֵ���·��������', '���ɽֵ���·��������', null, null, '04', 5, '21011201915', 21011201915, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 400 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201916', '210112019', '��������������Ժ���ɽֵ��Ҷ���������', '���ɽֵ��Ҷ���������', null, null, '04', 5, '21011201916', 21011201916, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201917', '210112019', '��������������Ժ���ɽֵ���һ��������', '���ɽֵ���һ��������', null, null, '04', 5, '21011201917', 21011201917, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201918', '210112019', '��������������Ժ���ɽֵ���Ҵ�������', '���ɽֵ���Ҵ�������', null, null, '04', 5, '21011201918', 21011201918, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201919', '210112019', '��������������Ժ���ɽֵ���ɽ������������վ', '���ɽֵ���ɽ������������վ', null, null, '04', 5, '21011201919', 21011201919, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202001', '210112020', '��������������Ժ����ֵ����ʹ岷�޷�������', '����ֵ����ʹ岷�޷�������', null, null, '04', 5, '21011202001', 21011202001, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202002', '210112020', '��������������Ժ����ֵ���������������', '����ֵ���������������', null, null, '04', 5, '21011202002', 21011202002, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202003', '210112020', '��������������Ժ����ֵ���ʤ�ʹ�������', '����ֵ���ʤ�ʹ�������', null, null, '04', 5, '21011202003', 21011202003, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202004', '210112020', '��������������Ժ����ֵ�������������', '����ֵ�������������', null, null, '04', 5, '21011202004', 21011202004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202005', '210112020', '��������������Ժ����ֵ�������������������վ', '����ֵ�������������������վ', null, null, '04', 5, '21011202005', 21011202005, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202006', '210112020', '��������������Ժ����ֵ���ɣ���Ӵ�����������', '����ֵ���ɣ���Ӵ�����������', null, null, '04', 5, '21011202006', 21011202006, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202007', '210112020', '��������������Ժ����ֵ���ɣ���Ӵ�������', '����ֵ���ɣ���Ӵ�������', null, null, '04', 5, '21011202007', 21011202007, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202008', '210112020', '��������������Ժ����ֵ���ʯ̨��������', '����ֵ���ʯ̨��������', null, null, '04', 5, '21011202008', 21011202008, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202009', '210112020', '��������������Ժ����ֵ���ʯ̨������������', '����ֵ���ʯ̨������������', null, null, '04', 5, '21011202009', 21011202009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202010', '210112020', '��������������Ժ����ֵ��������岷����������', '����ֵ��������岷����������', null, null, '04', 5, '21011202010', 21011202010, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202011', '210112020', '��������������Ժ����ֵ���������������', '����ֵ���������������', null, null, '04', 5, '21011202011', 21011202011, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202012', '210112020', '��������������Ժ����ֵ�����������������վ', '����ֵ�����������������վ', null, null, '04', 5, '21011202012', 21011202012, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202013', '210112020', '��������������Ժ����ֵ��ϴ���Ӵ����̻�������', '����ֵ��ϴ���Ӵ����̻�������', null, null, '04', 5, '21011202013', 21011202013, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202014', '210112020', '��������������Ժ����ֵ��ϴ��������������', '����ֵ��ϴ��������������', null, null, '04', 5, '21011202014', 21011202014, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202015', '210112020', '��������������Ժ����ֵ��Ͼ���������', '����ֵ��Ͼ���������', null, null, '04', 5, '21011202015', 21011202015, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202016', '210112020', '��������������Ժ����ֵ��������ӱ��������', '����ֵ��������ӱ��������', null, null, '04', 5, '21011202016', 21011202016, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202017', '210112020', '��������������Ժ����ֵ��������ΰ��������', '����ֵ��������ΰ��������', null, null, '04', 5, '21011202017', 21011202017, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202018', '210112020', '��������������Ժ����ֵ�����������������վ', '����ֵ�����������������վ', null, null, '04', 5, '21011202018', 21011202018, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202019', '210112020', '��������������Ժ����ֵ�ǰ����Դ��������', '����ֵ�ǰ����Դ��������', null, null, '04', 5, '21011202019', 21011202019, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202020', '210112020', '��������������Ժ����ֵ�ǰ����������������վ', '����ֵ�ǰ����������������վ', null, null, '04', 5, '21011202020', 21011202020, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202021', '210112020', '��������������Ժ����ֵ�ǰɣ���Ӵ�������', '����ֵ�ǰɣ���Ӵ�������', null, null, '04', 5, '21011202021', 21011202021, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202022', '210112020', '��������������Ժ����ֵ�ǰɣ���Ӵ�������������', '����ֵ�ǰɣ���Ӵ�������������', null, null, '04', 5, '21011202022', 21011202022, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202023', '210112020', '��������������Ժ����ֵ�����կ�������������', '����ֵ�����կ�������������', null, null, '04', 5, '21011202023', 21011202023, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202024', '210112020', '��������������Ժ����ֵ�����կ������������վ', '����ֵ�����կ������������վ', null, null, '04', 5, '21011202024', 21011202024, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202025', '210112020', '��������������Ժ����ֵ���Ȫˮ����������', '����ֵ���Ȫˮ����������', null, null, '04', 5, '21011202025', 21011202025, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202026', '210112020', '��������������Ժ����ֵ�ʩ��կ����������', '����ֵ�ʩ��կ����������', null, null, '04', 5, '21011202026', 21011202026, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202027', '210112020', '��������������Ժ����ֵ�ʩ��կ�巿��������', '����ֵ�ʩ��կ�巿��������', null, null, '04', 5, '21011202027', 21011202027, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202028', '210112020', '��������������Ժ����ֵ�ʯ���ʹ�޶���������', '����ֵ�ʯ���ʹ�޶���������', null, null, '04', 5, '21011202028', 21011202028, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202029', '210112020', '��������������Ժ����ֵ�ʯ����������������վ', '����ֵ�ʯ����������������վ', null, null, '04', 5, '21011202029', 21011202029, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202030', '210112020', '��������������Ժ����ֵ��ձ�̨�������������', '����ֵ��ձ�̨�������������', null, null, '04', 5, '21011202030', 21011202030, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202031', '210112020', '��������������Ժ����ֵ��ձ�̨����������', '����ֵ��ձ�̨����������', null, null, '04', 5, '21011202031', 21011202031, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202032', '210112020', '��������������Ժ����ֵ����կ������������', '����ֵ����կ������������', null, null, '04', 5, '21011202032', 21011202032, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202033', '210112020', '��������������Ժ����ֵ����կ�念����������', '����ֵ����կ�念����������', null, null, '04', 5, '21011202033', 21011202033, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202034', '210112020', '��������������Ժ����ֵ����կ����������', '����ֵ����կ����������', null, null, '04', 5, '21011202034', 21011202034, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202035', '210112020', '��������������Ժ����ֵ���������������', '����ֵ���������������', null, null, '04', 5, '21011202035', 21011202035, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202036', '210112020', '��������������Ժ����ֵ�����ʯկ��ع���������', '����ֵ�����ʯկ��ع���������', null, null, '04', 5, '21011202036', 21011202036, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202037', '210112020', '��������������Ժ����ֵ�����ʯկ����������', '����ֵ�����ʯկ����������', null, null, '04', 5, '21011202037', 21011202037, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202038', '210112020', '��������������Ժ����ֵ�����կ����������', '����ֵ�����կ����������', null, null, '04', 5, '21011202038', 21011202038, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202039', '210112020', '��������������Ժ����ֵ�����կ����������', '����ֵ�����կ����������', null, null, '04', 5, '21011202039', 21011202039, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202040', '210112020', '��������������Ժ����ֵ���ʿ�����캣Ȫ������', '����ֵ���ʿ�����캣Ȫ������', null, null, '04', 5, '21011202040', 21011202040, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202041', '210112020', '��������������Ժ����ֵ���ʿ��������������վ', '����ֵ���ʿ��������������վ', null, null, '04', 5, '21011202041', 21011202041, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202042', '210112020', '��������������Ժ����ֵ���Ȫˮ����������', '����ֵ���Ȫˮ����������', null, null, '04', 5, '21011202042', 21011202042, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202043', '210112020', '��������������Ժ����ֵ�Ӫ���Ӵ��˿���������', '����ֵ�Ӫ���Ӵ��˿���������', null, null, '04', 5, '21011202043', 21011202043, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202044', '210112020', '��������������Ժ����ֵ�Ӫ���Ӵ�������������', '����ֵ�Ӫ���Ӵ�������������', null, null, '04', 5, '21011202044', 21011202044, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202045', '210112020', '��������������Ժ����ֵ�Ӫ���Ӵ�������', '����ֵ�Ӫ���Ӵ�������', null, null, '04', 5, '21011202045', 21011202045, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202046', '210112020', '��������������Ժ����ֵ�Ӫ������������', '����ֵ�Ӫ������������', null, null, '04', 5, '21011202046', 21011202046, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202047', '210112020', '��������������Ժ����ֵ�Ԫ�ƴ��ι㸣������', '����ֵ�Ԫ�ƴ��ι㸣������', null, null, '04', 5, '21011202047', 21011202047, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202048', '210112020', '��������������Ժ����ֵ�Ԫ�ƴ�������', '����ֵ�Ԫ�ƴ�������', null, null, '04', 5, '21011202048', 21011202048, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202049', '210112020', '��������������Ժ����ֵ���ɳ�����ѩ��������', '����ֵ���ɳ�����ѩ��������', null, null, '04', 5, '21011202049', 21011202049, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202050', '210112020', '��������������Ժ����ֵ���ɳ����ߺ���������', '����ֵ���ɳ����ߺ���������', null, null, '04', 5, '21011202050', 21011202050, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202051', '210112020', '��������������Ժ����ֵ���ɳ����������', '����ֵ���ɳ����������', null, null, '04', 5, '21011202051', 21011202051, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202052', '210112020', '��������������Ժ����ֵ��Ƽҹ���������', '����ֵ��Ƽҹ���������', null, null, '04', 5, '21011202052', 21011202052, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202101', '210112021', '�����л�����Ӫ�������������������ĺ�ɣ��������������', '��ɣ��������������', null, null, '04', 5, '21011202101', 21011202101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202102', '210112021', '�����л�����Ӫ���������������������ϴ���Ӵ����̻�������', '�ϴ���Ӵ����̻�������', null, null, '04', 5, '21011202102', 21011202102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202103', '210112021', '�����л�����Ӫ��������������������ǰɣ���Ӵ�������������', 'ǰɣ���Ӵ�������������', null, null, '04', 5, '21011202103', 21011202103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202104', '210112021', '�����л�����Ӫ��������������������ǰɣ���Ӵ�������������', 'ǰɣ���Ӵ�������������', null, null, '04', 5, '21011202104', 21011202104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202201', '210112022', '��������������Ժ���ҽֵ�����������������վ', '���ҽֵ�����������������վ', null, null, '04', 5, '21011202201', 21011202201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202202', '210112022', '��������������Ժ���ҽֵ������������������վ', '���ҽֵ������������������վ', null, null, '04', 5, '21011202202', 21011202202, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202203', '210112022', '��������������Ժ���ҽֵ������������������վ', '���ҽֵ������������������վ', null, null, '04', 5, '21011202203', 21011202203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202204', '210112022', '��������������Ժ���ҽֵ�����������������վ', '���ҽֵ�����������������վ', null, null, '04', 5, '21011202204', 21011202204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202205', '210112022', '��������������Ժ���ҽֵ���԰������������վ', '���ҽֵ���԰������������վ', null, null, '04', 5, '21011202205', 21011202205, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202206', '210112022', '��������������Ժ���ҽֵ�����������������վ', '���ҽֵ�����������������վ', null, null, '04', 5, '21011202206', 21011202206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202207', '210112022', '��������������Ժ���ҽֵ��ɺ��Ӵ�������', '���ҽֵ��ɺ��Ӵ�������', null, null, '04', 5, '21011202207', 21011202207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202208', '210112022', '��������������Ժ���ҽֵ�ǧ��������������վ', '���ҽֵ�ǧ��������������վ', null, null, '04', 5, '21011202208', 21011202208, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202209', '210112022', '��������������Ժ���ҽֵ�������������������վ', '���ҽֵ�������������������վ', null, null, '04', 5, '21011202209', 21011202209, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202210', '210112022', '��������������Ժ���ҽֵ��ϲ���������������վ', '���ҽֵ��ϲ���������������վ', null, null, '04', 5, '21011202210', 21011202210, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202211', '210112022', '��������������Ժ���ҽֵ����ұ�������������վ', '���ҽֵ����ұ�������������վ', null, null, '04', 5, '21011202211', 21011202211, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202212', '210112022', '��������������Ժ���ҽֵ�������������������վ', '���ҽֵ�������������������վ', null, null, '04', 5, '21011202212', 21011202212, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202213', '210112022', '��������������Ժ���ҽֵ�����������������վ', '���ҽֵ�����������������վ', null, null, '04', 5, '21011202213', 21011202213, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202214', '210112022', '��������������Ժ���ҽֵ��²���������������վ', '���ҽֵ��²���������������վ', null, null, '04', 5, '21011202214', 21011202214, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202215', '210112022', '��������������Ժ���ҽֵ�С����������������վ', '���ҽֵ�С����������������վ', null, null, '04', 5, '21011202215', 21011202215, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202216', '210112022', '��������������Ժ���ҽֵ�С���������������վ', '���ҽֵ�С���������������վ', null, null, '04', 5, '21011202216', 21011202216, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202301', '210112023', '��������������Ժ��ӽֵ�����ɽ�������������', '��ӽֵ�����ɽ�������������', null, null, '04', 5, '21011202301', 21011202301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202302', '210112023', '��������������Ժ��ӽֵ�����ɽ�����������', '��ӽֵ�����ɽ�����������', null, null, '04', 5, '21011202302', 21011202302, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202303', '210112023', '��������������Ժ��ӽֵ���̨����������', '��ӽֵ���̨����������', null, null, '04', 5, '21011202303', 21011202303, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202304', '210112023', '��������������Ժ��ӽֵ��󿵴�������������', '��ӽֵ��󿵴�������������', null, null, '04', 5, '21011202304', 21011202304, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202305', '210112023', '��������������Ժ��ӽֵ��󿵴�������������', '��ӽֵ��󿵴�������������', null, null, '04', 5, '21011202305', 21011202305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202306', '210112023', '��������������Ժ��ӽֵ����ʤ��������', '��ӽֵ����ʤ��������', null, null, '04', 5, '21011202306', 21011202306, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202307', '210112023', '��������������Ժ��ӽֵ����ʤ������������', '��ӽֵ����ʤ������������', null, null, '04', 5, '21011202307', 21011202307, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202308', '210112023', '��������������Ժ��ӽֵ������������������', '��ӽֵ������������������', null, null, '04', 5, '21011202308', 21011202308, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202309', '210112023', '��������������Ժ��ӽֵ�����������������վ', '��ӽֵ�����������������վ', null, null, '04', 5, '21011202309', 21011202309, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202310', '210112023', '��������������Ժ��ӽֵ������������', '��ӽֵ������������', null, null, '04', 5, '21011202310', 21011202310, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202311', '210112023', '��������������Ժ��ӽֵ�ǰ����������', '��ӽֵ�ǰ����������', null, null, '04', 5, '21011202311', 21011202311, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202312', '210112023', '��������������Ժ��ӽֵ�ǰ��������������', '��ӽֵ�ǰ��������������', null, null, '04', 5, '21011202312', 21011202312, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202313', '210112023', '��������������Ժ��ӽֵ��������������������', '��ӽֵ��������������������', null, null, '04', 5, '21011202313', 21011202313, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202314', '210112023', '��������������Ժ��ӽֵ���ũ��������������', '��ӽֵ���ũ��������������', null, null, '04', 5, '21011202314', 21011202314, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202315', '210112023', '��������������Ժ��ӽֵ���ũ������������վ', '��ӽֵ���ũ������������վ', null, null, '04', 5, '21011202315', 21011202315, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202316', '210112023', '��������������Ժ��ӽֵ���ʤ������������', '��ӽֵ���ʤ������������', null, null, '04', 5, '21011202316', 21011202316, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202317', '210112023', '��������������Ժ��ӽֵ���ʤ��������', '��ӽֵ���ʤ��������', null, null, '04', 5, '21011202317', 21011202317, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202318', '210112023', '��������������Ժ��ӽֵ����Ŵ�������', '��ӽֵ����Ŵ�������', null, null, '04', 5, '21011202318', 21011202318, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202319', '210112023', '��������������Ժ��ӽֵ���ʤ��´���������', '��ӽֵ���ʤ��´���������', null, null, '04', 5, '21011202319', 21011202319, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202320', '210112023', '��������������Ժ��ӽֵ���ʤ��������', '��ӽֵ���ʤ��������', null, null, '04', 5, '21011202320', 21011202320, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202321', '210112023', '��������������Ժ�����ֵ��˼��Ӵ�������������', '�����ֵ��˼��Ӵ�������������', null, null, '04', 5, '21011202321', 21011202321, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202322', '210112023', '��������������Ժ�����ֵ����ִ�������', '�����ֵ����ִ�������', null, null, '04', 5, '21011202322', 21011202322, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202323', '210112023', '��������������Ժ�����ֵ����˼��Ӵ�������', '�����ֵ����˼��Ӵ�������', null, null, '04', 5, '21011202323', 21011202323, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202324', '210112023', '��������������Ժ�����ֵ����Ҵ帻��������', '�����ֵ����Ҵ帻��������', null, null, '04', 5, '21011202324', 21011202324, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 500 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202325', '210112023', '��������������Ժ�����ֵ����Ҵ�������', '�����ֵ����Ҵ�������', null, null, '04', 5, '21011202325', 21011202325, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202326', '210112023', '��������������Ժ�����ֵ��󹵴���̫��������', '�����ֵ��󹵴���̫��������', null, null, '04', 5, '21011202326', 21011202326, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202327', '210112023', '��������������Ժ�����ֵ��󹵴�������', '�����ֵ��󹵴�������', null, null, '04', 5, '21011202327', 21011202327, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202328', '210112023', '��������������Ժ�����ֵ��ĵش��־��������', '�����ֵ��ĵش��־��������', null, null, '04', 5, '21011202328', 21011202328, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202329', '210112023', '��������������Ժ�����ֵ��ĵع���������', '�����ֵ��ĵع���������', null, null, '04', 5, '21011202329', 21011202329, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202330', '210112023', '��������������Ժ�����ֵ���ɽ�Ӵ�������������', '�����ֵ���ɽ�Ӵ�������������', null, null, '04', 5, '21011202330', 21011202330, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202331', '210112023', '��������������Ժ�����ֵ���ɽ�Ӵ�������', '�����ֵ���ɽ�Ӵ�������', null, null, '04', 5, '21011202331', 21011202331, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202332', '210112023', '��������������Ժ�����ֵ�������������', '�����ֵ�������������', null, null, '04', 5, '21011202332', 21011202332, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202333', '210112023', '��������������Ժ�����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011202333', 21011202333, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202334', '210112023', '��������������Ժ�����ֵ�κ�Ҵ�����������', '�����ֵ�κ�Ҵ�����������', null, null, '04', 5, '21011202334', 21011202334, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202335', '210112023', '��������������Ժ�����ֵ�κ�Ҵ�������', '�����ֵ�κ�Ҵ�������', null, null, '04', 5, '21011202335', 21011202335, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202336', '210112023', '��������������Ժ�����ֵ��л��´������������', '�����ֵ��л��´������������', null, null, '04', 5, '21011202336', 21011202336, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202337', '210112023', '��������������Ժ�����ֵ��л��´�������', '�����ֵ��л��´�������', null, null, '04', 5, '21011202337', 21011202337, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202401', '210112024', '��������������Ժ���ļ�������', '���ļ�������', null, null, '04', 5, '21011202401', 21011202401, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202402', '210112024', '��������������Ժ��������', '��������', null, null, '04', 5, '21011202402', 21011202402, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202403', '210112024', '��������������Ժ����������', '����������', null, null, '04', 5, '21011202403', 21011202403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202404', '210112024', '��������������Ժ����������', '����������', null, null, '04', 5, '21011202404', 21011202404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202405', '210112024', '��������������Ժ��������', '��������', null, null, '04', 5, '21011202405', 21011202405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202406', '210112024', '��������������Ժ������������', '������������', null, null, '04', 5, '21011202406', 21011202406, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202407', '210112024', '��������������Ժ�������', '�������', null, null, '04', 5, '21011202407', 21011202407, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202408', '210112024', '��������������Ժɽ��������', 'ɽ��������', null, null, '04', 5, '21011202408', 21011202408, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202409', '210112024', '��������������Ժ�����ֵ��˼��Ӵ�������������', '�����ֵ��˼��Ӵ�������������', null, null, '04', 5, '21011202409', 21011202409, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202410', '210112024', '��������������Ժ�����ֵ����Ҵ帻��������', '�����ֵ����Ҵ帻��������', null, null, '04', 5, '21011202410', 21011202410, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202411', '210112024', '��������������Ժ�����ֵ��󹵴���̫��������', '�����ֵ��󹵴���̫��������', null, null, '04', 5, '21011202411', 21011202411, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202412', '210112024', '��������������Ժ�����ֵ��ĵش��־��������', '�����ֵ��ĵش��־��������', null, null, '04', 5, '21011202412', 21011202412, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202413', '210112024', '��������������Ժ�����ֵ���ɽ�Ӵ�������������', '�����ֵ���ɽ�Ӵ�������������', null, null, '04', 5, '21011202413', 21011202413, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202414', '210112024', '��������������Ժ�����ֵ�κ�Ҵ�����������', '�����ֵ�κ�Ҵ�����������', null, null, '04', 5, '21011202414', 21011202414, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202415', '210112024', '��������������Ժ�����ֵ��л��´������������', '�����ֵ��л��´������������', null, null, '04', 5, '21011202415', 21011202415, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202416', '210112024', '��������������Ժ��������', '��������', null, null, '04', 5, '21011202416', 21011202416, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202417', '210112024', '��������������Ժ��������', '��������', null, null, '04', 5, '21011202417', 21011202417, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011202418', '210112024', '��������������Ժ���ҹ�����', '���ҹ�����', null, null, '04', 5, '21011202418', 21011202418, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210310', '210122103', '���������������ӱ���ҵ�˴�������', '���ӱ���ҵ�˴�������', null, null, '15', 6, '21012210310', 21012210310, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210907', '210122109', '������������Фկ�������ϴ�������', 'Фկ�������ϴ�������', null, null, '15', 6, '21012210907', 21012210907, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211209', '210122112', '�����������سǽ��������������', '�ǽ��������������', null, null, '15', 6, '21012211209', 21012211209, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211406', '210122114', '��������������ʿ�������Ҹڴ�������', '��ʿ�������Ҹڴ�������', null, null, '15', 6, '21012211406', 21012211406, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012211712', '210122117', '�������������ϴ���ܼҴ�������', '�ϴ���ܼҴ�������', null, null, '15', 6, '21012211712', 21012211712, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112001', '210112', '������ֱ����������', '������ֱ�ܻ���', null, null, '04', 5, '210112001', 210112001, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112009', '210112', '��������������������������', '��������������������', null, null, '04', 5, '210112009', 210112009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112021', '210112', '������Ӫ��������������������', 'Ӫ��������������������', null, null, '04', 5, '210112021', 210112021, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112022', '210112', '��������������Ժ', '��������������Ժ', null, null, '04', 5, '210112022', 210112022, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200101', '210112001', '�ų��Ӵ�������', '�ų��Ӵ�������', null, null, '04', 5, '21011200101', 21011200101, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200102', '210112001', '��«���ϣ¥������', '��«���ϣ¥������', null, null, '04', 5, '21011200102', 21011200102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200103', '210112001', '������������', '������������', null, null, '04', 5, '21011200103', 21011200103, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200104', '210112001', '������������', '������������', null, null, '04', 5, '21011200104', 21011200104, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200105', '210112001', '�޹ٴ�������', '�޹ٴ�������', null, null, '04', 5, '21011200105', 21011200105, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200106', '210112001', '�����ʹ�������', '�޹ٴ�������', null, null, '04', 5, '21011200106', 21011200106, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200107', '210112001', '�޻���������������', '�޻���������������', null, null, '04', 5, '21011200107', 21011200107, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200108', '210112001', 'ţ���������', 'ţ���������', null, null, '04', 5, '21011200108', 21011200108, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200109', '210112001', '�ʾ���������������', '�ʾ���������������', null, null, '04', 5, '21011200109', 21011200109, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200110', '210112001', '������κ��������', '������κ��������', null, null, '04', 5, '21011200110', 21011200110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200111', '210112001', '�ϰ۲ܾ�ӱ������', '�ϰ۲ܾ�ӱ������', null, null, '04', 5, '21011200111', 21011200111, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200112', '210112001', 'ʡ��������ί�����������ֻ�����������', '������������', null, null, '04', 5, '21011200112', 21011200112, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200113', '210112001', 'ʯ���Ӵ�������', 'ʯ���Ӵ�������', null, null, '04', 5, '21011200113', 21011200113, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200114', '210112001', 'ˮ�Ҵ�������', 'ˮ�Ҵ�������', null, null, '04', 5, '21011200114', 21011200114, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200115', '210112001', '������Ȫ��������', '������Ȫ��������', null, null, '04', 5, '21011200115', 21011200115, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200116', '210112001', '�������������', '�������������', null, null, '04', 5, '21011200116', 21011200116, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200117', '210112001', '�°���ǫ��������', '�°���ǫ��������', null, null, '04', 5, '21011200117', 21011200117, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200118', '210112001', '��ٴ�������', '��ٴ�������', null, null, '04', 5, '21011200118', 21011200118, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200119', '210112001', '������������', '������������', null, null, '04', 5, '21011200119', 21011200119, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200701', '210112007', '������Ӣ������Ժ��������������', '��������������', null, null, '04', 5, '21011200701', 21011200701, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200702', '210112007', '������Ӣ������ԺӢ����Թ�׳������', 'Ӣ����Թ�׳������', null, null, '04', 5, '21011200702', 21011200702, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200703', '210112007', '������Ӣ������ԺӢ������������', 'Ӣ������������', null, null, '04', 5, '21011200703', 21011200703, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200901', '210112009', '�������������������������Ķ����ֵ������Ӵ�������', '�����ֵ������Ӵ�������', null, null, '04', 5, '21011200901', 21011200901, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200902', '210112009', '�������������������������Ķ����ֵ��ų��Ӵ�������', '�����ֵ��ų��Ӵ�������', null, null, '04', 5, '21011200902', 21011200902, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200903', '210112009', '�������������������������Ķ����ֵ�������������', '�����ֵ�������������', null, null, '04', 5, '21011200903', 21011200903, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200904', '210112009', '�������������������������Ķ����ֵ������ʹ�������', '�����ֵ������ʹ�������', null, null, '04', 5, '21011200904', 21011200904, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200905', '210112009', '�������������������������Ķ����ֵ��޹��ʹ�������', '�����ֵ��޹��ʹ�������', null, null, '04', 5, '21011200905', 21011200905, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200906', '210112009', '�������������������������Ķ����ֵ������ʹ�������', '�����ֵ������ʹ�������', null, null, '04', 5, '21011200906', 21011200906, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501608', '210105016', '����ܰ���Ŷ�', '����ܰ���Ŷ�', null, null, '15', 6, '21010501608', 21010501608, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500305', '210105003', '�����������Ŷ�', '�����������Ŷ�', null, null, '15', 6, '21010500305', 21010500305, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501203', '210105012', '�϶��Ŷ�', '�϶��Ŷ�', null, null, '15', 6, '21010501203', 21010501203, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500403', '210105004', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500403', 21010500403, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500204', '210105002', '�й������Ŷ�', '�й������Ŷ�', null, null, '15', 6, '21010500204', 21010500204, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105009', '210105', 'ŭ������������������', 'ŭ������������������', null, null, '04', 5, '210105009', 210105009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500802', '210105008', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500802', 21010500802, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500508', '210105005', '��������ҽʦ�Ŷ�', '��������ҽʦ�Ŷ�', null, null, '15', 6, '21010500508', 21010500508, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500408', '210105004', '��������', '��������', null, null, '15', 6, '21010500408', 21010500408, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500909', '210105009', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500909', 21010500909, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501301', '210105013', '�۽��Ŷ�', '�۽��Ŷ�', null, null, '15', 6, '21010501301', 21010501301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500906', '210105009', '����Ŷ�', '����Ŷ�', null, null, '15', 6, '21010500906', 21010500906, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501606', '210105016', '�ٻ��Ŷ�', '�ٻ��Ŷ�', null, null, '15', 6, '21010501606', 21010501606, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501120', '210105011', '���ǩԼ���Ŷ�', '���ǩԼ���Ŷ�', null, null, '15', 6, '21010501120', 21010501120, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501116', '210105011', 'ǩԼ���Ŷ�', 'ǩԼ���Ŷ�', null, null, '15', 6, '21010501116', 21010501116, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501201', '210105012', '��������', '��������', null, null, '15', 6, '21010501201', 21010501201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500303', '210105003', '��԰�����Ŷ�', '��԰�����Ŷ�', null, null, '15', 6, '21010500303', 21010500303, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500601', '210105006', '���������Ŷ�һ', '���������Ŷ�һ', null, null, '15', 6, '21010500601', 21010500601, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500404', '210105004', '���ӽ��Ŷ�', '���ӽ��Ŷ�', null, null, '15', 6, '21010500404', 21010500404, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105004', '210105', '̩ɽ����������������', '̩ɽ����������������', null, null, '04', 5, '210105004', 210105004, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105005', '210105', '������������������', '������������������', null, null, '04', 5, '210105005', 210105005, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500206', '210105002', '��̩�����Ŷ�', '��̩�����Ŷ�', null, null, '15', 6, '21010500206', 21010500206, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500207', '210105002', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500207', 21010500207, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501009', '210105010', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501009', 21010501009, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500105', '210105001', 'ǰ���Ŷ�', 'ǰ���Ŷ�', null, null, '15', 6, '21010500105', 21010500105, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500405', '210105004', '�潭�Ŷ�', '�潭�Ŷ�', null, null, '15', 6, '21010500405', 21010500405, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500506', '210105005', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500506', 21010500506, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500805', '210105008', '�к��������Ŷ�', '�к��������Ŷ�', null, null, '15', 6, '21010500805', 21010500805, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500111', '210105001', '®ɽ�Ŷ�', '®ɽ�Ŷ�', null, null, '15', 6, '21010500111', 21010500111, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501607', '210105016', '��Ǿ�Ŷ�', '��Ǿ�Ŷ�', null, null, '15', 6, '21010501607', 21010501607, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501118', '210105011', 'ǩԼ���Ŷ�', 'ǩԼ���Ŷ�', null, null, '15', 6, '21010501118', 21010501118, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500604', '210105006', '���������Ŷ���', '���������Ŷ���', null, null, '15', 6, '21010500604', 21010500604, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 600 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500301', '210105003', '̫ƽ�����Ŷ�', '̫ƽ�����Ŷ�', null, null, '15', 6, '21010500301', 21010500301, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500803', '210105008', '��ɽ�����Ŷ�', '��ɽ�����Ŷ�', null, null, '15', 6, '21010500803', 21010500803, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500607', '210105006', '���������Ŷ���', '���������Ŷ���', null, null, '15', 6, '21010500607', 21010500607, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500201', '210105002', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500201', 21010500201, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105003', '210105', '��������������������', '��������������������', null, null, '04', 5, '210105003', 210105003, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500504', '210105005', '��ˮ�����Ŷ�', '��ˮ�����Ŷ�', null, null, '15', 6, '21010500504', 21010500504, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500102', '210105001', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500102', 21010500102, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500806', '210105008', '�ں������Ŷ�', '�ں������Ŷ�', null, null, '15', 6, '21010500806', 21010500806, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500110', '210105001', '�ɽ��Ŷ�', '�ɽ��Ŷ�', null, null, '15', 6, '21010500110', 21010500110, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501124', '210105011', '�ƻ�����', '�ƻ�����', null, null, '15', 6, '21010501124', 21010501124, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500911', '210105009', '���»��Ŷ�', '���»��Ŷ�', null, null, '15', 6, '21010500911', 21010500911, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500912', '210105009', '�������Ŷ�', '�������Ŷ�', null, null, '15', 6, '21010500912', 21010500912, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500913', '210105009', 'ŭ���Ŷ�', 'ŭ���Ŷ�', null, null, '15', 6, '21010500913', 21010500913, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500914', '210105009', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500914', 21010500914, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500915', '210105009', '��Ρ�Ŷ�', '��Ρ�Ŷ�', null, null, '15', 6, '21010500915', 21010500915, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500916', '210105009', '���岨�Ŷ�', '���岨�Ŷ�', null, null, '15', 6, '21010500916', 21010500916, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501125', '210105011', '�º��������Ŷ�', '�º��������Ŷ�', null, null, '15', 6, '21010501125', 21010501125, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501126', '210105011', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501126', 21010501126, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501127', '210105011', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010501127', 21010501127, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501128', '210105011', 'ۡ���Ŷ�', 'ۡ���Ŷ�', null, null, '15', 6, '21010501128', 21010501128, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501129', '210105011', '��ˮ�����Ŷ�', '��ˮ�����Ŷ�', null, null, '15', 6, '21010501129', 21010501129, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501130', '210105011', '�������������������Ŷ�', '�������������������Ŷ�', null, null, '15', 6, '21010501130', 21010501130, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501131', '210105011', '�������������������Ŷ�', '�������������������Ŷ�', null, null, '15', 6, '21010501131', 21010501131, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501132', '210105011', '����', '����', null, null, '15', 6, '21010501132', 21010501132, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501133', '210105011', '����', '����', null, null, '15', 6, '21010501133', 21010501133, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501134', '210105011', '�������������������Ŷ�', '�������������������Ŷ�', null, null, '15', 6, '21010501134', 21010501134, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501135', '210105011', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010501135', 21010501135, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501136', '210105011', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010501136', 21010501136, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501137', '210105011', 'лǬ�Ŷ�', 'лǬ�Ŷ�', null, null, '15', 6, '21010501137', 21010501137, null, null, null, null, null, to_date('01-06-2020 13:20:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120608', '210111206', '�������ռ�����������Ӫ�̴�������', '������Ӫ�̴�������', null, null, '15', 6, '21011120608', 21011120608, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100716', '210111007', '�������ռ�������ʢ�ֵ�ɳ��վ��������', '��ʢ�ֵ�ɳ��վ��������', null, null, '15', 6, '21011100716', 21011100716, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100719', '210111007', '�������ռ�������ʢ�ֵ��ķ�̨��������', '��ʢ�ֵ��ķ�̨��������', null, null, '15', 6, '21011100719', 21011100719, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100722', '210111007', '�������ռ�������ʢ�ֵ��ĳɴ�������', '��ʢ�ֵ��ĳɴ�������', null, null, '15', 6, '21011100722', 21011100722, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100707', '210111007', '�������ռ�������ʢ�ֵ������������1', '��ʢ�ֵ������������1', null, null, '15', 6, '21011100707', 21011100707, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100723', '210111007', '�������ռ�������ʢ�ֵ��ҹ��������', '��ʢ�ֵ��ҹ��������', null, null, '15', 6, '21011100723', 21011100723, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100701', '210111007', '�������ռ�������ʢ�ֵ����Ҵ�������', '��ʢ�ֵ����Ҵ�������', null, null, '15', 6, '21011100701', 21011100701, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100713', '210111007', '�������ռ�������ʢ�ֵ���ʢ��������', '��ʢ�ֵ���ʢ��������', null, null, '15', 6, '21011100713', 21011100713, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100710', '210111007', '�������ռ�������ʢ�ֵ���������������վ', '��ʢ�ֵ���������������վ', null, null, '15', 6, '21011100710', 21011100710, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120702', '210111207', '�������ռ�����١���ֵ�ʤ����������', '١���ֵ�ʤ����������', null, null, '15', 6, '21011120702', 21011120702, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120704', '210111207', '�������ռ�����١���ֵ�١����������', '١���ֵ�١����������', null, null, '15', 6, '21011120704', 21011120704, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120703', '210111207', '�������ռ�����١���ֵ��չ���������', '١���ֵ��չ���������', null, null, '15', 6, '21011120703', 21011120703, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111208', '210111', '�������ռ�����������������������', '������������������', null, null, '04', 5, '210111208', 210111208, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120808', '210111208', '�������ռ�����������С��̨��������', '������С��̨��������', null, null, '15', 6, '21011120808', 21011120808, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120802', '210111208', '�������ռ����������籦���������', '�����籦���������', null, null, '15', 6, '21011120802', 21011120802, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120812', '210111208', '�������ռ��������������ִ�������', '���������ִ�������', null, null, '15', 6, '21011120812', 21011120812, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120811', '210111208', '�������ռ�����������������������', '������������������', null, null, '15', 6, '21011120811', 21011120811, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120813', '210111208', '�������ռ�������������ʤ��������', '��������ʤ��������', null, null, '15', 6, '21011120813', 21011120813, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111002', '210111', '�������ռ���������ֵ�������������', '����ֵ�������������', null, null, '04', 5, '210111002', 210111002, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100212', '210111002', '�������ռ���������ֵ�����������������վ', '����ֵ�����������������վ', null, null, '15', 6, '21011100212', 21011100212, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100201', '210111002', '�������ռ���������ֵ���´�������', '����ֵ���´�������', null, null, '15', 6, '21011100201', 21011100201, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100210', '210111002', '�������ռ���������ֵ���ľ��������', '����ֵ���ľ��������', null, null, '15', 6, '21011100210', 21011100210, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100207', '210111002', '�������ռ���������ֵ�������������', '����ֵ�������������', null, null, '15', 6, '21011100207', 21011100207, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100203', '210111002', '�������ռ���������ֵ����մ�������', '����ֵ����մ�������', null, null, '15', 6, '21011100203', 21011100203, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100205', '210111002', '�������ռ���������ֵ���ţ��������', '����ֵ���ţ��������', null, null, '15', 6, '21011100205', 21011100205, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100215', '210111002', '�������ռ���������ֵ�Ӣ�������Ҵ�������', '����ֵ�Ӣ�������Ҵ�������', null, null, '15', 6, '21011100215', 21011100215, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111104', '210111', '�������ռ�����ɳ�ӽֵ�������������', 'ɳ�ӽֵ�������������', null, null, '04', 5, '210111104', 210111104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110412', '210111104', '�������ռ�����ɳ�ӽֵ�ɳ��������������վ', 'ɳ�ӽֵ�ɳ��������������վ', null, null, '15', 6, '21011110412', 21011110412, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110416', '210111104', '�������ռ�����ɳ�ӽֵ�������������', 'ɳ�ӽֵ�������������', null, null, '15', 6, '21011110416', 21011110416, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110404', '210111104', '�������ռ�����ɳ�ӽֵ����ʹ�������', 'ɳ�ӽֵ����ʹ�������', null, null, '15', 6, '21011110404', 21011110404, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110405', '210111104', '�������ռ�����ɳ�ӽֵ����Ǵ�������', 'ɳ�ӽֵ����Ǵ�������', null, null, '15', 6, '21011110405', 21011110405, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110401', '210111104', '�������ռ�����ɳ�ӽֵ��������Ӵ�������', 'ɳ�ӽֵ��������Ӵ�������', null, null, '15', 6, '21011110401', 21011110401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110406', '210111104', '�������ռ�����ɳ�ӽֵ��ӱ���������', 'ɳ�ӽֵ��ӱ���������', null, null, '15', 6, '21011110406', 21011110406, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110414', '210111104', '�������ռ�����ɳ�ӽֵ�����ʹ�������', 'ɳ�ӽֵ�����ʹ�������', null, null, '15', 6, '21011110414', 21011110414, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110403', '210111104', '�������ռ�����ɳ�ӽֵ��������������', 'ɳ�ӽֵ��������������', null, null, '15', 6, '21011110403', 21011110403, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110411', '210111104', '�������ռ�����ɳ�ӽֵ�ɳ���̴�������', 'ɳ�ӽֵ�ɳ���̴�������', null, null, '15', 6, '21011110411', 21011110411, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110409', '210111104', '�������ռ�����ɳ�ӽֵ��������Ӵ�������', 'ɳ�ӽֵ��������Ӵ�������', null, null, '15', 6, '21011110409', 21011110409, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120313', '210111203', '�������ռ������������ŵ�����������', '�������ŵ�����������', null, null, '15', 6, '21011120313', 21011120313, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120308', '210111203', '�������ռ����������������ݴ�������', '�����������ݴ�������', null, null, '15', 6, '21011120308', 21011120308, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120312', '210111203', '�������ռ������������¿��Ӵ��һ������', '�������¿��Ӵ��һ������', null, null, '15', 6, '21011120312', 21011120312, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120311', '210111203', '�������ռ��������������ٱ���������', '���������ٱ���������', null, null, '15', 6, '21011120311', 21011120311, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111102', '210111', '�������ռ�����������������������', '������������������', null, null, '04', 5, '210111102', 210111102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110207', '210111102', '�������ռ���������������������������վ', '����������������������վ', null, null, '15', 6, '21011110207', 21011110207, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110205', '210111102', '�������ռ���������������������������վ', '����������������������վ', null, null, '15', 6, '21011110205', 21011110205, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110202', '210111102', '�������ռ��������������������������վ', '���������������������վ', null, null, '15', 6, '21011110202', 21011110202, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110204', '210111102', '�������ռ������������Ϻ��������', '�������Ϻ��������', null, null, '15', 6, '21011110204', 21011110204, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110209', '210111102', '�������ռ�������������̨��������', '��������̨��������', null, null, '15', 6, '21011110209', 21011110209, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110206', '210111102', '�������ռ������������δ�̨��������', '�������δ�̨��������', null, null, '15', 6, '21011110206', 21011110206, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110208', '210111102', '�������ռ�������������ׯ��������', '��������ׯ��������', null, null, '15', 6, '21011110208', 21011110208, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110210', '210111102', '�������ռ�����������������������', '������������������', null, null, '15', 6, '21011110210', 21011110210, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111004', '210111', '�������ռ������ٺ��ֵ�������������', '�ٺ��ֵ�������������', null, null, '04', 5, '210111004', 210111004, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100410', '210111004', '�������ռ������ٺ��ֵ����������������վ', '�ٺ��ֵ����������������վ', null, null, '15', 6, '21011100410', 21011100410, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100411', '210111004', '�������ռ������ٺ��ֵ�ǰĮ��������', '�ٺ��ֵ�ǰĮ��������', null, null, '15', 6, '21011100411', 21011100411, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100404', '210111004', '�������ռ������ٺ��ֵ���Į��������', '�ٺ��ֵ���Į��������', null, null, '15', 6, '21011100404', 21011100404, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100409', '210111004', '�������ռ������ٺ��ֵ���̨��������', '�ٺ��ֵ���̨��������', null, null, '15', 6, '21011100409', 21011100409, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100402', '210111004', '�������ռ������ٺ��ֵ������������', '�ٺ��ֵ������������', null, null, '15', 6, '21011100402', 21011100402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100403', '210111004', '�������ռ������ٺ��ֵ����Ŵ�������', '�ٺ��ֵ����Ŵ�������', null, null, '15', 6, '21011100403', 21011100403, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100417', '210111004', '�������ռ������ٺ��ֵ����մ�������', '�ٺ��ֵ����մ�������', null, null, '15', 6, '21011100417', 21011100417, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111001', '210111', '�������ռ�������Žֵ�������������', '��Žֵ�������������', null, null, '04', 5, '210111001', 210111001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100109', '210111001', '�������ռ�������Žֵ�վǰ������������վ', '��Žֵ�վǰ������������վ', null, null, '15', 6, '21011100109', 21011100109, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100102', '210111001', '�������ռ�������Žֵ���¥��������������վ', '��Žֵ���¥��������������վ', null, null, '15', 6, '21011100102', 21011100102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100106', '210111001', '�������ռ�������Žֵ�����·������������վ', '��Žֵ�����·������������վ', null, null, '15', 6, '21011100106', 21011100106, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100103', '210111001', '�������ռ�������Žֵ���԰��������������վ', '��Žֵ���԰��������������վ', null, null, '15', 6, '21011100103', 21011100103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100104', '210111001', '�������ռ�������Žֵ��㳡������������վ', '��Žֵ��㳡������������վ', null, null, '15', 6, '21011100104', 21011100104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111005', '210111', '�������ռ��������˽ֵ�������������', '���˽ֵ�������������', null, null, '04', 5, '210111005', 210111005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100502', '210111005', '�������ռ��������˽ֵ������Ͽ�������������վ', '���˽ֵ������Ͽ�������������վ', null, null, '15', 6, '21011100502', 21011100502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100507', '210111005', '�������ռ��������˽ֵ�����������������վ', '���˽ֵ�����������������վ', null, null, '15', 6, '21011100507', 21011100507, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100508', '210111005', '�������ռ��������˽ֵ�����������������վ', '���˽ֵ�����������������վ', null, null, '15', 6, '21011100508', 21011100508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100501', '210111005', '�������ռ��������˽ֵ��ٷ�������������վ', '���˽ֵ��ٷ�������������վ', null, null, '15', 6, '21011100501', 21011100501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100504', '210111005', '�������ռ��������˽ֵ�ʩ��������������վ', '���˽ֵ�ʩ��������������վ', null, null, '15', 6, '21011100504', 21011100504, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100503', '210111005', '�������ռ��������˽ֵ��߼�������������վ', '���˽ֵ��߼�������������վ', null, null, '15', 6, '21011100503', 21011100503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 700 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111006', '210111', '�������ռ����������ֵ�������������', '�����ֵ�������������', null, null, '04', 5, '210111006', 210111006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100607', '210111006', '�������ռ����������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011100607', 21011100607, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100601', '210111006', '�������ռ����������ֵ����������������վ', '�����ֵ����������������վ', null, null, '15', 6, '21011100601', 21011100601, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100608', '210111006', '�������ռ����������ֵ���У������������վ', '�����ֵ���У������������վ', null, null, '15', 6, '21011100608', 21011100608, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100609', '210111006', '�������ռ����������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011100609', 21011100609, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100602', '210111006', '�������ռ����������ֵ���ҵ������������վ', '�����ֵ���ҵ������������վ', null, null, '15', 6, '21011100602', 21011100602, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100606', '210111006', '�������ռ����������ֵ���ɽ������������վ', '�����ֵ���ɽ������������վ', null, null, '15', 6, '21011100606', 21011100606, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100604', '210111006', '�������ռ����������ֵ���������������վ', '�����ֵ���������������վ', null, null, '15', 6, '21011100604', 21011100604, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100415', '210111004', '�������ռ������ٺ��ֵ������������', '�ٺ��ֵ������������', null, null, '15', 6, '21011100415', 21011100415, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111003', '210111', '�������ռ����������ֵ�������������', '�����ֵ�������������', null, null, '04', 5, '210111003', 210111003, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100302', '210111003', '�������ռ����������ֵ��غ�������������վ', '�����ֵ��غ�������������վ', null, null, '15', 6, '21011100302', 21011100302, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100306', '210111003', '�������ռ����������ֵ��Ͻ�������������վ', '�����ֵ��Ͻ�������������վ', null, null, '15', 6, '21011100306', 21011100306, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100309', '210111003', '�������ռ����������ֵ�����լ������������վ', '�����ֵ�����լ������������վ', null, null, '15', 6, '21011100309', 21011100309, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100308', '210111003', '�������ռ����������ֵ��ٺ�������������վ', '�����ֵ��ٺ�������������վ', null, null, '15', 6, '21011100308', 21011100308, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111008', '210111', '�������ռ�����Ҧǧ�ֵ�������������', 'Ҧǧ�ֵ�������������', null, null, '04', 5, '210111008', 210111008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100807', '210111008', '�������ռ�����Ҧǧ�ֵ����߷���������', 'Ҧǧ�ֵ����߷���������', null, null, '15', 6, '21011100807', 21011100807, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100808', '210111008', '�������ռ�����Ҧǧ�ֵ���̨��������', 'Ҧǧ�ֵ���̨��������', null, null, '15', 6, '21011100808', 21011100808, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100811', '210111008', '�������ռ�����Ҧǧ�ֵ�С���ʹ�������', 'Ҧǧ�ֵ�С���ʹ�������', null, null, '15', 6, '21011100811', 21011100811, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100805', '210111008', '�������ռ�����Ҧǧ�ֵ���̫ƽ��������', 'Ҧǧ�ֵ���̫ƽ��������', null, null, '15', 6, '21011100805', 21011100805, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100804', '210111008', '�������ռ�����Ҧǧ�ֵ���ǧ��������', 'Ҧǧ�ֵ���ǧ��������', null, null, '15', 6, '21011100804', 21011100804, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100816', '210111008', '�������ռ�����Ҧǧ�ֵ�١�Ҵ�������', 'Ҧǧ�ֵ�١�Ҵ�������', null, null, '15', 6, '21011100816', 21011100816, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100802', '210111008', '�������ռ�����Ҧǧ�ֵ���������������', 'Ҧǧ�ֵ���������������', null, null, '15', 6, '21011100802', 21011100802, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100813', '210111008', '�������ռ�����Ҧǧ�ֵ���ǧ�󷿴�������', 'Ҧǧ�ֵ���ǧ�󷿴�������', null, null, '15', 6, '21011100813', 21011100813, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201035', '210112010', '�����л������������������������������ֵ�����Է������������վ', '�����ֵ�����Է������������վ', null, null, '04', 5, '21011201035', 21011201035, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201036', '210112010', '�����л������������������������������ֵ�����̨��������', '�����ֵ�����̨��������', null, null, '04', 5, '21011201036', 21011201036, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201037', '210112010', '�����л������������������������������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201037', 21011201037, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201038', '210112010', '�����л������������������������������ֵ������࿲��������', '�����ֵ������࿲��������', null, null, '04', 5, '21011201038', 21011201038, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201039', '210112010', '�����л������������������������������ֵ�Ӫ�̳��ʴ�������', '�����ֵ�Ӫ�̳��ʴ�������', null, null, '04', 5, '21011201039', 21011201039, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201040', '210112010', '�����л������������������������������ֵ�Ӫ�̴�������', '�����ֵ�Ӫ�̴�������', null, null, '04', 5, '21011201040', 21011201040, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201041', '210112010', '�����л������������������������������ֵ��ܹ�����������', '�����ֵ��ܹ�����������', null, null, '04', 5, '21011201041', 21011201041, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201042', '210112010', '�����л������������������������������ֵ���ˮһ��������������վ', '�����ֵ���ˮһ��������������վ', null, null, '04', 5, '21011201042', 21011201042, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201043', '210112010', '�����л������������������������������ֵ��Źٴ�������', '�����ֵ��Źٴ�������', null, null, '04', 5, '21011201043', 21011201043, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201401', '210112014', '�������߿����������������İ�԰����', '��԰����', null, null, '04', 5, '21011201401', 21011201401, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201402', '210112014', '�������߿����������������Ĵ������', '�������', null, null, '04', 5, '21011201402', 21011201402, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201403', '210112014', '�������߿����������������ĸ߿�����', '�߿�����', null, null, '04', 5, '21011201403', 21011201403, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201404', '210112014', '�������߿����������������ĸ߿�һ����', '�߿�һ����', null, null, '04', 5, '21011201404', 21011201404, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400710', '210114007', '�������ں�������ֵ�����������������վ', '����ֵ�����������������վ', null, null, '15', 6, '21011400710', 21011400710, null, null, null, null, '�������ں�����ɽ·101��2-2', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400104', '210114005', '�������ں���ӭ��·�ֵ�ӭ����԰������������վ', 'ӭ��·�ֵ�ӭ����԰������������վ', null, null, '15', 6, '21011400104', 21011400104, null, null, null, null, '�ں������·8��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400901', '210114009', '�������ں���ɳ��ֵ�԰��������������վ', 'ɳ��ֵ�԰��������������վ', null, null, '15', 6, '21011400901', 21011400901, null, null, null, null, '�ں���ɳ��ֵ�԰������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114013', '210114', '�������ں�����������������Ժ', '�ں�����������������Ժ', null, null, '04', 5, '210114013', 210114013, null, null, null, null, '�������ں�������������ʮ�Ҵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400304', '210114003', '�������ں��������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011400304', 21011400304, null, null, null, null, '�������ں�����ɽ·12��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114213', '210114', '�������ں����ϱ�����Ժ', '�ں����ϱ�����Ժ', null, null, '04', 5, '210114213', 210114213, null, null, null, null, '�������ں�����Խֵ���̨��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401104', '210114011', '�������ں����Ƕ��ֵ�������������������վ', '�Ƕ��ֵ�������������������վ', null, null, '15', 6, '21011401104', 21011401104, null, null, null, null, '�������ں�����������207-2������22��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400709', '210114007', '�������ں�������ֵ�����������������վ', '����ֵ�����������������վ', null, null, '15', 6, '21011400709', 21011400709, null, null, null, null, '����ʡ�������ں�����ɽ��·165-5�ţ�6��¥��1��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114005', '210114', '�������ں����ں�����������������', '�ں����ں�����������������', null, null, '04', 5, '210114005', 210114005, null, null, null, null, '�������ں���̫����7��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401103', '210114011', '�������ں����Ƕ����ֵ�����100������������վ', '�Ƕ����ֵ�����100������������վ', null, null, '15', 6, '21011401103', 21011401103, null, null, null, null, '�������ں�����������30-2��9��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400103', '210114005', '�������ں���ӭ��·�ֵ�����԰������������վ', 'ӭ��·�ֵ�����԰������������վ', null, null, '15', 6, '21011400103', 21011400103, null, null, null, null, ' �������ں�������·16-1��4��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400711', '210114007', '�������ں�������ֵ��ƶ�������������վ', '����ֵ��ƶ�������������վ', null, null, '15', 6, '21011400711', 21011400711, null, null, null, null, '�������ں�����ɽ·60-11��2.3��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400102', '210114005', '�������ں���ӭ��·�ֵ�����������������վ', 'ӭ��·�ֵ�����������������վ', null, null, '15', 6, '21011400102', 21011400102, null, null, null, null, '�������ں�����ҵ��·11��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400704', '210114007', '�������ں�������ֵ�������������������վ', '����ֵ�������������������վ', null, null, '15', 6, '21011400704', 21011400704, null, null, null, null, '�ں�������ֵ�͡����G2-6��10��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122117', '210122', '�������ϴ�������Ժ', '�ϴ�������Ժ', null, null, '04', 5, '210122117', 210122117, null, null, null, null, '�����ϴ﷿��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122107', '210122', '��������������������', '��������������', null, null, '04', 5, '210122107', 210122107, null, null, null, null, '������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122103', '210122', '���������ӱ�������Ժ', '���������ӱ�������', null, null, '04', 5, '210122103', 210122103, null, null, null, null, '���������ӱ�������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122119', '210122', '������ţ����������Ժ', 'ţ����������Ժ', null, null, '04', 5, '210122119', 210122119, null, null, null, null, '������ţ�����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122115', '210122', '�������˼ұ�������Ժ', '�˼ұ�������Ժ', null, null, '04', 5, '210122115', 210122115, null, null, null, null, '�����˼ұ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122112', '210122', '�����سǽ�������Ժ', '�����سǽ�������Ժ', null, null, '04', 5, '210122112', 210122112, null, null, null, null, '���гǽ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122116', '210122', '�������Ϲ���������Ժ', '�Ϲ���������Ժ', null, null, '04', 5, '210122116', 210122116, null, null, null, null, '�����Ϲ������Ϲ����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122109', '210122', '������Фկ��������Ժ', '������Фկ��������Ժ', null, null, '04', 5, '210122109', 210122109, null, null, null, null, '������Фկ�Ŵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122102', '210122', '��������ҷ�������Ժ', '��������ҷ�������Ժ', null, null, '04', 5, '210122102', 210122102, null, null, null, null, '��������ҷ�����ҷ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122114', '210122', '��������ʿ��������Ժ', '��ʿ��������Ժ', null, null, '04', 5, '210122114', 210122114, null, null, null, null, '������ʿ������ǰ��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122108', '210122', '��������������ʿ��������Ժ', '��������ʿ��������Ժ', null, null, '04', 5, '210122108', 210122108, null, null, null, null, '������ʿ����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122105', '210122', '�����صڶ�����ҽԺ', '�����صڶ�����ҽԺ', null, null, '04', 5, '210122105', 210122105, null, null, null, null, '���д�������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122104', '210122', '������������������Ժ', '������������������Ժ', null, null, '04', 5, '210122104', 210122104, null, null, null, null, '������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123101', '210123', 'С������������Ժ', 'С������������Ժ', null, null, '04', 5, '210123101', 210123101, null, null, null, null, '��ƽ��С������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102022', '210102', '��ƽ��̫ԭ������������������', '��ƽ��̫ԭ������������������', null, null, '04', 5, '210102022', 210102022, null, '23214760', null, null, '�����к�ƽ��ͬ���Ͻ�79��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102021', '210102', '��ƽ����������������������', '��ƽ����������������������', null, null, '04', 5, '210102021', 210102021, null, '23733998', null, null, '�����к�ƽ�����׽�117��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102007', '210102', '��ƽ����������������������', '��ƽ����������������������', null, null, '04', 5, '210102007', 210102007, null, '23472360', null, null, '�����к�ƽ��������85��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102001', '210102', '��ƽ�����������������������', '��ƽ�����������������������', null, null, '04', 5, '210102001', 210102001, null, '02423317542', null, null, '�����к�ƽ��ɰ��·3��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102023', '210102', '��ƽ����������������������', '��ƽ����������������������', null, null, '04', 5, '210102023', 210102023, null, '82511189', null, null, '�����к�ƽ��������·60��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102013', '210102', '��ƽ�����г�����������������', '��ƽ�����г�����������������', null, null, '04', 5, '210102013', 210102013, null, '23863818', null, null, '�����к�ƽ�����ľ���5��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102029', '210102', '��ƽ����վ����������������', '��ƽ����վ����������������', null, null, '04', 5, '210102029', 210102029, null, '23834230', null, null, '�����к�ƽ����ɽ·35��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200103', '210102001', '�����к�ƽ�������ֵ�ɰɽ�´�������������վ', '�����ֵ�ɰɽ�´�������������վ', null, null, '15', 6, '21010200103', 21010200103, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105027', '210105', '�����лʹ���ŭ������������������', '�ʹ���ŭ������������������', null, null, '04', 5, '210105027', 210105027, null, null, null, null, '�����лʹ�����ɽ��·169��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111106', '210111', '�������ռ�������Ժ', '�������ռ�������Ժ', null, null, '04', 5, '210111106', 210111106, null, null, null, null, '�������ռ��������������ɽ·27��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106013', '210106', '�Լ�����������������', '�Լ�����������������', null, null, '04', 5, '210106013', 210106013, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106014', '210106', '�������������������', '�������������������', null, null, '04', 5, '210106014', 210106014, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601501', '210106015', '�Ÿ�����������', '�Ÿ�����������', null, null, '15', 6, '21010601501', 21010601501, null, '89311670', null, null, '�������ں����߻����Ÿ�����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601502', '210106015', '���Ǵ�������', '���Ǵ�������', null, null, '15', 6, '21010601502', 21010601502, null, '29328460', null, null, '�������ں����߻������Ǵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601503', '210106015', '���Ҵ�������', '���Ҵ�������', null, null, '15', 6, '21010601503', 21010601503, null, '29328298', null, null, '�������ں����߻��򳵼Ҵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601601', '210106016', '�������Ӵ�������', '�������Ӵ�������', null, null, '15', 6, '21010601601', 21010601601, null, '87790694', null, null, '�������ں������������������Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601602', '210106016', '�������Ӵ�������', '�������Ӵ�������', null, null, '15', 6, '21010601602', 21010601602, null, '87991542', null, null, '���������������������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601603', '210106016', '�����Ӵ�������', '�����Ӵ�������', null, null, '15', 6, '21010601603', 21010601603, null, '13998287588', null, null, '�������������������������Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601604', '210106016', '���������', '���������', null, null, '15', 6, '21010601604', 21010601604, null, '87797602', null, null, '����������������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601605', '210106016', 'ǰ��������', 'ǰ��������', null, null, '15', 6, '21010601605', 21010601605, null, '87796976', null, null, '�������ں�����������ǰ��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601606', '210106016', '�¶���������', '�¶���������', null, null, '15', 6, '21010601606', 21010601606, null, '87796082', null, null, '�������ں������������¶���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601701', '210106017', '����̨���һ������', '����̨���һ������', null, null, '15', 6, '21010601701', 21010601701, null, '13124243529', null, null, '�����������س�̲������̨��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601702', '210106017', '��̨�Ӵ��һ������', '��̨�Ӵ��һ������', null, null, '15', 6, '21010601702', 21010601702, null, '87788306', null, null, '�����������س�̲����̨�Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601703', '210106017', '�żҴ��һ������', '�żҴ��һ������', null, null, '15', 6, '21010601703', 21010601703, null, '13002447237', null, null, '�����������س�̲���żҴ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601704', '210106017', 'Ӣ���Ӵ��һ������', 'Ӣ���Ӵ��һ������', null, null, '15', 6, '21010601704', 21010601704, null, '15840327045', null, null, '�����������س�̲��Ӣ���Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601705', '210106017', '������һ������', '������һ������', null, null, '15', 6, '21010601705', 21010601705, null, '13840257428', null, null, '�����������س�̲�����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601706', '210106017', 'Сأ�����һ������', 'Сأ�����һ������', null, null, '15', 6, '21010601706', 21010601706, null, '87789688', null, null, '�����������س�̲��Сأ����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601707', '210106017', '�������һ������', '�������һ������', null, null, '15', 6, '21010601707', 21010601707, null, '87788402', null, null, '�����������س�̲��������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601708', '210106017', '�������һ������', '�������һ������', null, null, '15', 6, '21010601708', 21010601708, null, '15998371122', null, null, '�����������س�̲��������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601709', '210106017', 'ǰ����һ������', 'ǰ����һ������', null, null, '15', 6, '21010601709', 21010601709, null, '87781780', null, null, '�����������س�̲��ǰ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601710', '210106017', '���ִ��һ������', '���ִ��һ������', null, null, '15', 6, '21010601710', 21010601710, null, '87781134', null, null, '�����������س�̲�򶫽ִ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601801', '210106018', '���Ŵ�������', '���Ŵ�������', null, null, '15', 6, '21010601801', 21010601801, null, '89339964', null, null, '�������ں������������Ŵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601802', '210106018', '����ڶ�������', '����ڶ�������', null, null, '15', 6, '21010601802', 21010601802, null, '89333045', null, null, '�������ں�������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601803', '210106018', '���˴�ڶ�������', '���˴�ڶ�������', null, null, '15', 6, '21010601803', 21010601803, null, '89892566', null, null, '�������ں�����������˴�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601901', '210106019', '�ķ�̨�����������', '�ķ�̨�����������', null, null, '15', 6, '21010601901', 21010601901, null, '13704042698', null, null, '�������������ķ�̨���ķ�̨��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601902', '210106019', '������һ������', '������һ������', null, null, '15', 6, '21010601902', 21010601902, null, '13840057335', null, null, '�������������ķ�̨�������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 800 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601903', '210106019', 'ƽ������ڶ�������', 'ƽ������ڶ�������', null, null, '15', 6, '21010601903', 21010601903, null, '87779307', null, null, '�������������ķ�̨��ƽ������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601904', '210106019', '̫ƽׯ���һ������', '̫ƽׯ���һ������', null, null, '15', 6, '21010601904', 21010601904, null, '13940328408', null, null, '���������ķ�̨��̫ƽׯ��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601905', '210106019', 'ʤ�������������', 'ʤ�������������', null, null, '15', 6, '21010601905', 21010601905, null, '13889192119', null, null, '�������������ķ�̨��ʤ����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601906', '210106019', '���Ҵ��һ������', '���Ҵ��һ������', null, null, '15', 6, '21010601906', 21010601906, null, '87774877', null, null, '�������������ķ�̨�����Ҵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601907', '210106019', '����̨���һ������', '����̨���һ������', null, null, '15', 6, '21010601907', 21010601907, null, '13609828693', null, null, '�������������ķ�̨�����̨��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601908', '210106019', '�������ڶ�������', '�������ڶ�������', null, null, '15', 6, '21010601908', 21010601908, null, '13893992225', null, null, '�������������ķ�̨���������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602001', '210106020', '�����������', '�����������', null, null, '15', 6, '21010602001', 21010602001, null, '89339641', null, null, '�������ں��������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602002', '210106020', 'ǰ����̨��������', 'ǰ����̨��������', null, null, '15', 6, '21010602002', 21010602002, null, '13019324726', null, null, '�������ں���������ǰ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602003', '210106020', '˫�����Ӵ�������', '˫�����Ӵ�������', null, null, '15', 6, '21010602003', 21010602003, null, '89338482', null, null, '�������ں���������˫����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602004', '210106020', '������̨��������', '������̨��������', null, null, '15', 6, '21010602004', 21010602004, null, '13604036362', null, null, '�������ں��������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602005', '210106020', '�����Ӵ�������', '�����Ӵ�������', null, null, '15', 6, '21010602005', 21010602005, null, '89330757', null, null, '�����������������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010602006', '210106020', '�̼�̨�Ӵ�������', '�̼�̨�Ӵ�������', null, null, '15', 6, '21010602006', 21010602006, null, '89339315', null, null, '�������ں���������̼Ҵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601301', '210106013', '�ɼҴ�������', '�ɼҴ�������', null, null, '15', 6, '21010601301', 21010601301, null, '13940317033', null, null, '�������������Լ����ɼҴ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601201', '210106012', '������������', '������������', null, null, '15', 6, '21010601201', 21010601201, null, '25291235', null, null, '��������������ʿ��������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601202', '210106012', '������������', '������������', null, null, '15', 6, '21010601202', 21010601202, null, '89353062', null, null, '������������������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010601203', '210106012', '��ģ��ڶ�������', '��ģ��ڶ�������', null, null, '15', 6, '21010601203', 21010601203, null, '25355125', null, null, '��������������ʿ���Į��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201702', '210102017', '�����к�ƽ�����ͽֵ��⸴��������������վ', '���ͽֵ��⸴��������������վ', null, null, '15', 6, '21010201702', 21010201702, null, null, null, null, '�����к�ƽ���Ͼ���·84��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301801', '210103018', '���������������ӽֵ�����������������վ', '���������ӽֵ�����������������վ', null, null, '15', 6, '21010301801', 21010301801, null, null, null, null, '������������Ļ�·72��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010022', '2101', '�����м������ģ�120��', '������120', 'SYSJJZX120', null, '02', 3, '21010022', 22, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010023', '2101', '�����м���Ԥ����������', '�����м�������', 'SYSJBYFKZZ', null, '02', 3, '21010023', 23, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124203', '210124', '�����غ�ƽ������Ժ', '�����غ�ƽ������Ժ', null, null, '04', 5, '210124203', 210124203, null, null, null, null, '�����غ�ƽ���ƽ��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124202', '210124', '�������ϼ�������Ժ', '�������ϼ�������Ժ', null, null, '04', 5, '210124202', 210124202, null, null, null, null, '�������������ϼҴ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124201', '210124', '�����شȶ���������Ժ', '�����شȶ���������Ժ', null, null, '04', 5, '210124201', 210124201, null, null, null, null, '�����شȶ�����ȶ��´�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124107', '210124', '�����ض��ҷ�����������Ժ', '�����ض��ҷ�����������Ժ', null, null, '04', 5, '210124107', 210124107, null, null, null, null, '�����ض��ҷ��򶡼ҷ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124102', '210124', '���������洬������Ժ', '���������洬������Ժ', null, null, '04', 5, '210124102', 210124102, null, null, null, null, '���������洬�a���洬��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124106', '210124', '�����ذؼҹ�����������Ժ', '�����ذؼҹ�����������Ժ', null, null, '04', 5, '210124106', 210124106, null, null, null, null, '�����ذؼҹ���ؼҴ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124104', '210124', '������Ҷį̈������Ժ', '������Ҷį̈������Ժ', null, null, '04', 5, '210124104', 210124104, null, null, null, null, '������Ҷį̈��Ҷį̈��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124204', '210124', '������ʮ�䷿������Ժ', '������ʮ�䷿������Ժ', null, null, '04', 5, '210124204', 210124204, null, null, null, null, '������ʮ�䷿��ʮ�䷿��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300102', '210113001', '��������', '��������', null, null, '15', 6, '21011300102', 21011300102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301506', '210113015', '��ʤ��������', '��ʤ��������', null, null, '15', 6, '21011301506', 21011301506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301502', '210113015', 'ʯ���¶���������', 'ʯ���¶���������', null, null, '15', 6, '21011301502', 21011301502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300505', '210113005', '��¡̨��������', '��¡̨��������', null, null, '15', 6, '21011300505', 21011300505, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300501', '210113005', '�̹�̨��������', '�̹�̨��������', null, null, '15', 6, '21011300501', 21011300501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301508', '210113015', '���´�������', '���´�������', null, null, '15', 6, '21011301508', 21011301508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113015', '210113', 'ʯ���½ֵ�', 'ʯ���½ֵ�', null, null, '04', 5, '210113015', 210113015, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300507', '210113005', '�����������', '�����������', null, null, '15', 6, '21011300507', 21011300507, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301503', '210113015', '�ϼ�̨��������', '�ϼ�̨��������', null, null, '15', 6, '21011301503', 21011301503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500302', '210105003', '̫�������Ŷ�', '̫�������Ŷ�', null, null, '15', 6, '21010500302', 21010500302, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500602', '210105006', '���������ŶӶ�', '���������ŶӶ�', null, null, '15', 6, '21010500602', 21010500602, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500804', '210105008', '��ɽ�����Ŷ�', '��ɽ�����Ŷ�', null, null, '15', 6, '21010500804', 21010500804, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501006', '210105010', '�㱦�Ŷ�', '�㱦�Ŷ�', null, null, '15', 6, '21010501006', 21010501006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501102', '210105011', '������������������Ŷ�', '������������������Ŷ�', null, null, '15', 6, '21010501102', 21010501102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500101', '210105001', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500101', 21010500101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500401', '210105004', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500401', 21010500401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500308', '210105003', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500308', 21010500308, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105008', '210105', '��Ȫ����������������', '��Ȫ����������������', null, null, '04', 5, '210105008', 210105008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500307', '210105003', 'ŭ���������Ŷ�', 'ŭ���������Ŷ�', null, null, '15', 6, '21010500307', 21010500307, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501001', '210105010', 'վ���Ŷ�', 'վ���Ŷ�', null, null, '15', 6, '21010501001', 21010501001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500704', '210105007', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500704', 21010500704, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501005', '210105010', '��ɽ�Ŷ�', '��ɽ�Ŷ�', null, null, '15', 6, '21010501005', 21010501005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500407', '210105004', '̩ɽ����', '̩ɽ����', null, null, '15', 6, '21010500407', 21010500407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501008', '210105010', 'ƽ���Ŷ�', 'ƽ���Ŷ�', null, null, '15', 6, '21010501008', 21010501008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500807', '210105008', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010500807', 21010500807, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501109', '210105011', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010501109', 21010501109, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500112', '210105001', '�书ɽ�Ŷ�', '�书ɽ�Ŷ�', null, null, '15', 6, '21010500112', 21010500112, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500905', '210105009', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500905', 21010500905, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501101', '210105011', '����������������һ�Ŷ�', '����������������һ�Ŷ�', null, null, '15', 6, '21010501101', 21010501101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501112', '210105011', '����ŷ�������Ŷ�', '����ŷ�������Ŷ�', null, null, '15', 6, '21010501112', 21010501112, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500903', '210105009', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500903', 21010500903, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501605', '210105016', '÷�����Ŷ�', '÷�����Ŷ�', null, null, '15', 6, '21010501605', 21010501605, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501202', '210105012', '�������Ŷ�', '�������Ŷ�', null, null, '15', 6, '21010501202', 21010501202, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500605', '210105006', '���������Ŷ���', '���������Ŷ���', null, null, '15', 6, '21010500605', 21010500605, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501105', '210105011', '̩�������Ŷ�', '̩�������Ŷ�', null, null, '15', 6, '21010501105', 21010501105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501104', '210105011', '���������Ŷ�', '���������Ŷ�', null, null, '15', 6, '21010501104', 21010501104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500406', '210105004', '�����Ŷ�', '�����Ŷ�', null, null, '15', 6, '21010500406', 21010500406, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105002', '210105', '��ɽ����������������', '��ɽ����������������', null, null, '04', 5, '210105002', 210105002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105007', '210105', '����������������������', '����������������������', null, null, '04', 5, '210105007', 210105007, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500509', '210105005', '��������ҽʦ�Ŷ�', '��������ҽʦ�Ŷ�', null, null, '15', 6, '21010500509', 21010500509, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501108', '210105011', '������������������Ŷ�', '������������������Ŷ�', null, null, '15', 6, '21010501108', 21010501108, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501311', '210105013', '®ɽ�Ŷ�', '®ɽ�Ŷ�', null, null, '15', 6, '21010501311', 21010501311, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010501402', '210105014', '�书ɽ�Ŷ�', '�书ɽ�Ŷ�', null, null, '15', 6, '21010501402', 21010501402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123208', '210123', 'ɳ��������Ժ', 'ɳ��������Ժ', null, null, '04', 5, '210123208', 210123208, null, null, null, null, '��ƽ��ɳ��̨���������ڵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181110', '210181', '�����з���ţ����Ժ', '�����з���ţ����Ժ', null, null, '04', 5, '210181110', 210181110, null, null, null, null, '�����з���ţ��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122201', '210122', '�������Ѷ��ֵ�������������', '�Ѷ��ֵ�������������', null, null, '04', 5, '210122201', 210122201, null, null, null, null, '����������', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122106', '210122', '�����ش�����������Ժ', '�����ش�����������Ժ', null, null, '04', 5, '210122106', 210122106, null, null, null, null, '���д�������', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122101', '210122', '�������ڼҷ�������Ժ', '�������ڼҷ�������Ժ', null, null, '04', 5, '210122101', 210122101, null, null, null, null, '�ڼҷ���', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210002', '210122100', '�������������������»�������������վ', '�������»�������������վ', null, null, '15', 6, '21012210002', 21012210002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210003', '210122100', '����������������������������������վ', '����������������������վ', null, null, '15', 6, '21012210003', 21012210003, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210004', '210122100', '�������������������˹�������������վ', '�������˹�������������վ', null, null, '15', 6, '21012210004', 21012210004, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210009', '210122100', '�������������������¹�������������վ', '�������¹�������������վ', null, null, '15', 6, '21012210009', 21012210009, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210018', '210122100', '�����������������򱱻�������������վ', '�����򱱻�������������վ', null, null, '15', 6, '21012210018', 21012210018, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210021', '210122100', '������������������С��ţ��������', '������С��ţ��������', null, null, '15', 6, '21012210021', 21012210021, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012210022', '210122100', '������������������˾ţ��������', '������˾ţ��������', null, null, '15', 6, '21012210022', 21012210022, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220101', '210122201', '�������������������ڲ�ţ��������', '�������ڲ�ţ��������', null, null, '15', 6, '21012220101', 21012220101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012220103', '210122201', '����������������������ʹ�������', '����������ʹ�������', null, null, '15', 6, '21012220103', 21012220103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124208', '210124', '�������ļ����ɹ�������������Ժ', '�������ļ����ɹ�������������Ժ', null, null, '04', 5, '210124208', 210124208, null, null, null, null, '�������ļ����ɹ������ļ��Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124101', '210124', '�����ش�¼�������������Ժ', '�����ش�¼�������������Ժ', null, null, '04', 5, '210124101', 210124101, null, null, null, null, '�����ش�¼������¼��Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124210', '210124', '��������ţʯ������Ժ', '��������ţʯ������Ժ', null, null, '04', 5, '210124210', 210124210, null, null, null, null, '��������ţʯ����ţʯ��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124105', '210124', '�����ص��˱�������Ժ', '�����ص��˱�������Ժ', null, null, '04', 5, '210124105', 210124105, null, null, null, null, '�����ص��˱�����˱���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124209', '210124', '������˫̨��������Ժ', '������˫̨��������Ժ', null, null, '04', 5, '210124209', 210124209, null, null, null, null, '������˫̨����˫̨�Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181103', '210181', '�����й���������������Ժ', '�����й���������������Ժ', null, null, '04', 5, '210181103', 210181103, null, null, null, null, '�����й�������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181107', '210181', '�����д���������������Ժ', '�����д���������������Ժ', null, null, '04', 5, '210181107', 210181107, null, null, null, null, '�����д�������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181105', '210181', '������ǰ����������Ժ', '������ǰ����������Ժ', null, null, '04', 5, '210181105', 210181105, null, null, null, null, '������ǰ������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181202', '210181', '�����и�̨��������Ժ', '�����и�̨��������Ժ', null, null, '04', 5, '210181202', 210181202, null, null, null, null, '�����и�̨����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181207', '210181', '������Ҧ��������Ժ', '������Ҧ��������Ժ', null, null, '04', 5, '210181207', 210181207, null, null, null, null, '������Ҧ����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181111', '210181', '���������ӹ�����Ժ', '���������ӹ�����Ժ', null, null, '04', 5, '210181111', 210181111, null, null, null, null, '���������ӹ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181211', '210181', '�����ж���ɽ��������Ժ', '�����ж���ɽ��������Ժ', null, null, '04', 5, '210181211', 210181211, null, null, null, null, '�����ж���ɽ����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018110801', '210181108', '�����д�����������Ժ', '�����д�����������Ժ', null, null, '04', 5, '21018110801', 21018110801, null, null, null, null, '�����д�������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181213', '210181', '�������޼ҷ�������Ժ', '�������޼ҷ�������Ժ', null, null, '04', 5, '210181213', 210181213, null, null, null, null, '�������޼ҷ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181101', '210181', '�����д��������������Ժ', '�����д��������������Ժ', null, null, '04', 5, '210181101', 210181101, null, null, null, null, '�����д������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 900 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181104', '210181', '��������¡����������Ժ', '��������¡����������Ժ', null, null, '04', 5, '210181104', 210181104, null, null, null, null, '��������¡��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181208', '210181', '����������������Ժ', '����������������Ժ', null, null, '04', 5, '210181208', 210181208, null, null, null, null, '��������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181102', '210181', '��������ɽ��������Ժ', '��������ɽ��������Ժ', null, null, '04', 5, '210181102', 210181102, null, null, null, null, '��������ɽ��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181212', '210181', '����������������Ժ', '����������������Ժ', null, null, '04', 5, '210181212', 210181212, null, null, null, null, '�������ռ�����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181216', '210181', '�������ż���������Ժ', '�������ż���������Ժ', null, null, '04', 5, '210181216', 210181216, null, null, null, null, '�������ż�����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181204', '210181', '�����н���̨��������Ժ', '�����н���̨��������Ժ', null, null, '04', 5, '210181204', 210181204, null, null, null, null, '�����н���̨����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181108', '210181', '��������¡��������Ժ', '��������¡��������Ժ', null, null, '04', 5, '210181108', 210181108, null, null, null, null, '��������¡����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181210', '210181', '��������ũ��������Ժ', '��������ũ��������Ժ', null, null, '04', 5, '210181210', 210181210, null, null, null, null, '��������ũ����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181109', '210181', '�����к�̨����Ժ', '�����к�̨����Ժ', null, null, '04', 5, '210181109', 210181109, null, null, null, null, '�����к�̨��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181005', '210181', '�����гǽ�������Ժ', '�����гǽ�������Ժ', null, null, '04', 5, '210181005', 210181005, null, null, null, null, '�����гǽ�������Ժ', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181209', '210181', '�������ڼ��ѱ�������Ժ', '�������ڼ��ѱ�������Ժ', null, null, '04', 5, '210181209', 210181209, null, null, null, null, '�������ڼ��ѱ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181206', '210181', '������¬����������Ժ', '������¬����������Ժ', null, null, '04', 5, '210181206', 210181206, null, null, null, null, '������¬������«�ʹ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181205', '210181', '�����к���������Ժ', '�����к���������Ժ', null, null, '04', 5, '210181205', 210181205, null, null, null, null, '�����к�����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181214', '210181', '��������������������Ժ', '��������������������Ժ', null, null, '04', 5, '210181214', 210181214, null, null, null, null, '����������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113204', '210113', '����������������������Ժ', '����������Ժ', null, null, '04', 5, '210113204', 210113204, null, null, null, null, '���������������Ҵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124100', '210124', '�����ط���������Ժ', '�����ط���������Ժ', null, null, '04', 5, '210124100', 210124100, null, null, null, null, '�����ط��������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124205', '210124', '�����ط뱴��������Ժ', '�����ط뱴��������Ժ', null, null, '04', 5, '210124205', 210124205, null, null, null, null, '�����ط뱴����뱴����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103022', '210103', '�����������־������������������', '�����־������������������', null, null, '04', 5, '210103022', 210103022, null, null, null, null, '�����������С��·25-2��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105025', '210105', '�����лʹ�����ɽ����������������', '�ʹ�����ɽ����������������', null, null, '04', 5, '210105025', 210105025, null, null, null, null, '�����лʹ��������ӽ�14��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112024', '210112', '����������������������', '����������������', null, null, '04', 5, '210112024', 210112024, null, null, null, null, '�����л����������ֵ��������Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113001', '210113', '�³��ӽֵ�������������', '�³��ӽֵ�������������', null, null, '04', 5, '210113001', 210113001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400302', '210114003', '�������ں��������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011400302', 21011400302, null, null, null, null, '�ں�����������62-22��4��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401107', '210114011', '�������ں����Ƕ����ֵ���ͭ������������վ', '�Ƕ����ֵ���ͭ������������վ', null, null, '15', 6, '21011401107', 21011401107, null, null, null, null, '�������ں�����������235-40��3��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114012', '210114', '�������ں���ƽ������Ժ', '�ں���ƽ������Ժ', null, null, '04', 5, '210114012', 210114012, null, null, null, null, '�������ں���ƽ�޽ֵ�ƽ���н�60��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124207', '210124', '��������̨��������Ժ', '��������̨��������Ժ', null, null, '04', 5, '210124207', 210124207, null, null, null, null, '��������̨������̨�Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201302', '210102013', '�����к�ƽ�����г����Խ�������������վ', '���г����Խ�������������վ', null, null, '15', 6, '21010201302', 21010201302, null, null, null, null, '�����к�ƽ���Ƽ�����33��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202101', '210102021', '�����к�ƽ�������������������������վ', '�����������������������վ', null, null, '15', 6, '21010202101', 21010202101, null, null, null, null, '�����к�ƽ���к�·9-1��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200202', '210102002', '�����к�ƽ���»��ֵ��˴�������������վ', '�»��ֵ��˴�������������վ', null, null, '15', 6, '21010200202', 21010200202, null, null, null, null, '�����к�ƽ��������·48��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600001', '210106', '�������ü�������������ҽԺ', '�������ü�������������ҽԺ', null, null, '14', 4, '21010600001', 21010600001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400001', '210104', '�����д�������ҽԺ', '�����д�������ҽԺ', null, null, '01', 4, '21010400001', 21010400001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105023', '210105', '�����лʹ�����������������������', '�ʹ�����������������������', null, null, '04', 5, '210105023', 210105023, null, null, null, null, '�����лʹ�����ɽ��·33��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110109', '210111015', '�������ռ�������һ�ֵ���һ������������վ', '��һ������������վ', null, null, '15', 6, '21011110109', 21011110109, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110104', '210111015', '�������ռ�������һ�ֵ���һ������������', '��һ�ֵ���һ������������', null, null, '15', 6, '21011110104', 21011110104, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110105', '210111015', '�������ռ�������һ�ֵ���һ��ʤ��������', '��һ�ֵ���һ��ʤ��������', null, null, '15', 6, '21011110105', 21011110105, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110111', '210111015', '�������ռ�������һ�ֵ���һ١�޴�������', '��һ١�޴�������', null, null, '15', 6, '21011110111', 21011110111, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110106', '210111015', '�������ռ�������һ�ֵ���һ�ʶ���������', '��һ�ֵ���һ�ʶ���������', null, null, '15', 6, '21011110106', 21011110106, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110102', '210111015', '�������ռ�������һ�ֵ���һ�˼��Ӵ�������', '��һ�ֵ���һ�˼��Ӵ�������', null, null, '15', 6, '21011110102', 21011110102, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110108', '210111015', '�������ռ�������һ�ֵ���һ�����Ӵ�������', '��һ�����Ӵ�������', null, null, '15', 6, '21011110108', 21011110108, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110107', '210111015', '�������ռ�������һ�ֵ���һ�����Ӵ�������', '��һ�����Ӵ�������', null, null, '15', 6, '21011110107', 21011110107, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110110', '210111015', '�������ռ�������һ�ֵ���һ����Ӫ��������', '��һ����Ӫ��������', null, null, '15', 6, '21011110110', 21011110110, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110103', '210111015', '�������ռ�������һ�ֵ���һ��˫��������', '��һ�ֵ���һ��˫��������', null, null, '15', 6, '21011110103', 21011110103, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111205', '210111', '�������ռ���������������������', '����������������', null, null, '04', 5, '210111205', 210111205, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120503', '210111205', '�������ռ���������󷶴�������', '����󷶴�������', null, null, '15', 6, '21011120503', 21011120503, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120504', '210111205', '�������ռ���������󹵴�������', '����󹵴�������', null, null, '15', 6, '21011120504', 21011120504, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120501', '210111205', '�������ռ�����������ʹ�������', '������ʹ�������', null, null, '15', 6, '21011120501', 21011120501, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120515', '210111205', '�������ռ�����������Ǵ�������', '������Ǵ�������', null, null, '15', 6, '21011120515', 21011120515, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120509', '210111205', '�������ռ���������ç����������', '����ç����������', null, null, '15', 6, '21011120509', 21011120509, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120513', '210111205', '�������ռ�����������ɽ��������', '������ɽ��������', null, null, '15', 6, '21011120513', 21011120513, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120507', '210111205', '�������ռ�����������Ŵ�������', '������Ŵ�������', null, null, '15', 6, '21011120507', 21011120507, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120511', '210111205', '�������ռ�����������˫��������', '������˫��������', null, null, '15', 6, '21011120511', 21011120511, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111105', '210111', '�������ռ�����ʮ��ӽֵ�������������', 'ʮ��ӽֵ�������������', null, null, '04', 5, '210111105', 210111105, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110506', '210111105', '�������ռ�����ʮ��ӽֵ������������', 'ʮ��ӽֵ������������', null, null, '15', 6, '21011110506', 21011110506, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110510', '210111105', '�������ռ�����ʮ��ӽֵ���ׯ��������', 'ʮ��ӽֵ���ׯ��������', null, null, '15', 6, '21011110510', 21011110510, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110501', '210111105', '�������ռ�����ʮ��ӽֵ����Ŵ�������', 'ʮ��ӽֵ����Ŵ�������', null, null, '15', 6, '21011110501', 21011110501, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110502', '210111105', '�������ռ�����ʮ��ӽֵ��Ҳ˴�������', 'ʮ��ӽֵ��Ҳ˴�������', null, null, '15', 6, '21011110502', 21011110502, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110504', '210111105', '�������ռ�����ʮ��ӽֵ����Ӵ�������', 'ʮ��ӽֵ����Ӵ�������', null, null, '15', 6, '21011110504', 21011110504, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110505', '210111105', '�������ռ�����ʮ��ӽֵ�������������', 'ʮ��ӽֵ�������������', null, null, '15', 6, '21011110505', 21011110505, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111206', '210111', '�������ռ�����������������������', '������������������', null, null, '04', 5, '210111206', 210111206, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120603', '210111206', '�������ռ������������˳��������', '�������˳��������', null, null, '15', 6, '21011120603', 21011120603, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120602', '210111206', '�������ռ�����������˼ҹ���������', '������˼ҹ���������', null, null, '15', 6, '21011120602', 21011120602, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120607', '210111206', '�������ռ�����������̫ƽɽ��������', '������̫ƽɽ��������', null, null, '15', 6, '21011120607', 21011120607, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120601', '210111206', '�������ռ���������������������', '����������������', null, null, '15', 6, '21011120601', 21011120601, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120605', '210111206', '�������ռ����������翵��Ӫ��������', '�����翵��Ӫ��������', null, null, '15', 6, '21011120605', 21011120605, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120606', '210111206', '�������ռ�����������̨����������', '������̨����������', null, null, '15', 6, '21011120606', 21011120606, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120604', '210111206', '�������ռ����������翵��ɽ��������', '�����翵��ɽ��������', null, null, '15', 6, '21011120604', 21011120604, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103021', '210103', '�������������������������������', '�������������������������', null, null, '04', 5, '210103021', 210103021, null, null, null, null, '�����������Ȫ԰��·22��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103015', '210103', '���������������̳����������������', '���������̳����������������', null, null, '04', 5, '210103015', 210103015, null, null, null, null, '����������������60��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103011', '210103', '�����������ɽ��������������������', '�����ɽ��������������������', null, null, '04', 5, '210103011', 210103011, null, null, null, null, '�����������ʮ��γ·68��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104019', '210104', '�����д����ܳ�����������������', '�����ܳ�����������������', null, null, '04', 5, '210104019', 210104019, null, null, null, null, '�����ܳ��Ľ�76��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104018', '210104', '�����д���ǰ������Ժ', '�����д���ǰ������Ժ', null, null, '04', 5, '210104018', 210104018, null, null, null, null, '����ʡ�����ж�����ǰ�������ִ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105015', '210105', '�����лʹ�����������������������', '�����лʹ�����������������������', null, null, '04', 5, '210105015', 210105015, null, null, null, null, '�����лʹ����齭��130��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105012', '210105', '��������������������', '��������������������', null, null, '04', 5, '210105012', 210105012, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105028', '210105', '�����лʹ���������������������', '�ʹ���������������������', null, null, '04', 5, '210105028', 210105028, null, null, null, null, '�����лʹ�����ˮ��20��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105021', '210105', '�����лʹ�����������������������', '�ʹ�����������������������', null, null, '04', 5, '210105021', 210105021, null, null, null, null, '�����лʹ�����ɽ��·28��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105024', '210105', '�����лʹ���̩ɽ����������������', '�ʹ���̩ɽ����������������', null, null, '04', 5, '210105024', 210105024, null, null, null, null, '�����лʹ�����ɽ��·25��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105029', '210105', '�����лʹ�����������������������', '�ʹ�����������������������', null, null, '04', 5, '210105029', 210105029, null, null, null, null, '�����лʹ����ںӽ�56-4��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105026', '210105', '�����лʹ�����������������������', '�ʹ�����������������������', null, null, '04', 5, '210105026', 210105026, null, null, null, null, '�����лʹ������ֽ���11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105017', '210105', '����������ҽԺ', '����������ҽԺ', null, null, '04', 5, '210105017', 210105017, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122200', '210122', '�������ڲ�ţ������Ժ', '�ڲ�ţ������Ժ', null, null, '04', 5, '210122200', 210122200, null, null, null, null, '�����ڲ�ţ��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122118', '210122', '�����ش�ڸ���������Ժ', '��ڸ���������Ժ', null, null, '04', 5, '210122118', 210122118, null, null, null, null, '���д�����ڴ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120510', '210111205', '�������ռ���������ç���������ң�ʯ���ӣ�', '����ç���������ң�ʯ���ӣ�', null, null, '15', 6, '21011120510', 21011120510, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120514', '210111205', '�������ռ�����������ɽ�������ң���ɽ��', '������ɽ�������ң���ɽ��', null, null, '15', 6, '21011120514', 21011120514, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120512', '210111205', '�������ռ�����������˫�������ң���˫��', '������˫�������ң���˫��', null, null, '15', 6, '21011120512', 21011120512, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100803', '210111008', '�������ռ�����Ҧǧ�ֵ���ɽ��������', 'Ҧǧ�ֵ���ɽ��������', null, null, '15', 6, '21011100803', 21011100803, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100810', '210111008', '�������ռ�����Ҧǧ�ֵ��ڽ𹵴�������', 'Ҧǧ�ֵ��ڽ𹵴�������', null, null, '15', 6, '21011100810', 21011100810, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100812', '210111008', '�������ռ�����Ҧǧ�ֵ���ǧ��������', 'Ҧǧ�ֵ���ǧ��������', null, null, '15', 6, '21011100812', 21011100812, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100711', '210111007', '�������ռ�������ʢ�ֵ���ʢ��ڶ�������', '��ʢ�ֵ���ʢ��ڶ�������', null, null, '15', 6, '21011100711', 21011100711, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100721', '210111007', '�������ռ�������ʢ�ֵ��ĳɴ��һ������', '��ʢ�ֵ��ĳɴ��һ������', null, null, '15', 6, '21011100721', 21011100721, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100718', '210111007', '�������ռ�������ʢ�ֵ��ķ�̨���һ������', '��ʢ�ֵ��ķ�̨���һ������', null, null, '15', 6, '21011100718', 21011100718, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100720', '210111007', '�������ռ�������ʢ�ֵ��ķ�̨��Ӣ��������', '��ʢ�ֵ��ķ�̨��Ӣ��������', null, null, '15', 6, '21011100720', 21011100720, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100705', '210111007', '�������ռ�������ʢ�ֵ�������������2', '��ʢ�ֵ�������������2', null, null, '15', 6, '21011100705', 21011100705, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111007061', '210111007', '�������ռ�������ʢ�ֵ�������������3', '��ʢ�ֵ�������������3', null, null, '15', 6, '210111007061', 210111007061, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100708', '210111007', '�������ռ�������ʢ�ֵ������������2', '��ʢ�ֵ������������2', null, null, '15', 6, '21011100708', 21011100708, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100709', '210111007', '�������ռ�������ʢ�ֵ������������3', '��ʢ�ֵ������������3', null, null, '15', 6, '21011100709', 21011100709, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100703', '210111007', '�������ռ�������ʢ�ֵ����˴��������Ӵ�������', '��ʢ�ֵ����˴��������Ӵ�������', null, null, '15', 6, '21011100703', 21011100703, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120508', '210111205', '�������ռ�����������Ŵ������ң����٣�', '������Ŵ������ң����٣�', null, null, '15', 6, '21011120508', 21011120508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100108', '210111001', '�������ռ�������Žֵ��ձ�������������վ', '��Žֵ��ձ�������������վ', null, null, '15', 6, '21011100108', 21011100108, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111007', '210111', '�������ռ�������ʢ�ֵ�������������', '��ʢ�ֵ�������������', null, null, '04', 5, '210111007', 210111007, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100213', '210111002', '�������ռ���������ֵ�����ɽ��������', '����ֵ�����ɽ��������', null, null, '15', 6, '21011100213', 21011100213, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110101', '210111015', '�������ռ�������һ��ż��Ӵ�������', '��һ��ż��Ӵ�������', null, null, '15', 6, '21011110101', 21011110101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 1000 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100704', '210111007', '�������ռ�������ʢ�ֵ�������������1', '��ʢ�ֵ�������������1', null, null, '15', 6, '21011100704', 21011100704, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100605', '210111006', '�������ռ����������ֵ����������������վ', '�����ֵ����������������վ', null, null, '15', 6, '21011100605', 21011100605, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111207', '210111', '�������ռ�����١���ֵ�������������', '١���ֵ�������������', null, null, '04', 5, '210111207', 210111207, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120701', '210111207', '�������ռ�����١���ֵ�����ش�������', '١���ֵ�����ش�������', null, null, '15', 6, '21011120701', 21011120701, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100206', '210111002', '�������ռ���������ֵ����ϴ�������', '����ֵ����ϴ�������', null, null, '15', 6, '21011100206', 21011100206, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100204', '210111002', '�������ռ���������ֵ���ɽ��������', '����ֵ���ɽ��������', null, null, '15', 6, '21011100204', 21011100204, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120306', '210111203', '�������ռ��������ٱ������ϴ��������', '���ٱ������ϴ��������', null, null, '15', 6, '21011120306', 21011120306, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120309', '210111203', '�������ռ�������������ͷ�˴��һ������', '��������ͷ�˴��һ������', null, null, '15', 6, '21011120309', 21011120309, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120806', '210111208', '�������ռ����������绥����������', '�����绥����������', null, null, '15', 6, '21011120806', 21011120806, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120807', '210111208', '�������ռ������������ϴ��������', '�������ϴ��������', null, null, '15', 6, '21011120807', 21011120807, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111203', '210111', '�������ռ�����������������������', '������������������', null, null, '04', 5, '210111203', 210111203, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110201', '210111102', '�������ռ����������򱱺��������', '�����򱱺��������', null, null, '15', 6, '21011110201', 21011110201, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110415', '210111104', '�������ռ�����ɳ�ӽֵ�����Ͷ���������', 'ɳ�ӽֵ�����Ͷ���������', null, null, '15', 6, '21011110415', 21011110415, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120803', '210111208', '�������ռ������������̨��������', '�������̨��������', null, null, '15', 6, '21011120803', 21011120803, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120307', '210111203', '�������ռ������������ׯ�ƴ�������', '�������ׯ�ƴ�������', null, null, '15', 6, '21011120307', 21011120307, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120805', '210111208', '�������ռ������������̨�Ӵ�������', '�������̨�Ӵ�������', null, null, '15', 6, '21011120805', 21011120805, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120301', '210111203', '�������ռ��������ٱ�����̨��������', '���ٱ�����̨��������', null, null, '15', 6, '21011120301', 21011120301, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111101', '210111015', '�������ռ�������һ�ֵ�������������', '��һ�ֵ�������������', null, null, '04', 5, '210111101', 210111101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120506', '210111205', '�������ռ�������������������', '��������������', null, null, '15', 6, '21011120506', 21011120506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110509', '210111105', '�������ռ�����ʮ��ӽֵ������������', 'ʮ��ӽֵ������������', null, null, '15', 6, '21011110509', 21011110509, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100714', '210111007', '�������ռ�������ʢ�ֵ���ʢ������������վ', '��ʢ�ֵ���ʢ������������վ', null, null, '15', 6, '21011100714', 21011100714, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120810', '210111208', '�������ռ�������������̨�Ӵ�������', '��������̨�Ӵ�������', null, null, '15', 6, '21011120810', 21011120810, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100202', '210111002', '�������ռ���������ֵ���Ӣ��������', '����ֵ���Ӣ��������', null, null, '15', 6, '21011100202', 21011100202, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110402', '210111104', '�������ռ�����ɳ�ӽֵ������Ӵ�������', 'ɳ�ӽֵ������Ӵ�������', null, null, '15', 6, '21011110402', 21011110402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110203', '210111102', '�������ռ�������������ִ�������', '��������ִ�������', null, null, '15', 6, '21011110203', 21011110203, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100401', '210111004', '�������ռ������ٺ��ֵ���Ӫ�Ӵ�������', '�ٺ��ֵ���Ӫ�Ӵ�������', null, null, '15', 6, '21011100401', 21011100401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100506', '210111005', '�������ռ��������˽ֵ�ͭ��������������վ', '���˽ֵ�ͭ��������������վ', null, null, '15', 6, '21011100506', 21011100506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100603', '210111006', '�������ռ����������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011100603', 21011100603, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100809', '210111008', '�������ռ�����Ҧǧ�ֵ���ˮ��������', 'Ҧǧ�ֵ���ˮ��������', null, null, '15', 6, '21011100809', 21011100809, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100312', '210111003', '�������ռ����������ֵ�С����������������վ', '�����ֵ�С����������������վ', null, null, '15', 6, '21011100312', 21011100312, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120809', '210111208', '�������ռ�����������С��̨��������1', '������С��̨��������1', null, null, '15', 6, '21011120809', 21011120809, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110417', '210111104', '�������ռ�����ɳ�ӽֵ��ڼ����Ӵ�������', 'ɳ�ӽֵ��ڼ����Ӵ�������', null, null, '15', 6, '21011110417', 21011110417, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200104', '210102001', '�����к�ƽ�������ֵ�������������������վ', '�����ֵ�������������������վ', null, null, '15', 6, '21010200104', 21010200104, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202102', '210102021', '�����к�ƽ��������������Է������������վ', '������������Է������������վ', null, null, '15', 6, '21010202102', 21010202102, null, null, null, null, '�����к�ƽ���к�·9-1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202202', '210102022', '�����к�ƽ��̫ԭ�ֺ鸣������������վ', '̫ԭ�ֺ鸣������������վ', null, null, '15', 6, '21010202202', 21010202202, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202311', '210102023', '�����к�ƽ�����г��ֵ�����·������������վ', '���г��ֵ�����·������������վ', null, null, '15', 6, '21010202311', 21010202311, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202312', '210102023', '�����к�ƽ�����нֵ�����·������������վ', '���нֵ�����·������������վ', null, null, '15', 6, '21010202312', 21010202312, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202313', '210102023', '�����к�ƽ�����нֵ���վ·�������������Ŷ�', '���нֵ���վ·�������������Ŷ�', null, null, '15', 6, '21010202313', 21010202313, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202314', '210102023', '�����к�ƽ�����нֵ�����·�������������Ŷ�', '���нֵ�����·�������������Ŷ�', null, null, '15', 6, '21010202314', 21010202314, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202315', '210102023', '�����к�ƽ�����нֵ��и�·�����������Ŷ�', '���нֵ��и�·�����������Ŷ�', null, null, '15', 6, '21010202315', 21010202315, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202325', '210102023', '�����к�ƽ�����г��ֵ����������������Ŷ�', '���г��ֵ����������������Ŷ�', null, null, '15', 6, '21010202325', 21010202325, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202326', '210102023', '�����к�ƽ�����г��ֵ������������������Ŷ�', '���г��ֵ������������������Ŷ�', null, null, '15', 6, '21010202326', 21010202326, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200802', '210102008', '�����к�ƽ���˾��ֵ�����������������վ', '�˾��ֵ�����������������վ', null, null, '15', 6, '21010200802', 21010200802, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200803', '210102008', '�����к�ƽ���˾��ֵ�����������������Ŷ�', '�˾��ֵ�����������������Ŷ�', null, null, '15', 6, '21010200803', 21010200803, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200804', '210102008', '�����к�ƽ���˾��ֵ��´���������������', '�˾��ֵ��´���������������', null, null, '15', 6, '21010200804', 21010200804, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200805', '210102008', '�����к�ƽ���˾��ֵ��Ӱ����������������Ŷ�', '�˾��ֵ��Ӱ����������������Ŷ�', null, null, '15', 6, '21010200805', 21010200805, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200806', '210102008', '�����к�ƽ���˾��ֵ������������������Ŷ�', '�˾��ֵ������������������Ŷ�', null, null, '15', 6, '21010200806', 21010200806, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200807', '210102008', '�����к�ƽ���˾��ֵ������������������Ŷ�', '�˾��ֵ������������������Ŷ�', null, null, '15', 6, '21010200807', 21010200807, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200808', '210102008', '�����к�ƽ���˾��ֵ��и������������Ŷ�', '�˾��ֵ��и������������Ŷ�', null, null, '15', 6, '21010200808', 21010200808, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200105', '210102001', '�����к�ƽ�������ֵ�ˮԴ��������������վ', '�����ֵ�ˮԴ��������������վ', null, null, '15', 6, '21010200105', 21010200105, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200106', '210102001', '�����к�ƽ�������ֵ�ɰ������������վ', '�����ֵ�ɰ������������վ', null, null, '15', 6, '21010200106', 21010200106, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200107', '210102001', '�����к�ƽ�������ֵ��Ͼ�����������վ', '�����ֵ��Ͼ�����������վ', null, null, '15', 6, '21010200107', 21010200107, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200108', '210102001', '�����к�ƽ�������ֵ��ӱ���������վ', '�����ֵ��ӱ���������վ', null, null, '15', 6, '21010200108', 21010200108, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110508', '210111105', '�������ռ�����ʮ��ӽֵ�ʮ���������������վ', 'ʮ��ӽֵ�ʮ���������������վ', null, null, '15', 6, '21011110508', 21011110508, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100715', '210111007', '�������ռ�������ʢ�ֵ����Ҵ�������', '��ʢ�ֵ����Ҵ�������', null, null, '15', 6, '21011100715', 21011100715, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100702', '210111007', '�������ռ�������ʢ�ֵ����˴�������', '��ʢ�ֵ����˴�������', null, null, '15', 6, '21011100702', 21011100702, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100419', '210111004', '�������ռ������ٺ��ֵ����˴�������', '�ٺ��ֵ����˴�������', null, null, '15', 6, '21011100419', 21011100419, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200201', '210102002', '�����к�ƽ�����»��ֵ���ʮ������������վ', '���»��ֵ���ʮ������������վ', null, null, '15', 6, '21010200201', 21010200201, null, null, null, null, '�����к�ƽ��������168��3-1-1', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100211', '210111002', '�������ռ���������ֵ���������������', '����ֵ���������������', null, null, '15', 6, '21011100211', 21011100211, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100216', '210111002', '�������ռ���������ֵ���ׯ��������', '����ֵ���ׯ��������', null, null, '15', 6, '21011100216', 21011100216, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100208', '210111002', '�������ռ���������ֵ���ɽ��������', '����ֵ���ɽ��������', null, null, '15', 6, '21011100208', 21011100208, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100107', '210111001', '�������ռ�������Žֵ��հ�·������������վ', '��Žֵ��հ�·������������վ', null, null, '15', 6, '21011100107', 21011100107, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100101', '210111001', '�������ռ�������Žֵ�����������������վ', '��Žֵ�����������������վ', null, null, '15', 6, '21011100101', 21011100101, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100311', '210111003', '�������ռ����������ֵ�����·������������վ', '�����ֵ�����·������������վ', null, null, '15', 6, '21011100311', 21011100311, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100303', '210111003', '�������ռ����������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011100303', 21011100303, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100305', '210111003', '�������ռ����������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011100305', 21011100305, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100304', '210111003', '�������ռ����������ֵ����˴�������������վ', '�����ֵ����˴�������������վ', null, null, '15', 6, '21011100304', 21011100304, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100209', '210111002', '�������ռ���������ֵ���ľ��ɳ��������', '����ֵ���ľ��ɳ��������', null, null, '15', 6, '21011100209', 21011100209, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106001', '210106', '��·����������������', '��·����������������', null, null, '04', 5, '210106001', 210106001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106002', '210106', '�ƹ�����������������', '�ƹ�����������������', null, null, '04', 5, '210106002', 210106002, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106003', '210106', '��˳����������������', '��˳����������������', null, null, '04', 5, '210106003', 210106003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106004', '210106', '��������������������', '��������������������', null, null, '04', 5, '210106004', 210106004, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106005', '210106', '���ױ����ƻ�������������', '���ױ����ƻ�������������', null, null, '04', 5, '210106005', 210106005, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106006', '210106', '�Ṥ����������������', '�Ṥ����������������', null, null, '04', 5, '210106006', 210106006, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106007', '210106', '��������������������', '��������������������', null, null, '04', 5, '210106007', 210106007, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106008', '210106', '���˴�����������������', '���˴�����������������', null, null, '04', 5, '210106008', 210106008, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106009', '210106', '·������������������', '·������������������', null, null, '04', 5, '210106009', 210106009, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106010', '210106', '��������������������', '��������������������', null, null, '04', 5, '210106010', 210106010, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106011', '210106', '��������������������', '��������������������', null, null, '04', 5, '210106011', 210106011, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106012', '210106', '��������������������', '��������������������', null, null, '04', 5, '210106012', 210106012, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106015', '210106', '�߻�����Ժ', '�߻�����Ժ', null, null, '04', 5, '210106015', 210106015, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106016', '210106', '��������������Ժ', '��������������Ժ', null, null, '04', 5, '210106016', 210106016, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106019', '210106', '�ķ�̨����Ժ', '�ķ�̨����Ժ', null, null, '04', 5, '210106019', 210106019, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106020', '210106', '����վ����Ժ', '����վ����Ժ', null, null, '04', 5, '210106020', 210106020, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010020', '2101', '�����и�Ů��ͯ��������', '�����и�Ů��ͯ��������', 'SYSFNETBJZ', null, '12', 3, '21010020', 18, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010021', '2101', '����������Ѫվ', '����������Ѫվ', 'SYSZXXZ', null, '02', 3, '21010021', 21, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102027', '210102', '��ƽ����ˮ������������������', '��ƽ����ˮ������������������', null, null, '04', 5, '210102027', 210102027, null, '83699391', null, null, '����·150��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102019', '210102', '��ƽ���Ϻ�����������������', '��ƽ���Ϻ�����������������', null, null, '04', 5, '210102019', 210102019, null, '83303312', null, null, '��ƽ��������·100��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102016', '210102', '��ƽ����·������������������', '��ƽ����·������������������', null, null, '04', 5, '210102016', 210102016, null, '02423856653', null, null, '�����к�ƽ�����˽�70��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102002', '210102', '��ƽ���»�����������������', '��ƽ���»�����������������', null, null, '04', 5, '210102002', 210102002, null, '02423388304', null, null, '�����к�ƽ��̫ԭ�Ͻ�363��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102028', '210102', '��ƽ�����վ������������������', '��ƽ�����վ������������������', null, null, '04', 5, '210102028', 210102028, null, '024-23700410', null, null, '����ʡ�����к�ƽ�����վ��ǰ����47��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102017', '210102', '��ƽ����������������������', '��ƽ����������������������', null, '0', '04', 5, '210102017', 210102017, null, '13897955003', null, null, '�����к�ƽ����ƽ�ϴ��91��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500910', '210105009', 'μ���Ŷ�', 'μ���Ŷ�', null, null, '15', 6, '21010500910', 21010500910, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400306', '210114003', '�������ں��������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011400306', 21011400306, null, null, null, null, '�ں��������ֵ�������5��10��11��Ԫ', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400107', '210114005', '�������ں���ӭ��·�ֵ�����������������վ', 'ӭ��·�ֵ�����������������վ', null, null, '15', 6, '21011400107', 21011400107, null, null, null, null, '�������ں��������3-2��3��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114010', '210114', '�������ں�������������������������', '�ں�������������������������', null, null, '04', 5, '210114010', 210114010, null, null, null, null, '�������ں�����������154��3��-13��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400708', '210114007', '�������ں�������ֵ�С��������������վ', '����ֵ�С��������������վ', null, null, '15', 6, '21011400708', 21011400708, null, null, null, null, '�������ں�����ɽ��·155-7��1��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401109', '210114011', '�������ں����Ƕ����ֵ�����������������վ', '�Ƕ����ֵ�����������������վ', null, null, '15', 6, '21011401109', 21011401109, null, null, null, null, '�������ں�����������18��B5-6�š�7��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114003', '210114', '�������ں�����������������������', '�ں�����������������������', null, null, '04', 5, '210114003', 210114003, null, null, null, null, '�������ں�����������44��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114014', '210114', '�������ں����컯����Ժ', '�ں����컯����Ժ', null, null, '04', 5, '210114014', 210114014, null, null, null, null, '�������ں����컯�ֵ��컯��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 1100 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400301', '210114003', '�������ں��������ֵ�ǧɽ������������վ', '�����ֵ�ǧɽ������������վ', null, null, '15', 6, '21011400301', 21011400301, null, null, null, null, '�ں����ƺӱ����96-7��3��4��5��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200109', '210102001', '�����к�ƽ�������ֵ�������ƽ����������վ', '�����ֵ�������ƽ����������վ', null, null, '15', 6, '21010200109', 21010200109, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200203', '210102002', '�����к�ƽ���»��ֵ��»���վ', '�»��ֵ��»���վ', null, null, '15', 6, '21010200203', 21010200203, null, null, null, null, '�����к�ƽ��������·48��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200204', '210102002', '�����к�ƽ���»��ֵ��»�ƽ��վ', '�»��ֵ��»�ƽ��վ', null, null, '15', 6, '21010200204', 21010200204, null, null, null, null, '�����к�ƽ��������·48��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200404', '210102016', '�����к�ƽ����������', '�����к�ƽ����������', null, null, '15', 6, '21010200404', 21010200404, null, null, null, null, '�����к�ƽ��������·48��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200110', '210102001', '�����к�ƽ�������ֵ�������������վ', '�����ֵ�������������վ', null, null, '15', 6, '21010200110', 21010200110, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200701', '210102007', '��ƽ��������������վ', '��ƽ��������������վ', null, null, '15', 6, '21010200701', 21010200701, null, '23472360', null, null, '�����к�ƽ��������85��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102008', '210102', '��ƽ���˾�����������������', '��ƽ���˾�����������������', null, null, '04', 5, '210102008', 210102008, null, '23472360', null, null, '�����к�ƽ��������85��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201103', '210102011', '�����к�ƽ����ܿ�', '�����к�ƽ����ܿ�', null, null, '15', 6, '21010201103', 21010201103, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201602', '210102016', '��ƽ����·�����վ', '��ƽ����·�����վ', null, null, '15', 6, '21010201602', 21010201602, null, '02423856653', null, null, '�����к�ƽ�����˽�70��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201603', '210102016', '��ƽ����·���ҵ����', '��ƽ����·���ҵ����', null, null, '15', 6, '21010201603', 21010201603, null, '02423856653', null, null, '�����к�ƽ�����˽�70��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201605', '210102016', '��ƽ����·����������', '��ƽ����·����������', null, null, '15', 6, '21010201605', 21010201605, null, '02423856653', null, null, '�����к�ƽ�����˽�70��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201606', '210102016', '��ƽ����·����������', '��ƽ����·����������', null, null, '15', 6, '21010201606', 21010201606, null, '02423856653', null, null, '�����к�ƽ�����˽�70��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201607', '210102016', '��ƽ����·�念��', '��ƽ����·�念��', null, null, '15', 6, '21010201607', 21010201607, null, '02423856653', null, null, '�����к�ƽ�����˽�70��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201301', '210102013', '�����к�ƽ�����г��ֵ�Ⱥ��������������վ', '���г��ֵ�Ⱥ��������������վ', null, null, '15', 6, '21010201301', 21010201301, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201902', '210102019', '�����к�ƽ���Ϻ��ֵ�������������������վ', '�Ϻ��ֵ�������������������վ', null, null, '15', 6, '21010201902', 21010201902, null, null, null, null, '�����к�ƽ��������36��3-1-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201903', '210102019', '�����к�ƽ���Ϻ��ֵ��п�Ժ������������վ', '�Ϻ��ֵ��п�Ժ������������վ', null, null, '15', 6, '21010201903', 21010201903, null, null, null, null, '�����к�ƽ��������36��3-1-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103001', '210103', '���������ҽԺ(�ʳ�����������������)', '���������ҽԺ(�ʳ�����������������)', null, null, '04', 5, '210103001', 210103001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103007', '210103', '�������ҽԺ(���¯����������������)', '�������ҽԺ(���¯����������������)', null, null, '04', 5, '210103007', 210103007, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103008', '210103', '������ڶ���ҽԺ(��������������������)', '������ڶ���ҽԺ(��������������������)', null, null, '04', 5, '210103008', 210103008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103009', '210103', '������ڶ�����ҽԺ(��������������������)', '������ڶ�����ҽԺ(��������������������)', null, null, '04', 5, '210103009', 210103009, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103012', '210103', '�����������Ȫ԰����������������', '�����Ȫ԰����������������', null, null, '04', 5, '210103012', 210103012, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301201', '210103012', '���������������������������վ��', '���������������������վ��', null, null, '15', 6, '21010301201', 21010301201, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301501', '210103015', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010301501', 21010301501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301401', '210103014', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010301401', 21010301401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301402', '210103014', '�����������ɽ����������������վ', '�����ɽ����������������վ', null, null, '15', 6, '21010301402', 21010301402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301403', '210103014', '�����������ʨ��������������վ', '�����ʨ��������������վ', null, null, '15', 6, '21010301403', 21010301403, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301502', '210103015', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010301502', 21010301502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301503', '210103015', '�������������Դ������������վ', '�������Դ������������վ', null, null, '15', 6, '21010301503', 21010301503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301101', '210103011', '�����������������������������վ', '�����������������������վ', null, null, '15', 6, '21010301101', 21010301101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301102', '210103011', '�������������ʤ������������վ', '�������ʤ������������վ', null, null, '15', 6, '21010301102', 21010301102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301103', '210103011', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010301103', 21010301103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301104', '210103011', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010301104', 21010301104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300101', '210103001', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300101', 21010300101, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300102', '210103001', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300102', 21010300102, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300103', '210103001', '�����������ҩ��������������վ', '�����ҩ��������������վ', null, null, '15', 6, '21010300103', 21010300103, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300104', '210103001', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300104', 21010300104, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300105', '210103001', '����������������������������վ', '����������������������վ', null, null, '15', 6, '21010300105', 21010300105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300401', '210103004', '��������������������������վ', '��������������������վ', null, null, '15', 6, '21010300401', 21010300401, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300402', '210103004', '������������˷�������������վ', '������˷�������������վ', null, null, '15', 6, '21010300402', 21010300402, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300701', '210103007', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300701', 21010300701, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300702', '210103007', '�������������¯������������վ', '�������¯������������վ', null, null, '15', 6, '21010300702', 21010300702, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300703', '210103007', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300703', 21010300703, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010302201', '210103022', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010302201', 21010302201, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300501', '210103005', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010300501', 21010300501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300502', '210103005', '�������������˳������������վ', '�������˳������������վ', null, null, '15', 6, '21010300502', 21010300502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301001', '210103010', '���������������������������վ', '���������������������վ', null, null, '15', 6, '21010301001', 21010301001, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301002', '210103010', '���������������԰������������վ', '���������԰������������վ', null, null, '15', 6, '21010301002', 21010301002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010301003', '210103010', '�����������������������������վ', '�����������������������վ', null, null, '15', 6, '21010301003', 21010301003, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111015', '210111', '�������ռ���������ҽԺ', '�������ռ���������ҽԺ', null, null, '04', 5, '210111015', 210111015, null, null, null, null, '�������ռ������������̨��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111103', '210111', '�������ռ���������ҽԺ', '�������ռ���������ҽԺ', null, null, '04', 5, '210111103', 210111103, null, null, null, null, '�������ռ�������ʢ����ʢ��78��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111107', '210111', '�������ռ�������Ժ', '�������ռ�������Ժ', null, null, '04', 5, '210111107', 210111107, null, null, null, null, '�ռ�����Ҧǧ�������·36��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112006', '210112', '��������������Ժ', '��������Ժ', null, null, '04', 5, '210112006', 210112006, null, null, null, null, '����ʡ�����л��������ҽֵ����ϴ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112017', '210112', '������ף����������Ժ', 'ף����������Ժ', null, null, '04', 5, '210112017', 210112017, null, null, null, null, '����ʡ�����л�����ף�ҽֵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112018', '210112', '��������������������������', '��������������������', null, null, '04', 5, '210112018', 210112018, null, null, null, null, '�����л����������ֵ�������', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112014', '210112', '�������߿�����������������', '�߿�����������������', null, null, '04', 5, '210112014', 210112014, null, null, null, null, '����ʡ�����л������߿��ֵ�213·54��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112019', '210112', '��������������Ժ', '��������Ժ', null, null, '04', 5, '210112019', 210112019, null, null, null, null, '����ʡ�����л��������ɽֵ���·��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112020', '210112', '��������������Ժ', '��������Ժ', null, null, '04', 5, '210112020', 210112020, null, null, null, null, '����ʡ�����л����������601��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112010', '210112', '��������������������������', '��������������������', null, null, '04', 5, '210112010', 210112010, null, null, null, null, '�����л�������԰��·3��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112015', '210112', '��������������������������', '��������������������', null, null, '04', 5, '210112015', 210112015, null, null, null, null, '�����л��������ýֵ���ˮȪ��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112023', '210112', '��������������Ժ', '��������Ժ', null, null, '04', 5, '210112023', 210112023, null, null, null, null, '����ʡ�����л����������ֵ�������', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112007', '210112', '������Ӣ������Ժ', 'Ӣ������Ժ', null, null, '04', 5, '210112007', 210112007, null, null, null, null, '����ʡ�����л�����Ӣ��ֵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113002', '210113', '��ˮҽԺ', '��ˮҽԺ', null, null, '04', 5, '210113002', 210113002, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113202', '210113', '�������������Ƽ�������������Ժ', '�Ƽ�������������Ժ', null, null, '04', 5, '210113202', 210113202, null, null, null, null, '�������Ƽ���ƼҴ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113004', '210113', '��������������������������������', '��������������������', null, null, '04', 5, '210113004', 210113004, null, null, null, null, '����������ֵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113003', '210113', '��������������ɽ����������������', '��������ɽ����������������', null, null, '04', 5, '210113003', 210113003, null, null, null, null, '������ͨ˳��75��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113007', '210113', '������������������������Ժ', '������������Ժ', null, null, '04', 5, '210113007', 210113007, null, null, null, null, '����������ֵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113102', '210113', '��������������¡̨����������������Ժ', '��¡̨����������������Ժ', null, null, '04', 5, '210113102', 210113102, null, null, null, null, '��������¡̨��������', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113006', '210113', '��ʯ̨����������������', '��ʯ̨����������������', null, null, '04', 5, '210113006', 210113006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113206', '210113', '�������������������Ժ', '���������Ժ', null, null, '04', 5, '210113206', 210113206, null, null, null, null, '���������մ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400902', '210114009', '�������ں���ɳ��ֵ�ɳ��������������վ', 'ɳ��ֵ�ɳ��������������վ', null, null, '15', 6, '21011400902', 21011400902, null, null, null, null, '�������ں���ɳ��·1-4��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400706', '210114007', '�������ں�������ֵ�����֮��������������վ', '����ֵ�����֮��������������վ', null, null, '15', 6, '21011400706', 21011400706, null, null, null, null, '�������ں�����ɽ��·98��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114015', '210114', '�������ں�����������Ժ', '�ں�����������Ժ', null, null, '04', 5, '210114015', 210114015, null, null, null, null, '�������ں������˽ֵ����Ŵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401401', '210114014', '�������ں����컯�ֵ���ʿ������������վ', '�컯�ֵ���ʿ������������վ', null, null, '15', 6, '21011401401', 21011401401, null, null, null, null, '�ں����컯�ֵ���ʿ����', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401102', '210114011', '�������ں����Ƕ����ֵ�˳��������������վ', '�Ƕ����ֵ�˳��������������վ', null, null, '15', 6, '21011401102', 21011401102, null, null, null, null, '����ʡ�������ں�����������211��10��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400707', '210114007', '�������ں�������ֵ�����������������վ', '����ֵ�����������������վ', null, null, '15', 6, '21011400707', 21011400707, null, null, null, null, '����ʡ�������ں�����ɽ·65-37��8��9��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400506', '210114005', '�������ں����ں�ֵ�����������������վ', '�ں�ֵ�����������������վ', null, null, '15', 6, '21011400506', 21011400506, null, null, null, null, '�ں����ں�ֵ���������³�A2', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400507', '210114005', '�������ں����ں�ֵ��ж�������������վ', '�ں�ֵ��ж�������������վ', null, null, '15', 6, '21011400507', 21011400507, null, null, null, null, '�ں������·152-6��4��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400101', '210114005', '�������ں���ӭ��·�ֵ�̫��������������վ', 'ӭ��·�ֵ�̫��������������վ', null, null, '15', 6, '21011400101', 21011400101, null, null, null, null, '�ں����ƺ�·57-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400502', '210114005', '�������ں����ں�ֵ�����������������վ', '�ں�ֵ�����������������վ', null, null, '15', 6, '21011400502', 21011400502, null, null, null, null, ' �������ں�����ҵ��·130��10��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401402', '210114014', '�������ں����컯�ֵ���ת��������������վ', '�컯�ֵ���ת��������������վ', null, null, '15', 6, '21011401402', 21011401402, null, null, null, null, '�ں����컯�ֵ���ת������', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400503', '210114005', '�������ں����ں�ֵ��ں����������������վ', '�ں�ֵ��ں����������������վ', null, null, '15', 6, '21011400503', 21011400503, null, null, null, null, '�������ں����������73������1 ��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400305', '210114003', '�������ں��������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011400305', 21011400305, null, null, null, null, '�ں���ŭ������20-2��4��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123103', '210123', '��������������Ժ', '��������������Ժ', null, null, '04', 5, '210123103', 210123103, null, null, null, null, '��������������Ժ', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123203', '210123', '��ƽ�ر��ļ�������������Ժ', '��ƽ�ر��ļ�������������Ժ', null, null, '04', 5, '210123203', 210123203, null, null, null, null, '��ƽ�ر��ļ����籱�ļ��Ӵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123211', '210123', '��ƽ�ض���������Ժ', '��ƽ�ض���������Ժ', null, null, '04', 5, '210123211', 210123211, null, null, null, null, '��ƽ�ض����綫����', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123104', '210123', '����������Ժ', '����������Ժ', null, null, '04', 5, '210123104', 210123104, null, null, null, null, '����������Ժ', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123204', '210123', '������������Ժ', '������������Ժ', null, null, '04', 5, '210123204', 210123204, null, null, null, null, '��ƽ���������������Ӵ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123205', '210123', '��ƽ��ɽ����������Ժ', '��ƽ��ɽ����������Ժ', null, null, '04', 5, '210123205', 210123205, null, null, null, null, 'ɽ�������ɽ������Ժ', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123105', '210123', '��ƽ�¹�������Ժ', '��ƽ�¹�������Ժ', null, null, '04', 5, '210123105', 210123105, null, null, null, null, '��ƽ�غ¹���', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123209', '210123', '��ƽ������������Ժ', '��ƽ������������Ժ', null, null, '04', 5, '210123209', 210123209, null, null, null, null, '��ƽ����������', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123210', '210123', '��ƽ������������Ժ', '��ƽ������������Ժ', null, null, '04', 5, '210123210', 210123210, null, null, null, null, '��ƽ��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123206', '210123', '��ƽ�غ����ѱ�������Ժ', '��ƽ�غ����ѱ�������Ժ', null, null, '04', 5, '210123206', 210123206, null, null, null, null, '��ƽ�غ�����', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123106', '210123', '��ƽ�ض�ţ����������Ժ', '��ƽ�ض�ţ����������Ժ', null, null, '04', 5, '210123106', 210123106, null, null, null, null, '��ƽ�ض�ţ����������Ժ', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123102', '210123', '��ǿ����������Ժ', '��ǿ����������Ժ', null, null, '04', 5, '210123102', 210123102, null, null, null, null, '����ʡ��ƽ����ǿ����Ժ', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123100', '210123', '��ƽ��ʤ��ҽԺ', '��ƽ��ʤ��ҽԺ', null, null, '04', 5, '210123100', 210123100, null, null, null, null, '��ƽ��ʤ����', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124211', '210124', '�����ذ�����������Ժ', '�����ذ�����������Ժ', null, null, '04', 5, '210124211', 210124211, null, null, null, null, '�����ذ�����������ʹ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124206', '210124', '��������ţ��������Ժ', '��������ţ��������Ժ', null, null, '04', 5, '210124206', 210124206, null, null, null, null, '��������ţ������ţ����', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105014', '210105', '�书ɽ������������վ', '�书ɽ������������վ', null, null, '04', 5, '210105014', 210105014, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300004', '210103', '������������ӤҽԺ', '������������ӤҽԺ', 'SHQFYYY', null, '01', 4, '21010300004', 21010300004, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 1200 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300005', '210103', '�������������ױ�����', '�������������ױ�����', 'SHQFYBJS', null, '01', 4, '21010300005', 21010300005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300006', '210103', '��������������������', '��������������������', 'SHQYBFZS', null, '01', 4, '21010300006', 21010300006, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103023', '210103', '��������������������������������', '��������������������������', null, null, '04', 5, '210103023', 210103023, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400007', '210104', '����ǰ������Ժ', '����ǰ������Ժ', null, null, '14', 4, '21010400007', 21010400007, null, '024-88264782', null, null, '����ʡ�����ж�����ǰ�������ִ�', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113012', '210113', '�Ƽ�����Ժ', '�Ƽ�����Ժ', null, null, '04', 5, '210113012', 210113012, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113019', '210113', '��Ȫ�ֵ�', '��Ȫ�ֵ�', null, null, '04', 5, '210113019', 210113019, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113008', '210113', '��ɽ����������������', '��ɽ����������������', null, null, '04', 5, '210113008', 210113008, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300506', '210113005', '�ȱ�̨��������', '�ȱ�̨��������', null, null, '15', 6, '21011300506', 21011300506, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301504', '210113015', '�����������', '�����������', null, null, '15', 6, '21011301504', 21011301504, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300502', '210113005', '�������������', '�������������', null, null, '15', 6, '21011300502', 21011300502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301701', '210113017', '���ļ��Ӵ�������', '���ļ��Ӵ�������', null, null, '15', 6, '21011301701', 21011301701, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301501', '210113015', 'ʯ���½ֵ�', 'ʯ���½ֵ�', null, null, '15', 6, '21011301501', 21011301501, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300509', '210113005', 'С��̨�Ӵ�������', 'С��̨�Ӵ�������', null, null, '15', 6, '21011300509', 21011300509, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113010', '210113', '�������Ժ', '�������Ժ', null, null, '04', 5, '210113010', 210113010, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113005', '210113', '��¡̨��������Ժ', '��¡̨��������Ժ', null, null, '04', 5, '210113005', 210113005, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300508', '210113005', '��̨��������', '��̨��������', null, null, '15', 6, '21011300508', 21011300508, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300504', '210113005', '���ʴ�������', '���ʴ�������', null, null, '15', 6, '21011300504', 21011300504, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113009', '210113', '������������Ժ', '������������Ժ', null, null, '04', 5, '210113009', 210113009, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300503', '210113005', '��Ӫ�Ӵ�������', '��Ӫ�Ӵ�������', null, null, '15', 6, '21011300503', 21011300503, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011301505', '210113015', '³�Ҵ�������', '³�Ҵ�������', null, null, '15', 6, '21011301505', 21011301505, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113011', '210113', '��������������������', '��������������������', null, null, '04', 5, '210113011', 210113011, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113014', '210113', '��������Ժ', '��������Ժ', null, null, '04', 5, '210113014', 210113014, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200003', '210102', '��ƽ������ҽԺ', '��ƽ������ҽԺ', 'HPQZXYY', null, '01', 4, '21010200003', 21010200003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300003', '210103', '���������ҽԺ', '���������ҽԺ', 'SHQZXYY', null, '01', 4, '21010300003', 21010300003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010400003', '210104', '��������ҽԺ', '��������ҽԺ', 'DDQZXYY', null, '14', 4, '21010400003', 21010400003, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124103', '210124', '��������ˮ��������������Ժ', '��������ˮ��������������Ժ', null, null, '04', 5, '210124103', 210124103, null, null, null, null, '��������ˮ��������ˮ���Ӵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400705', '210114007', '�������ں�������ֵ������ͥ������������վ', '����ֵ������ͥ������������վ', null, null, '15', 6, '21011400705', 21011400705, null, null, null, null, '�ں�����ɽ��·125��3��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401001', '210114010', '�������ں����������ֵ�����������������վ', '�������ֵ�����������������վ', null, null, '15', 6, '21011401001', 21011401001, null, null, null, null, '�������ں�����������20-43��7��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103', '2101', '���������������', '���������������', null, '0', '03', 3, '210103', 210103, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210105', '2101', '�ʹ�������������', '�ʹ�������������', null, '0', '03', 3, '210105', 210105, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210111', '2101', '�ռ���������������', '�ռ���������������', null, '0', '03', 3, '210111', 210111, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210124', '2101', '����������������', '����������������', null, '0', '03', 3, '210124', 210124, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012200002', '210122', '��������ҽԺ', '��������ҽԺ', null, '0', '14', 4, '21012200002', 21012200002, 'ZH', null, null, '15700084497', '������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21', null, '����ʡ�����뽡��ίԱ��', '����ʡ����ί', null, null, '01', 1, '21', 21, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2101', '21', '�����������뽡��ίԱ��', '����������ί', null, null, '02', 2, '2101', 0, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210102', '2101', '��ƽ������������', '��ƽ������������', null, '0', '03', 3, '210102', 210102, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104', '2101', '��������������', '��������������', null, '0', '03', 3, '210104', 210104, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106', '2101', '����������������', '����������������', null, '0', '03', 3, '210106', 210106, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210112', '2101', '����������������', '����������������', null, '0', '03', 3, '210112', 210112, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114', '2101', '�ں�������������', '�ں�������������', null, '0', '03', 3, '210114', 210114, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210122', '2101', '����������������', '����������������', null, '0', '03', 3, '210122', 210122, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210123', '2101', '��ƽ������������', '��ƽ������������', null, '0', '03', 3, '210123', 210123, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210181', '2101', '����������������', '����������������', null, '0', '03', 3, '210181', 210181, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210113', '2101', '����������������', '����������������', null, '0', '03', 3, '210113', 210113, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010005', '2101', '�����е�������ҽԺ', '�����е�������ҽԺ', null, null, '12', 3, '21010005', 7, '������', '23875481', null, '13478886779', '�����к�ƽ����γ·13��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010006', '2101', '����ҽѧԺ��������ҽԺ', '����ҽѧԺ��������ҽԺ', null, null, '12', 3, '21010006', 8, null, '18002478215', null, '18002478215', '�����лʹ��������Ͻ�6��6����', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010016', '2101', '�����м������ĸ���ҽԺ', '�����м���ҽԺ', 'SYSJJZXFSY', null, '12', 3, '21010016', 17, null, '13840099339', null, '13840099339', '�����лƺӱ����121', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010008', '2101', '�����е�ʮ����ҽԺ', '�����е�ʮ����ҽԺ', null, '0', '12', 3, '21010008', 10, '�ž�', '024-88324551', null, null, '�����д���������11��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010014', '2101', '�����йǿ�ҽԺ', '�����йǿ�ҽԺ', null, null, '12', 3, '21010014', 11, '����', '024-88890227', null, null, '�����д�����������·115��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010011', '2101', '�����ж�ͯҽԺ', '�����ж�ͯҽԺ', null, null, '12', 3, '21010011', 15, '�����', '024-86900230', null, null, '�����лʹ�����ɽ��·74��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010007', '2101', '�����еھ�����ҽԺ', '�����еھ�����ҽԺ', null, null, '12', 3, '21010007', 9, null, '31088956', null, null, '��������������ʮһ��·ʮ�˺�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010009', '2101', '����ҽѧԺ�����ڶ�ҽԺ', '����ҽѧԺ�����ڶ�ҽԺ', null, null, '12', 3, '21010009', 2, '����', '22824430', null, null, '�����к�ƽ��������·20��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010013', '2101', '�����иس�ҽԺ', '�����иس�ҽԺ', null, null, '12', 3, '21010013', 13, '������', '22510727', null, null, '�����к�ƽ���Ͼ�����9��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010003', '2101', '�����е�������ҽԺ', '�����е�������ҽԺ', null, null, '12', 3, '21010003', 5, '�պ��', '254037832017', null, null, '��������������˳��188��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010017', '2101', '�����о�����������', '�����о�����������', null, null, '12', 3, '21010017', 19, '��ҫ', '23818767', null, null, '�����л���������·12��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010015', '2101', '�����к�ʮ�ֻ�ҽԺ', '�����к�ʮ�ֻ�ҽԺ', null, null, '12', 3, '21010015', 3, '����', '22942012', null, null, '�������������ɽ·389��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010001', '2101', '�����е�һ����ҽԺ', '�����е�һ����ҽԺ', 'SYSDYRMYY', null, '12', 3, '21010001', 1, '����', '024-88504565', null, null, '�����󱱹ؽ���Ȫ·69��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010002', '2101', '�����е�������ҽԺ', '�����е�������ҽԺ', null, null, '12', 3, '21010002', 4, '������', '024-86862514', null, null, '�����лʹ����ƺ��ϴ��20��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010018', '2101', '�����п�ǻҽԺ', '�����п�ǻҽԺ', null, null, '12', 3, '21010018', 12, '�Ź���', '22822908', null, null, '�����к�ƽ����ɽ·138��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010010', '2101', '��������ҽԺ', '��������ҽԺ', null, null, '12', 3, '21010010', 16, '������', '23893338', null, null, '�����к�ƽ�����ý�23��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010004', '2101', '�����е�������ҽԺ', '�����е�������ҽԺ', null, null, '12', 3, '21010004', 6, '��Ұ', '23387410-129', null, null, '�����к�ƽ����ƽ�ϴ��85��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'admin', '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010012', '2101', '�����и�ӤҽԺ', '�����и�ӤҽԺ', null, null, '12', 3, '21010012', 14, 'ʷ����', '22853728', null, null, '��������Ͻ�87��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010019', '2101', '�����а���ҽԺ', '�����а���ҽԺ', null, null, '12', 3, '21010019', 20, '����', '024-88081416', null, null, '��������������ɽ���134��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012200001', '210122', '����������ҽԺ', '����������ҽԺ', null, '0', '14', 4, '21012200001', 21012200001, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500003', '210105', '�ʹ�������ҽԺ', '�ʹ�������ҽԺ', null, null, '14', 4, '21010500003', 21010500003, '�ܺ鲨', '024-31857795', null, null, '�����лʹ�����ɽ��·169��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500004', '210105', '�ʹ�����ӤҽԺ', '�ʹ�����ӤҽԺ', null, null, '14', 4, '21010500004', 21010500004, '����', '024-86861236', null, null, '�����лʹ����齭��130��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500002', '210105', '�ʹ�����ҽԺ', '�ʹ�����ҽԺ', null, null, '14', 4, '21010500002', 21010500002, '������', '024-86406831', null, null, '�����лʹ������ֽ���11��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500005', '210105', '�ʹ�����������ҽԺ', '�ʹ�����������ҽԺ', null, null, '14', 4, '21010500005', 21010500005, '�Ի�', '024-86287283', null, null, '�����лʹ��������ӽ�51��34��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010500006', '210105', '�ʹ�����ʮ�ֻ�ҽԺ', '�ʹ�����ʮ�ֻ�ҽԺ', null, null, '14', 4, '21010500006', 21010500006, 'κ��', '024-86719199', null, null, '�����лʹ�������·45��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600005', '210106', '����������ҽԺ', '����������ҽԺ', null, null, '14', 4, '21010600005', 21010600005, '�Ѻ���', '25829744', null, null, '��������������������28��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600004', '210106', '����������ҽԺ', '����������ҽԺ', null, null, '14', 4, '21010600004', 21010600004, '������', '25603887', null, null, '�������������Ʒ��Ͻ�5��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600006', '210106', '������������������', '������������������', null, null, '14', 4, '21010600006', 21010600006, '������', '62445499', null, null, '�������ں�������·59��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100002', '210111', '�ռ�������ҽҽԺ', '�ռ�������ҽҽԺ', null, null, '14', 4, '21011100002', 21011100002, '�Կ�', '024-89814515', null, null, '�������ռ�����ѩ��·49��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100003', '210111', '�ռ���������ҽԺ', '�ռ���������ҽԺ', null, null, '14', 4, '21011100003', 21011100003, '����ǿ', '89815107', null, null, '�ռ�������ض�·9��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100004', '210111', '�ռ�������ӤҽԺ', '�ռ�������ӤҽԺ', null, null, '14', 4, '21011100004', 21011100004, '������', '024-89122915', null, null, '�������ռ��������Ľ�68��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200004', '210112', '������ҽԺ', '������ҽԺ', null, null, '14', 4, '21011200004', 21011200004, '��ƽ', '024-23811730', null, null, '����ʡ�����л�������԰��·3��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011200003', '210112', '����������ҽԺ', '����������ҽԺ', null, null, '14', 4, '21011200003', 21011200003, '������', '024-24228196', null, null, '����ʡ�����������Ȫ԰��·87��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011300003', '210113', '����������ҽԺ', '����������ҽԺ', null, null, '14', 4, '21011300003', 21011300003, '������', '024-89865267', null, null, '����������·16��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400001', '210114', '�ں�������ҽԺ', '�ں�������ҽԺ', null, null, '14', 4, '21011400001', 21011400001, '����', '25311987', null, null, '�������ں������·112��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012300001', '210123', '��ƽ������ҽԺ', '��ƽ������ҽԺ', null, null, '14', 4, '21012300001', 21012300001, '��־��', '87342302', null, null, '��ƽ�ؿ�ƽ��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012400002', '210124', '��������ҽҽԺ', '��������ҽҽԺ', null, null, '14', 4, '21012400002', 21012400002, '������', '024-87122708', null, null, '�����ط������Ž��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21012400003', '210124', '����������ҽԺ', '����������ҽԺ', null, null, '14', 4, '21012400003', 21012400003, '�����', '024-87122522', null, null, '�����ط�������Ͻ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100002', '210181', '��������ҽԺ', '��������ҽԺ', null, null, '14', 4, '21018100002', 21018100002, '����', '87853462', null, null, '�����ж��ǽֵ����˶�·2��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100003', '210181', '�����еڶ�����ҽԺ', '�����еڶ�����ҽԺ', null, null, '14', 4, '21018100003', 21018100003, '�����', '87532492', null, null, '����������������ί218��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100001', '210181', '����������ҽԺ', '����������ҽԺ', null, null, '14', 4, '21018100001', 21018100001, '����÷', '87852362', null, null, '������������������', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21018100004', '210181', '�����и�ӤҽԺ', '�����и�ӤҽԺ', null, '0', '14', 4, '21018100004', 21018100004, 'ʷ���', '27602222', null, null, '�����ж������Ͼ���ί', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104008', '210104', '�����д�����������������������', '������������������������', null, null, '04', 5, '210104008', 210104008, null, '13516042715', null, null, '����С��·163��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104001', '210104', '����С������������������', '����С������������������', null, null, '04', 5, '210104001', 210104001, null, '66687536', null, null, '�����д���С����72��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104007', '210104', '������̨������������������', '������̨������������������', null, null, '04', 5, '210104007', 210104007, null, '88325032', null, null, '������԰·48-4��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104009', '210104', '������վ����������������', '������վ����������������', null, null, '04', 5, '210104009', 210104009, null, '88902818', null, null, '�����д�����������·��վ�����ߺ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104003', '210104', '������Ȫ����������������', '������Ȫ����������������', null, null, '04', 5, '210104003', 210104003, null, '024-24835786', null, null, '�����д�����·70��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104002', '210104', '����������������������', '����������������������', null, null, '04', 5, '210104002', 210104002, null, '88505001', null, null, '�����д����󱱽�37��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210104010', '210104', '������������������������', '������������������������', null, null, '04', 5, '210104010', 210104010, null, '88113157', null, null, '�����д���䬲���81��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110503', '210111105', '�������ռ�����ʮ��ӽֵ���䰴�������', 'ʮ��ӽֵ���䰴�������', null, null, '15', 6, '21011110503', 21011110503, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100806', '210111008', '�������ռ�����Ҧǧ�ֵ����ɽ��������', 'Ҧǧ�ֵ����ɽ��������', null, null, '15', 6, '21011100806', 21011100806, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100814', '210111008', '�������ռ�����Ҧǧ�ֵ�Ҧǧ��������', 'Ҧǧ�ֵ�Ҧǧ��������', null, null, '15', 6, '21011100814', 21011100814, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100801', '210111008', '�������ռ�����Ҧǧ�ֵ����ٴ�������', 'Ҧǧ�ֵ����ٴ�������', null, null, '15', 6, '21011100801', 21011100801, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100815', '210111008', '�������ռ�����Ҧǧ�ֵ�Ҧǧ������������վ', 'Ҧǧ�ֵ�Ҧǧ������������վ', null, null, '15', 6, '21011100815', 21011100815, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100105', '210111001', '�������ռ�������Žֵ���ũ�ֵ���������վ', '��Žֵ���ũ�ֵ���������վ', null, null, '15', 6, '21011100105', 21011100105, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120310', '210111203', '�������ռ��������������ٱ���ڶ�������', '���������ٱ���ڶ�������', null, null, '15', 6, '21011120310', 21011120310, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 1300 records committed...
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100315', '210111003', '�������ռ����������ֵ�������������������վ', '�����ֵ�������������������վ', null, null, '15', 6, '21011100315', 21011100315, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100314', '210111003', '�������ռ����������ֵ����˶�������������վ', '�����ֵ����˶�������������վ', null, null, '15', 6, '21011100314', 21011100314, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100310', '210111003', '�������ռ����������ֵ���Ӫ��������������վ', '�����ֵ���Ӫ��������������վ', null, null, '15', 6, '21011100310', 21011100310, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100301', '210111003', '�������ռ����������ֵ��̹�԰������������վ', '�����ֵ��̹�԰������������վ', null, null, '15', 6, '21011100301', 21011100301, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100307', '210111003', '�������ռ����������ֵ����˴���������վ', '�����ֵ����˴���������վ', null, null, '15', 6, '21011100307', 21011100307, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100313', '210111003', '�������ռ����������ֵ��ǹ����������վ', '�����ֵ��ǹ����������վ', null, null, '15', 6, '21011100313', 21011100313, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100408', '210111004', '�������ռ������ٺ��ֵ����Ҵ�������', '�ٺ��ֵ����Ҵ�������', null, null, '15', 6, '21011100408', 21011100408, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100412', '210111004', '�������ռ������ٺ��ֵ�ǰ�Ӵ����������', '�ٺ��ֵ�ǰ�Ӵ����������', null, null, '15', 6, '21011100412', 21011100412, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100413', '210111004', '�������ռ������ٺ��ֵ�ǰ�Ӵ����������', '�ٺ��ֵ�ǰ�Ӵ����������', null, null, '15', 6, '21011100413', 21011100413, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100414', '210111004', '�������ռ������ٺ��ֵ�ǰ�Ӵ����������', '�ٺ��ֵ�ǰ�Ӵ����������', null, null, '15', 6, '21011100414', 21011100414, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100418', '210111004', '�������ռ������ٺ��ֵ����˴��һ������', '�ٺ��ֵ����˴��һ������', null, null, '15', 6, '21011100418', 21011100418, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100416', '210111004', '�������ռ������ٺ��ֵ����մ�ڶ�������', '�ٺ��ֵ����մ�ڶ�������', null, null, '15', 6, '21011100416', 21011100416, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011100407', '210111004', '�������ռ������ٺ��ֵ����Ҵ��һ������', '�ٺ��ֵ����Ҵ��һ������', null, null, '15', 6, '21011100407', 21011100407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120814', '210111208', '�������ռ�������������Ŵ�������', '��������Ŵ�������', null, null, '15', 6, '21011120814', 21011120814, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120801', '210111208', '�������ռ�������������ƴ�������', '��������ƴ�������', null, null, '15', 6, '21011120801', 21011120801, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120804', '210111208', '�������ռ������������̨��������1', '�������̨��������1', null, null, '15', 6, '21011120804', 21011120804, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120302', '210111203', '�������ռ��������ٱ���ˮ�ܲ�̨��������', '�ٱ���ˮ�ܲ�̨��������', null, null, '15', 6, '21011120302', 21011120302, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120305', '210111203', '�������ռ��������ٱ������ϴ���һ������', '���ٱ������ϴ���һ������', null, null, '15', 6, '21011120305', 21011120305, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120304', '210111203', '�������ռ��������ٱ����¿��Ӵ�ڶ�������', '���ٱ����¿��Ӵ�ڶ�������', null, null, '15', 6, '21011120304', 21011120304, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120303', '210111203', '�������ռ��������ٱ������ٴ��һ������', '���ٱ������ٴ��һ������', null, null, '15', 6, '21011120303', 21011120303, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110413', '210111104', '�������ռ�����ɳ�ӽֵ�ɳ���ش�������', 'ɳ�ӽֵ�ɳ���ش�������', null, null, '15', 6, '21011110413', 21011110413, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110418', '210111104', '�������ռ�����ɳ�ӽֵ��Լҵ��Ӵ�', 'ɳ�ӽֵ��Լҵ��Ӵ�', null, null, '15', 6, '21011110418', 21011110418, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110407', '210111104', '�������ռ�����ɳ�ӽֵ���ƻ����������', 'ɳ�ӽֵ���ƻ����������', null, null, '15', 6, '21011110407', 21011110407, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110410', '210111104', '�������ռ�����ɳ�ӽֵ�ɳ�Ӷ���������', 'ɳ�ӽֵ�ɳ�Ӷ���������', null, null, '15', 6, '21011110410', 21011110410, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011110408', '210111104', '�������ռ�����ɳ�ӽֵ�ǰɣ���Ӵ�������', 'ɳ�ӽֵ�ǰɣ���Ӵ�������', null, null, '15', 6, '21011110408', 21011110408, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120502', '210111205', '�������ռ�����������ʹ������ң��󱤣�', '������ʹ������ң��󱤣�', null, null, '15', 6, '21011120502', 21011120502, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011120505', '210111205', '�������ռ�����������ݴ�������', '������ݴ�������', null, null, '15', 6, '21011120505', 21011120505, null, null, null, null, null, to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201701', '210102017', '�����к�ƽ�����ͽֵ��Ͼ�������������վ', '���ͽֵ��Ͼ�������������վ', null, null, '15', 6, '21010201701', 21010201701, null, null, null, null, '�����к�ƽ�����ڽ�40��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010201901', '210102019', '�����к�ƽ���Ϻ��ֵ�����������������վ', '�Ϻ��ֵ�����������������վ', null, null, '15', 6, '21010201901', 21010201901, null, null, null, null, '�����к�ƽ��������36��3-1-1', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010202201', '210102022', '�����к�ƽ��̫ԭ�ֵ�����������������վ', '̫ԭ�ֵ�����������������վ', null, null, '15', 6, '21010202201', 21010202201, null, null, null, null, '�����к�ƽ������Ͻ�88��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200801', '210102008', '�����к�ƽ���˾��ֵ�����������������վ', '�˾��ֵ�����������������վ', null, null, '15', 6, '21010200801', 21010200801, null, null, null, null, '�����к�ƽ�����ݽ�11��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200102', '210102001', '�����к�ƽ�������ֵ����������������վ', '�����ֵ����������������վ', null, null, '15', 6, '21010200102', 21010200102, null, null, null, null, '�����к�ƽ��ɰɽ��91�ű�1��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010200101', '210102001', '�����к�ƽ�������ֵ���ƽ��������������վ', '�����ֵ���ƽ��������������վ', null, null, '15', 6, '21010200101', 21010200101, null, null, null, null, '�����к�ƽ���ӱ���25��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103010', '210103', '�������������������������������', '�������������������������', null, null, '04', 5, '210103010', 210103010, null, null, null, null, '���������·111��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103005', '210103', '�������������������������������', '�������������������������', null, null, '04', 5, '210103005', 210103005, null, null, null, null, '��������������ֽ�·32��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103004', '210103', '�������������������������������', '�������������������������', null, null, '04', 5, '210103004', 210103004, null, null, null, null, '���������������·316��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010300601', '210103006', '����������������ֵ���ũ̳������������վ', '����������ֵ���ũ̳������������վ', null, null, '15', 6, '21010300601', 21010300601, null, null, null, null, '�������������ũ̳·12��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210103014', '210103', '������������±�վ����������������', '������±�վ����������������', null, null, '04', 5, '210103014', 210103014, null, null, null, null, '������������ݹ���һ��36��', to_date('01-06-2020 13:20:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400108', '210114005', '�������ں���ӭ��·�ֵ�����·������������վ', 'ӭ��·�ֵ�����·������������վ', null, null, '15', 6, '21011400108', 21011400108, null, null, null, null, '�������ں�������·62-31#', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400504', '210114005', '�������ں����ں�ֵ����·������������վ', '�ں�ֵ����·������������վ', null, null, '15', 6, '21011400504', 21011400504, null, null, null, null, '�������ں������·8��5��6�����㣨8-1#��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401108', '210114011', '�������ں����Ƕ����ֵ���¡������������վ', '�Ƕ����ֵ���¡������������վ', null, null, '15', 6, '21011401108', 21011401108, null, null, null, null, '�������ں�����������9-1��3��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401101', '210114011', '�������ں����Ƕ����ֵ��̹�԰������������վ', '�Ƕ����ֵ��̹�԰������������վ', null, null, '15', 6, '21011401101', 21011401101, null, null, null, null, '�������ں�����������81��7��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400109', '210114005', '�������ں���ӭ��·�ֵ�����������������վ', 'ӭ��·�ֵ�����������������վ', null, null, '15', 6, '21011400109', 21011400109, null, null, null, null, '�ں�������·168-4��5��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400702', '210114007', '�������ں�������ֵ���ɽ������������վ', '����ֵ���ɽ������������վ', null, null, '15', 6, '21011400702', 21011400702, null, null, null, null, '�������ں�����ɽ·12-22��1��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114009', '210114', '�������ں���ɳ����������Ժ', '�ں���ɳ����������Ժ', null, null, '04', 5, '210114009', 210114009, null, null, null, null, '�������ں���ɳ��ֵ�ɳ���', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400303', '210114003', '�������ں��������ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '15', 6, '21011400303', 21011400303, null, null, null, null, '�������ں�����ɽ·8-8��113', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400106', '210114005', '�������ں���ӭ��·�ֵ�����������������վ', 'ӭ��·�ֵ�����������������վ', null, null, '15', 6, '21011400106', 21011400106, null, null, null, null, '�ں����ƺ�·38-1��10��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114011', '210114', '�������ں����Ƕ�������������������', '�ں����Ƕ�������������������', null, null, '04', 5, '210114011', 210114011, null, null, null, null, '�������ں�����������49��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114214', '210114', '�������ں����������Ժ', '�ں����������Ժ', null, null, '04', 5, '210114214', 210114214, null, null, null, null, '�������ں�����Խֵ���Ŵ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106017', '210106', '��̲��������Ժ', '��̲��������Ժ', null, null, '04', 5, '210106017', 210106017, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106018', '210106', '������������Ժ', '������������Ժ', null, null, '04', 5, '210106018', 210106018, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400701', '210114007', '�������ں�������ֵ�����������������վ', '����ֵ�����������������վ', null, null, '15', 6, '21011400701', 21011400701, null, null, null, null, '�������ں���ŭ������227-4�ţ�����3�ţ�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400105', '210114005', '�������ں���ӭ���ֵ�̫������������������վ', 'ӭ���ֵ�̫������������������վ', null, null, '15', 6, '21011400105', 21011400105, null, null, null, null, '�������ں���̫����18-1��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401106', '210114011', '�������ں����Ƕ����ֵ��Ͽ��Ƕ�������������վ', '�Ƕ����ֵ��Ͽ��Ƕ�������������վ', null, null, '15', 6, '21011401106', 21011401106, null, null, null, null, '�������ں�������·5-9��8��2-1-1�ź�1-1-2��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600007', '210106', '��������ӤҽԺ', '��������ӤҽԺ', null, null, '14', 4, '21010600007', 21010600007, '������', '62445499', null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600008', '210106', '��������˷�����', '��������˷�����', null, null, '14', 4, '21010600008', 21010600008, '������', '62445499', null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21010600009', '210106', '���������豸��������ҽԺ', '���������豸��������ҽԺ', null, null, '14', 4, '21010600009', 21010600009, '������', '62445499', null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106021', '210106', '�˹�����', '�˹�����', null, null, '04', 5, '210106021', 210106021, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210106022', '210106', '��������������', '��������������', null, null, '04', 5, '210106022', 210106022, null, null, null, null, null, to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('210114007', '210114', '�������ں�����������������������', '�ں�����������������������', null, null, '04', 5, '210114007', 210114007, null, null, null, null, '�������ں�����ɽ·46�׺�', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400703', '210114007', '�������ں�������ֵ���Դ������������վ', '����ֵ���Դ������������վ', null, null, '15', 6, '21011400703', 21011400703, null, null, null, null, '�ں���ŭ������185��2��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011400505', '210114005', '�������ں����ں�ֵ���̩������������վ ', '�ں�ֵ���̩������������վ ', null, null, '15', 6, '21011400505', 21011400505, null, null, null, null, '�ں������·160-1��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011401105', '210114011', '�������ں����Ƕ����ֵ��Ͽ�����������������վ', '�Ƕ����ֵ��Ͽ�����������������վ', null, null, '15', 6, '21011401105', 21011401105, null, null, null, null, '�ں����Ƕ�����11-8��8��', to_date('01-06-2020 13:20:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201801', '210112018', '�������������������������İ����ֵ�����������־��������', '�����ֵ�����������־��������', null, null, '04', 5, '21011201801', 21011201801, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201802', '210112018', '�������������������������İ����ֵ�������ŷﻪ������', '�����ֵ�������ŷﻪ������', null, null, '04', 5, '21011201802', 21011201802, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201803', '210112018', '�������������������������İ����ֵ�������ŷﻪ������', '�����ֵ�������ŷﻪ������', null, null, '04', 5, '21011201803', 21011201803, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201804', '210112018', '�������������������������İ����ֵ������ϴ���־��������', '�����ֵ������ϴ���־��������', null, null, '04', 5, '21011201804', 21011201804, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201805', '210112018', '�������������������������İ����ֵ������ϴ��Ŷ���������', '�����ֵ������ϴ��Ŷ���������', null, null, '04', 5, '21011201805', 21011201805, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201806', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201806', 21011201806, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201807', '210112018', '�������������������������İ����ֵ����򰲴岷����������', '�����ֵ����򰲴岷����������', null, null, '04', 5, '21011201807', 21011201807, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201808', '210112018', '�������������������������İ����ֵ����򰲴��Ӣ��������', '�����ֵ����򰲴��Ӣ��������', null, null, '04', 5, '21011201808', 21011201808, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201809', '210112018', '�������������������������İ����ֵ�����������������վ', '�����ֵ�����������������վ', null, null, '04', 5, '21011201809', 21011201809, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201810', '210112018', '�������������������������İ����ֵ����Ŷ�������������վ', '�����ֵ����Ŷ�������������վ', null, null, '04', 5, '21011201810', 21011201810, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
insert into SYS_DEPT (id, parent_id, name, name_simple, name_py, name_wb, type, grade, code, sort, relation_name, relation_phone1, relation_phone2, relation_mobile, relation_address, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21011201811', '210112018', '�������������������������İ����ֵ������ִ�������', '�����ֵ������ִ�������', null, null, '04', 5, '21011201811', 21011201811, null, null, null, null, null, to_date('01-06-2020 13:20:11', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, '������Դ��125���ݿ�', '0');
commit;
prompt 1374 records loaded
prompt Loading SYS_DICT...
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', null, 'ϵͳ����-��ʱ�������', 'sys_task_group', 1, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '1', 'ϵͳ����', 'sys_task_group_1', 1, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, 'ϵͳ����ģ���е�����', '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('3', null, 'ϵͳ����-ϵͳ����', 'sys_system_type', 2, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('4', '3', '����֧��', 'sys_system_type_1', 1, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('5', '3', '���ݷ���', 'sys_system_type_2', 2, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_DICT (id, parent_id, label, value, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('7', '3', '��ʾҳ��', 'sys_system_type_3', 3, to_date('14-07-2020 15:18:28', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
commit;
prompt 6 records loaded
prompt Loading SYS_MENU...
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('9', '�ֵ����', '/menu/sys/dict.png', '/sys/dict', '/sys/dict', '1', '0', 1, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('10', 'ϵͳ����', '/menu/sys/sys.png', '/sysset', null, '0', '0', 2, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('11', 'ϵͳ����', '/menu/sys/system.png', '/sysset/system', '/sys/system', '0', '0', 3, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('12', '�˵�����', '/menu/sys/menu.png', '/sysset/menu', '/sys/menu', '0', '0', 2, to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('13', '��ťȨ��', '/menu/sys/button.png', '/sysset/button', '/sys/button', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('14', '�û�����', '/menu/sys/user.png', '/sys/user', '/sys/user', '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('15', '��ɫ����', '/menu/sys/role.png', '/sys/role', '/sys/role', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('16', '��������', '/menu/sys/dept.png', '/sys/dept', '/sys/dept', '0', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('17', '��ʱ����', '/menu/sys/task.png', '/sys/task', '/sys/task', '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('18', 'ϵͳ����', '/menu/sys/tjfx.png', '/sys/home', '/sys/home', '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('19', '��ҳʾ��', '/menu/ys/ys.png', '/example/dashboard', null, '1', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('20', '����ҳ', '/menu/ys/ys.png', '/example/dashboard/analysis', '/example/dashboard/analysis', '1', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('21', '����̨', '/menu/ys/ys.png', '/example/dashboard/workplace', '/example/dashboard/workplace', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('22', '���ҳ', '/menu/ys/ys.png', '/example/dashboard/monitor', '/example/dashboard/monitor', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('23', '��ҳ', '/menu/ys/ys.png', '/example/form', null, '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('24', '������', '/menu/ys/ys.png', '/example/form/basic-form', '/example/form/basic-form', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('25', '�ֲ���', '/menu/ys/ys.png', '/example/form/step-form', '/example/form/step-form', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('26', '�߼���', '/menu/ys/ys.png', '/example/form/advanced-form', '/example/form/advanced-form', '0', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('27', '�б�ҳ', '/menu/ys/ys.png', '/example/list', null, '0', '0', 3, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('28', '�����б�', '/menu/ys/ys.png', '/example/list/search', '/example/list/search', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('29', '�����б����£�', '/menu/ys/ys.png', '/example/list/search/articles', '/example/list/search/articles', '0', '0', 1, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('30', '�����б���Ŀ��', '/menu/ys/ys.png', '/example/list/search/projects', '/example/list/search/projects', '0', '0', 2, to_date('14-07-2020 15:23:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('31', '�����б�Ӧ�ã�', '/menu/ys/ys.png', '/example/list/search/applications', '/example/list/search/applications', '0', '0', 3, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('32', '��ѯ���', '/menu/ys/ys.png', '/example/list/table-list', '/example/list/table-list', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('33', '��׼�б�', '/menu/ys/ys.png', '/example/list/basic-list', '/example/list/basic-list', '0', '0', 3, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('34', '��Ƭ�б�', '/menu/ys/ys.png', '/example/list/card-list', '/example/list/card-list', '0', '0', 4, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('35', '����ҳ', '/menu/ys/ys.png', '/example/profile', null, '0', '0', 4, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('36', '��������ҳ', '/menu/ys/ys.png', '/example/profile/basic', '/example/profile/basic', '0', '0', 1, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('37', '�߼�����ҳ', '/menu/ys/ys.png', '/example/profile/advanced', '/example/profile/advanced', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('38', '���ҳ', '/menu/ys/ys.png', '/example/result', null, '0', '0', 5, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('39', '�ɹ�ҳ', '/menu/ys/ys.png', '/example/result/success', '/example/result/success', '0', '0', 1, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('40', 'ʧ��ҳ', '/menu/ys/ys.png', '/example/result/fail', '/example/result/fail', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('41', '�쳣ҳ', '/menu/ys/ys.png', '/example/exception', null, '0', '0', 6, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('42', '403', '/menu/ys/ys.png', '/example/exception/403', '/example/exception/403', '0', '0', 1, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('43', '404', '/menu/ys/ys.png', '/example/exception/404', '/example/exception/404', '0', '0', 2, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('44', '500', '/menu/ys/ys.png', '/example/exception/500', '/example/exception/500', '0', '0', 3, to_date('14-07-2020 15:23:47', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('45', '����ҳ', '/menu/ys/ys.png', '/example/account', null, '0', '0', 7, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('46', '��������', '/menu/ys/ys.png', '/example/account/center', '/example/account/center', '0', '0', 1, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('47', '��������', '/menu/ys/ys.png', '/example/account/settings', '/example/account/settings', '0', '0', 2, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('48', 'ͼ�α༭��', '/menu/ys/ys.png', '/example/editor', null, '0', '0', 8, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('49', '���̱༭��', '/menu/ys/ys.png', '/example/editor/flow', '/example/editor/flow', '0', '0', 1, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('50', '��ͼ�༭��', '/menu/ys/ys.png', '/example/editor/mind', '/example/editor/mind', '0', '0', 2, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('51', '���˱༭��', '/menu/ys/ys.png', '/example/editor/koni', '/example/editor/koni', '0', '0', 3, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('52', '������־', '/menu/log/handle.png', '/log/handle', '/log/handle', '1', '0', 1, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
insert into SYS_MENU (id, name, icon, path, component, is_index, show_type, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('53', '��¼��־', '/menu/log/login.png', '/log/login', '/log/login', '0', '0', 2, to_date('14-07-2020 15:23:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, null, null, '0');
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
values ('1', '��������Ա', 'admin', to_date('14-07-2020 15:28:51', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:28:51', 'dd-mm-yyyy hh24:mi:ss'), null, 'ϵͳȨ����ߵĽ�ɫ��Ϊ������Ա����ϵͳʹ�ã���ֹ�޸ģ���ֹ�û�ʹ�á�', '0');
insert into SYS_ROLE (id, name, code, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', '���Խ�ɫ', 'test', to_date('14-07-2020 15:28:51', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('15-07-2020 09:43:03', 'dd-mm-yyyy hh24:mi:ss'), 'admin', '�鿴 ant design pro ԭ��ҳ��', '0');
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
values ('13', 'sys_system_type_1', 'ϵͳ����', '��ϵͳ���˵�����ť�Լ�����·����ϵͳ��Դ�������á���ά��ϵͳ�ֵ���Ϣ��', '/system/xtsz.png', '1', '0', null, 1, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('14', 'sys_system_type_1', 'Ȩ�޹���', '�Ե�¼�û��Ĺ����Լ���¼�û������Ľ�ɫ��������Ϣ�����Խ�ɫ������Ȩ��', '/system/qxgl.png', '0', '0', null, 2, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('15', 'sys_system_type_1', '��������', '��ϵͳ�ڵĶ�ʱ������й���', '/system/cxrw.png', '0', '0', null, 3, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('16', 'sys_system_type_2', '���ݷ���', '�����ݵķ���չʾ', '/system/sjfx.png', '0', '0', '/sys/home', 1, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('17', 'sys_system_type_2', '�ٶ�����', null, '/system/sjfx.png', '0', '1', 'http://www.baidu.com', 2, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('18', 'sys_system_type_3', '��ʾҳ��', 'antd pro ǰ�˿�ܴ��ľ�̬ҳ�棬����Ϊ�����Ĳο�ҳ��', '/system/ys.png', '0', '0', null, 1, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_SYSTEM (id, type, name, describe, icon, is_guide, show_type, blank_path, sort, create_date, create_by, update_date, update_by, remark, delete_state)
values ('19', 'sys_system_type_2', '��־����', null, '/system/rz.png', '0', '0', null, 3, to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('14-07-2020 15:32:53', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
commit;
prompt 7 records loaded
prompt Loading SYS_TASK...
insert into SYS_TASK (id, name, "group", rule, class_name, used_state, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', '����2', 'sys_task_group_1', '0 0 23 * * ?', 'com.zhixiang.health.modules.sys.task.SysTestTask', '1', to_date('14-07-2020 15:33:28', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:33:28', 'dd-mm-yyyy hh24:mi:ss'), null, null, '0');
commit;
prompt 1 records loaded
prompt Loading SYS_USER...
insert into SYS_USER (id, user_name, password, real_name, phone, birthday, sex, photo, used_state, create_date, create_by, update_date, update_by, remark, delete_state)
values ('1', 'admin', '$2a$10$lKOBjPD4ayNIzMKNsyaRU.IfcwNljdBMekeutyxfOZ96ofhMnaD6q', '��������Ա', '13333333333', to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), '1', null, '1', to_date('14-01-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
insert into SYS_USER (id, user_name, password, real_name, phone, birthday, sex, photo, used_state, create_date, create_by, update_date, update_by, remark, delete_state)
values ('2', 'test', '$2a$10$VcHwIZOZXLZB9xU5fwWCvuD5YVMVIxnNL7huYGvry5tkC.GWgUSAe', '����', '13333333333', to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), '1', null, '1', to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('14-07-2020 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), 'admin', null, '0');
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

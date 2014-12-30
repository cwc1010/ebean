create table account (
  oid                       bigint not null,
  user_oid                  bigint,
  constraint pk_account primary key (oid))
;

create table role (
  oid                       bigint not null,
  constraint pk_role primary key (oid))
;

create table user (
  oid                       bigint not null,
  name                      varchar(255),
  constraint pk_user primary key (oid))
;


create table role_user (
  role_oid                       bigint not null,
  user_oid                       bigint not null,
  constraint pk_role_user primary key (role_oid, user_oid))
;

create table user_role (
  user_oid                       bigint not null,
  role_oid                       bigint not null,
  constraint pk_user_role primary key (user_oid, role_oid))
;
create sequence account_seq;

create sequence role_seq;

create sequence user_seq;

alter table account add constraint fk_account_user_1 foreign key (user_oid) references user (oid) on delete restrict on update restrict;
create index ix_account_user_1 on account (user_oid);



alter table role_user add constraint fk_role_user_role_01 foreign key (role_oid) references role (oid) on delete restrict on update restrict;

alter table role_user add constraint fk_role_user_user_02 foreign key (user_oid) references user (oid) on delete restrict on update restrict;

alter table user_role add constraint fk_user_role_user_01 foreign key (user_oid) references user (oid) on delete restrict on update restrict;

alter table user_role add constraint fk_user_role_role_02 foreign key (role_oid) references role (oid) on delete restrict on update restrict;

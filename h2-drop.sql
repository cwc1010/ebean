SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists account;

drop table if exists role;

drop table if exists role_user;

drop table if exists user;

drop table if exists user_role;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists account_seq;

drop sequence if exists role_seq;

drop sequence if exists user_seq;


create database owncloud;
create user owncloud@localhost identified by '12345';
grant all privileges on owncloud.* to owncloud@localhost identified by '12345';
-- It is legal to grant privileges to non-existing databases. This DB will be used to test a DB backup
grant all privileges on owncloud_restore_test.* to owncloud@localhost identified by '12345';
flush privileges;
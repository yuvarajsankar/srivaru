create database srivaru;
GRANT ALL PRIVILEGES ON srivaru.* TO 'root'@'localhost';
use srivaru;


CREATE TABLE `Customer` (
  customer_id varchar(36) primary key,
  `firstName` varchar(20),
  `lastName` varchar(20),
  email varchar(45),
  `dateTime` datetime default current_timestamp,
  `address` varchar(200),
  district varchar(20),
  `state` VARCHAR(20),
  `country` VARCHAR(20),
  `pinCode` int,
  `mobNo` bigint,
  userName varchar(20),
  `password` varchar(20)
);

select * from customer where userName='fsvh' and password = compress(uuid_short);
select * from customer where userName='fsvh' and password='gvh';

select * from preOrder;

INSERT INTO `srivaru`.`preOrder` (`preOrderID`, `model`, `series`, `colour`, `battery`, `customer_id`, `transactionId`) 
VALUES (hex(uuid_short()), 'e', 'v', 'gv', 'yu', 'gv', '');

SET @name = "RN";
insert into preOrder (preOrderId)
values (floor(1000000 + (rand() * 99999999)));

desc employee;
drop table employee;

CREATE TABLE EMPLOYEE(
	uuid char(36) NUll,  
    name VARCHAR(50) NOT NULL,
    joining_date DATE NOT NULL,
    salary DOUBLE NOT NULL,
    ssn VARCHAR(30) NOT NULL UNIQUE

);

DELIMITER ;;
CREATE TRIGGER before_insert_employee
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
  IF new.uuid IS NULL THEN
    SET new.uuid = uuid();
  END IF;
END
;;

select * from employee;
use srivaru;


CREATE TABLE `Customer` (
  `customer_id` char(36) null,
  `firstname` varchar(20),
  `lastname` varchar(20),
  `date` datetime default current_timestamp ,
  `address` varchar(200),
  `atate` VARCHAR(20),
  `country` VARCHAR(20),
  `pincode` int,
  `mob_no` bigint,
  `password` varchar(20),
  KEY `primary key` (`customer_id`)
);
DELIMITER ;;
CREATE TRIGGER before_insert_customer
BEFORE INSERT ON customer
FOR EACH ROW
BEGIN
  IF new.customer_id IS NULL THEN
    SET new.customer_id = uuid();
  END IF;
END
;;
use srivaru;

create database test;
use test;

CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (username));
CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));
INSERT INTO users(username,password,enabled)
VALUES ('priya','priya', true);
INSERT INTO users(username,password,enabled)
VALUES ('naveen','naveen', true);
INSERT INTO user_roles (username, role)
VALUES ('priya', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('priya', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('naveen', 'ROLE_USER');






use srivaru;

DECLARE @cmd VARCHAR(255)
SET @cmd = 'bcp "select * from EMPLOYEE" queryout "C:\Users\yuvar\OneDrive" -U sqluserHere -P sqlpasswordHere -c'
Exec xp_cmdshell @cmd


/*All User's gets stored in APP_USER table*/
create table APP_USER (
   id BIGINT NOT NULL AUTO_INCREMENT,
   sso_id VARCHAR(30) NOT NULL,
   password VARCHAR(100) NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (sso_id)
);
   
/* USER_PROFILE table contains all possible roles */ 
create table USER_PROFILE(
   id BIGINT NOT NULL AUTO_INCREMENT,
   type VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (type)
);
   
/* JOIN TABLE for MANY-TO-MANY relationship*/  
CREATE TABLE APP_USER_USER_PROFILE (
    user_id BIGINT NOT NULL,
    user_profile_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, user_profile_id),
    CONSTRAINT FK_APP_USER FOREIGN KEY (user_id) REFERENCES APP_USER (id),
    CONSTRAINT FK_USER_PROFILE FOREIGN KEY (user_profile_id) REFERENCES USER_PROFILE (id)
);
  
/* Populate USER_PROFILE Table */
INSERT INTO USER_PROFILE(type)
VALUES ('USER');
  
INSERT INTO USER_PROFILE(type)
VALUES ('ADMIN');
  
INSERT INTO USER_PROFILE(type)
VALUES ('DBA');
  
  
/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO APP_USER(sso_id, password, first_name, last_name, email)
VALUES ('sam','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm', 'Sam','Smith','samy@xyz.com');
  
  
/* Populate JOIN Table */
INSERT INTO APP_USER_USER_PROFILE (user_id, user_profile_id)
  SELECT user.id, profile.id FROM app_user user, user_profile profile
  where user.sso_id='sam' and profile.type='ADMIN';
 
/* Create persistent_logins Table used to store rememberme related stuff*/
CREATE TABLE persistent_logins (
    username VARCHAR(64) NOT NULL,
    series VARCHAR(64) NOT NULL,
    token VARCHAR(64) NOT NULL,
    last_used TIMESTAMP NOT NULL,
    PRIMARY KEY (series)
);

drop table customer;
alter table employee modify id varchar(36);
select * from employee;
SET SQL_SAFE_UPDATES = 0;

select * from EMPLOYEE;
delete from preorder;
drop table preorder;

show tables ;
INSERT INTO `srivaru`.`customer` (`customer_id`, `firstName`, `lastName`, `email`, `address`, `district`, `state`, `country`, `pinCode`, `mobNo`, `userName`, `password`) VALUES (uuid_short(), 'hvd', 'bvdv', 'vdwh', 'vbgdh', '', '', '', '6757', '68765', 'gyvb', 'gvhu');

CREATE DATABASE test_database CHARACTER SET utf8 COLLATE utf8_general_ci;
select * from customer;
show databases;
use test_database;
use srivaru;
ALTER TABLE customer MODIFY password varchar(20) COLLATE utf8_bin;
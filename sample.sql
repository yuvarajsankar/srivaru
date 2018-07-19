create database srivarumode;
use srivarumode;

CREATE TABLE `Customer` (
  `customer_id` varchar(36),
  `firstname` varchar(20),
  `lastname` varchar(20),
  `date` datetime default current_timestamp,
  `email` varchar(35),
  `address` varchar(200),
  `District` varchar(20),
  `State` VARCHAR(20),
  `COUNTRY` VARCHAR(20),
  `pincode` int,
  `mob_no` bigint,
  `USERNAME` VARCHAR(20),
  `password` varchar(20),
  KEY `primary key` (`customer_id`)
);

CREATE TABLE `TRANSACTIONS` (
  `TRANSACTION_ID` varchar(36),
  `date` datetime DEFAULT current_TIMESTAMP,
  `CASH` BIGINT,
  `customer_id` varchar(36),
  `TYPE` ENUM("PAID", "RECEIVED"),
  KEY `Primary key` (`TRANSACTION_ID`)
);

CREATE TABLE `preOrder` (
  `preOrderID` varchar(36) primary key ,
  model varchar(20),
  `series` varchar(15),
  `colour` varchar(15),
  `battery` varchar(15),
  
  customer_id varchar(36),
  `transactionId` varchar(20)
  
);

select * from customer;
drop table pre_order;
INSERT INTO `customer` (`customer_id`, `firstName`, `lastName`, `email`, `address`, `district`, `state`, `country`, `pinCode`, `password`) VALUES ('ghjags', 'VVHJ', 'CVSJ', 'BHBA', 'VSHCVB', 'CSHB', 'BVHSHU', 'BSHU', '5652', 'VGHSC');

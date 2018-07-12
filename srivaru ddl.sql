create database srivaru;
GRANT ALL PRIVILEGES ON srivaru.* TO 'root'@'localhost';
use srivaru;


CREATE TABLE `Customer` (
  customer_id varchar(20) primary key,
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
  `password` varchar(20)
);


desc customer;
use srivaru;
drop table customer;
select * from customer;






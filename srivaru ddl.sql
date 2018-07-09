create database srivaru;
GRANT ALL PRIVILEGES ON srivaru.* TO 'root'@'localhost';
use srivaru;


CREATE TABLE `Customer` (
  customer_id varchar(20) primary key,
  `fname` varchar(20),
  `lname` varchar(20),
  `date` datetime default current_timestamp,
  `vehicle_type` varchar(20),
  `address` varchar(20),
  `State` VARCHAR(20),
  `COUNTRY` VARCHAR(20),
  `pincode` int,
  `mob_no` bigint,
  `transaction_id` varchar(20),
  `vin_number` varchar(20),
  `chassis_number` varchar(20),
  `Registration_Number` varchar(20),
  `password_Cus` varchar(20)
);

desc customer;

select * from customer;






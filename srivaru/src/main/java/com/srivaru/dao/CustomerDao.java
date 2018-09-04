package com.srivaru.dao;
import java.util.List;

import com.srivaru.model.Customer;
 
public interface CustomerDao {
 
    Customer findBymobNo(String mobNo);
 
    void saveCustomer(Customer customer);
     
    void deleteCustomer(String ssn);
     
    List<Customer> findAllCustomers();
 
    Customer findCustomerByemail(String email);
 
}
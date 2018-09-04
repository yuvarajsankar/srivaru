package com.srivaru.service;


import java.util.List;

import com.srivaru.model.Customer;
 
public interface CustomerService {
 
    Customer findBymobNo(String id);
     
    void saveCustomer(Customer customer);
     
    void updateCustomer(Customer customer);
     
    void deleteCustomer(String ssn);
 
    List<Customer> findAllCustomer(); 
     
    Customer findCustomerByemail(String ssn);
 
    boolean isCustomerUnique(String uuid, String ssn);
     
}
package com.srivaru.service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.srivaru.dao.CustomerDao;
import com.srivaru.model.Customer;
import com.srivaru.model.Employee;
 
@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
 
    @Autowired
    private CustomerDao dao;
     
    public Customer findBymobNo(String mobNo) {
        return dao.findBymobNo(mobNo);
    }
 
    public void saveEmployee(Customer customer) {
         dao.saveCustomer(customer);
    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    
 
    public void deleteCustomer(String ssn) {
        dao.deleteCustomer(ssn);
    }
     
    public List<Customer> findAllCustomers() {
        return dao.findAllCustomers();
    }
 
    public Customer findCustomeremail(String email) {
        return dao.findCustomerByemail(email);
    }
 
    public boolean isCustomerUnique(String id, String email) {
        Customer customer = findCustomeremail(email);
        return ( customer == null || ((id != null) && (customer.getId() == id)));
    }

	@Override
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Customer> findAllCustomer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer findCustomerByemail(String ssn) {
		// TODO Auto-generated method stub
		return null;
	}


	


     
}
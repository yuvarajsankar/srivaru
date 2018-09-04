package com.srivaru.dao;

import java.util.ArrayList;
import java.sql.Date;

import org.joda.time.LocalDate;
import java.util.List;
import java.util.UUID;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
 
import com.srivaru.model.Customer;
import com.srivaru.model.SendMail;
 
@Repository("customerDao")
public class CustomerDaoImpl extends AbstractDao<Integer, Customer> implements CustomerDao {
 
    public Customer findBymobNo(String mobNo) {
        return getByKey(mobNo);
    }
 
    public void saveCustomer(Customer customer) {
    	Query query = getSession().createSQLQuery("INSERT INTO `srivaru`.`customer` (`name`, `email`, `mobno`) "
    			+ "VALUES (:name, :joining_date, :salary, :ssn);\r\n" + 
    			"");
        query.setString("fname",customer.getFname());

        query.setString("lname",customer.getLname());
        query.setString("email",customer.getEmail());


        query.setString("mobNo",customer.getMobNo());
        query.executeUpdate();
        SendMail.authenticateMail();
    }
 
    public void deleteCustomer(String mobNo) {
        Query query = getSession().createSQLQuery("delete from Employee where ssn = :ssn");
        query.setString("ssn", mobNo);
        query.executeUpdate();
    }
 
    @SuppressWarnings("unchecked")
    public List<Customer> findAllCustomers() {
        Criteria criteria = createEntityCriteria();
        return (List<Customer>) criteria.list();
    }
 
    public Customer findCustomerByemail(String ssn) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("ssn", ssn));
        return (Customer) criteria.uniqueResult();
    }


}
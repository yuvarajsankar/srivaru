package com.srivaru.dao;

import java.util.List;


import com.srivaru.model.Employee;
 
public interface EmployeeDao {
 
    Employee findById(String id);
 
    void saveEmployee(Employee employee);
     
    void deleteEmployeeBySsn(String ssn);
     
    List<Employee> findAllEmployees();
 
    Employee findEmployeeBySsn(String ssn);
 
}
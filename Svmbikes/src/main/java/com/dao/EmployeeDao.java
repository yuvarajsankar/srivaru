package com.dao;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import com.model.Employee;
 
public interface EmployeeDao {
 
    Employee findById(String id);
 
    void saveEmployee(Employee employee);
     
    void deleteEmployeeBySsn(String ssn);
     
    List<Employee> findAllEmployees();
 
    Employee findEmployeeBySsn(String ssn);
 
}
package main.java.service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import main.java.model.Employee;
 
public interface EmployeeService {
 
    Employee findById(String id);
     
    void saveEmployee(Employee employee);
     
    void updateEmployee(Employee employee);
     
    void deleteEmployeeBySsn(String ssn);
 
    List<Employee> findAllEmployees(); 
     
    Employee findEmployeeBySsn(String ssn);
 
    boolean isEmployeeSsnUnique(String uuid, String ssn);
     
}
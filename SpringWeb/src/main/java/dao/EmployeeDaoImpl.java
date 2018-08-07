package main.java.dao;

import java.util.ArrayList;
import java.sql.Date;

import org.joda.time.LocalDate;
import java.util.List;
import java.util.UUID;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
 
import main.java.model.Employee;
import main.java.model.SendMail;
 
@Repository("employeeDao")
public class EmployeeDaoImpl extends AbstractDao<Integer, Employee> implements EmployeeDao {
 
    public Employee findById(String id) {
        return getByKey(id);
    }
 
    public void saveEmployee(Employee employee) {
    	Query query = getSession().createSQLQuery("INSERT INTO `srivaru`.`employee` (`name`, `joining_date`, `salary`, `ssn`) "
    			+ "VALUES (:name, :joining_date, :salary, :ssn);\r\n" + 
    			"");
        query.setString("name",employee.getName());
        query.setDate("joining_date",employee.getJoiningDate().toDate());
       query.setBigDecimal("salary",employee.getSalary());
        query.setString("ssn",employee.getSsn());
        query.executeUpdate();
        SendMail.authenticateMail();
    }
 
    public void deleteEmployeeBySsn(String ssn) {
        Query query = getSession().createSQLQuery("delete from Employee where ssn = :ssn");
        query.setString("ssn", ssn);
        query.executeUpdate();
    }
 
    @SuppressWarnings("unchecked")
    public List<Employee> findAllEmployees() {
        Criteria criteria = createEntityCriteria();
        return (List<Employee>) criteria.list();
    }
 
    public Employee findEmployeeBySsn(String ssn) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("ssn", ssn));
        return (Employee) criteria.uniqueResult();
    }
}
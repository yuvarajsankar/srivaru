package dao;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Customer;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
  
public class CustomerDao {
  
	 private String jdbcURL = "jdbc:mysql://localhost:3306/srivaru";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "0000";
	    private Connection jdbcConnection;
	     
	    public CustomerDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
	        this.jdbcURL = jdbcURL;
	        this.jdbcUsername = jdbcUsername;
	        this.jdbcPassword = jdbcPassword;
	    }
	     
	    protected void connect() throws SQLException {
	        if (jdbcConnection == null || jdbcConnection.isClosed()) {
	            try {
	                Class.forName("com.mysql.cj.jdbc.Driver");
	            } catch (ClassNotFoundException e) {
	                throw new SQLException(e);
	            }
	            jdbcConnection = DriverManager.getConnection(
	                                        jdbcURL, jdbcUsername, jdbcPassword);
	        }
	    }
	     
	    protected void disconnect() throws SQLException {
	        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
	            jdbcConnection.close();
	        }
	    }
	     
	    public boolean insertCustomer(Customer customer) throws SQLException {
	    	String query = " insert into customer (customer_id, fname, lname, email, address, pincode, mob_no, password)"
			        + " values (?, ?, ?, ?, ?,?)";
	    	connect();
			      PreparedStatement preparedStmt = jdbcConnection.prepareStatement(query);
			      preparedStmt.setString(1, customer.getCustomerId());
			      preparedStmt.setString(2, customer.getFirstName());
			      preparedStmt.setString(3, customer.getLastName());
			      preparedStmt.setString(4, customer.getEmail());
			      preparedStmt.setString(5, customer.getAddress());
			      preparedStmt.setInt(6, customer.getPinCode());
			      preparedStmt.setLong(7, customer.getMobNo());
			      preparedStmt.setString(8, customer.getPassword());
			 
	        boolean rowInserted = preparedStmt.executeUpdate() > 0;
	        preparedStmt.close();
	        disconnect();
	        return rowInserted;
	    }
	     
	    public List<Customer> listAllCustomers() throws SQLException {
	        List<Customer> listCustomer = new ArrayList<Customer>();
	         
	        String sql = "SELECT * FROM customer";
	        System.out.println(listCustomer+"DAO");
	         
	        connect();
	         
	        Statement statement = jdbcConnection.createStatement();
	        ResultSet resultSet = statement.executeQuery(sql);
	         
	        while (resultSet.next()) {
	          
	            String customerId = resultSet.getString("customerId");
	            String firstName = resultSet.getString("firstName");
	            String lastName = resultSet.getString("lastName");
	            String email = resultSet.getString("email");
	            Date dateTime = resultSet.getDate("dateTime");
	            String address = resultSet.getString("address");
	            String district = resultSet.getString("district");
	            String state = resultSet.getString("state");
	            String country = resultSet.getString("country");
	            int pinCode = resultSet.getInt("pinCode");
	            long mobNo = resultSet.getLong("mobNo");
	            String password = resultSet.getString("password"); 
	            Customer customer = new Customer(customerId, firstName, lastName, email, dateTime, address,district, state, country, pinCode, mobNo,  password);
	            listCustomer.add(customer);
	        }
	        resultSet.close();
	        statement.close();
	         
	        disconnect();
	         
	        return listCustomer;
	    }

				public boolean insertCustomerData(String userName, String firstName, String lastName, String email, Long mobNo,
				String address, Integer pinCode, String password) throws SQLException, NullPointerException {
					String query = " insert into customer (customer_id, firstName, lastName, email, mobNo, address, pincode, password)"
					        + " values (?, ?, ?, ?, ?, ?, ?,?)";
			    	System.out.println("entering dao");
					connect();
					System.out.println(" connected using dao");
					      PreparedStatement preparedStmt = jdbcConnection.prepareStatement(query);
					      preparedStmt.setString(1, userName);
					      preparedStmt.setString(2, firstName);
					      preparedStmt.setString(3, lastName);
					      preparedStmt.setString(4, email);
					      preparedStmt.setLong(5, mobNo);
					      preparedStmt.setString(6, address);
					      preparedStmt.setInt(7, pinCode);
					      preparedStmt.setString(8, password );
					 
			        int rowInserted = preparedStmt.executeUpdate();
			        preparedStmt.close();
			        disconnect();
			        if(rowInserted ==1) {
			        return true;
			        
			        }
			        else 
			        return false;
			
		}
}
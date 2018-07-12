package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import dao.CustomerDao;


/**
 * Servlet implementation class Customer
 */
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerDao customerDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {
		try {
			listCustomer(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequ est request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException, NullPointerException {
		Long mobNo = (long) Long.parseLong(request.getParameter("mobNo"));
		String firstName = request.getParameter("firstName");
		
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String address= request.getParameter("address");
		Integer pinCode = Integer.parseInt(request.getParameter("pinCode"));
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		System.out.println("entering servlet");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/srivaru?useSSL=false","root","0000");

			String query = " insert into customer (customer_id, firstName, lastName,email, address, pincode, mobNo, userName, password)"
			        + " values (uuid(), ?, ?,?,?,?, ?, ?,?)";
			      PreparedStatement preparedStmt = con.prepareStatement(query);
			      
			      preparedStmt.setString(1, firstName);
			      preparedStmt.setString(2, lastName);
			      preparedStmt.setString(3, email);
			      
			      preparedStmt.setString(4, address);
			      preparedStmt.setInt(5, pinCode);
			      preparedStmt.setLong(6, mobNo);
			      preparedStmt.setString(7, userName);
			      preparedStmt.setString(8, password);
			      
			      preparedStmt.execute();
			      response.sendRedirect("CustomerLogin.jsp");
			  }catch (Exception e) {
			      System.err.println("Got an exception!");
			      System.err.println(e.getMessage());
			}
		}
			
	   private void listCustomer(HttpServletRequest request, HttpServletResponse response)
	            throws SQLException, IOException, ServletException{
	        List<Customer> listCustome = customerDao.listAllCustomers();
	        request.setAttribute("listCustomer", listCustome);
	        System.out.println(listCustome+"servlet");
	        RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerRegistrationUpdadte.jsp");
	        if (dispatcher != null){
	    		dispatcher.forward(request, response);
	    	}
	 }
}


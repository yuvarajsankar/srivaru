package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Customer
 */
public class Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Customer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException {
		
		Long mobNoNumber = (long) Integer.parseInt(request.getParameter("mobNoNumber"));
		String firstName = request.getParameter("firstName");
		
		String lastName = request.getParameter("lastName");
		String address= request.getParameter("address");
		Integer pinCode = Integer.parseInt(request.getParameter("pinCode"));
		String userName = request.getParameter("userName");
		
		try {
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/srivaru?useSSL=false","root","0000");
		Statement stmt=con.createStatement(); 

		PrintWriter out = response.getWriter();
	
		String query = " insert into customer (customer_id, fname, lname, address, pincode, mob_no)"
		        + " values (?, ?, ?, ?, ?,?)";
		      PreparedStatement preparedStmt = con.prepareStatement(query);
		      preparedStmt.setString(1, userName);
		      preparedStmt.setString(2, firstName);
		      preparedStmt.setString(3, lastName);
		      preparedStmt.setString(4, address);
		      preparedStmt.setInt(5, pinCode);
		      preparedStmt.setLong(6, mobNoNumber);
		      preparedStmt.execute();
		      response.sendRedirect("CustomerRegistration.jsp");
		  }catch (Exception e) {
		      System.err.println("Got an exception!");
		      System.err.println(e.getMessage());
		}
	}
}


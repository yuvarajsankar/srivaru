package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeServlet
 */
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long mobNo = (long) Long.parseLong(request.getParameter("mobNo"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String address= request.getParameter("address");
		Integer pinCode = Integer.parseInt(request.getParameter("pinCode"));
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		System.out.println("entering employee servlet");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/srivaru?useSSL=false","root","0000");

			String query = " insert into employee (employee_id, firstName, lastName,email, address, pincode, mobNo, userName, password)"
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

}

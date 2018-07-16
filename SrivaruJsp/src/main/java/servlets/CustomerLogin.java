package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;

/**
 * Servlet implementation class CustomerLogin
 */
public class CustomerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("CustomerLogin.jsp");
		
        rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	@SuppressWarnings({ "unused", "rawtypes", "unchecked" })
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		          
		    String n=request.getParameter("userName");  
		    String p=request.getParameter("password");  
		    
		    
System.out.println("enetering login servlet");
			String userName = null;
		    String password = null;
		    boolean status=false; 
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection(  
						"jdbc:mysql://localhost:3306/srivaru?useSSL=false","root","0000");
			
				PreparedStatement ps=con.prepareStatement(  
					    "select * from customer where userName=? and password=?");  
					  
					ps.setString(1,n);  
					ps.setString(2,p);  
					              
					ResultSet rs=ps.executeQuery();  
								if(rs.next()) {

								out.print("''"+rs.getString("firstName")+"''"); 
								
								
								Customer user = new Customer();
								  user.setFirstName(rs.getString("firstName"));
								  user.setEmail(rs.getString("email"));
								  user.setMobNo(rs.getLong("mobNo"));
								  request.setAttribute("user",user);
								  out.println("'"+userName+"'");
								  request.getSession().setAttribute("customer_id",rs.getString("customer_id"));
								  request.getSession().setAttribute("fname",rs.getString("firstName"));
								  request.getSession().setAttribute("lname",rs.getString("lastName"));
								  request.getSession().setAttribute("email",rs.getString("email"));
								  request.getSession().setAttribute("address",rs.getString("address"));
								  request.getSession().setAttribute("pincode",rs.getInt("pincode"));
								  request.getSession().setAttribute("mobno",rs.getLong("mobNo"));
								
								  
								  request.getRequestDispatcher("CustomerDashBoard.jsp").forward(request, response);
								}
								else {
									RequestDispatcher rd=request.getRequestDispatcher("CustomerLogin.jsp");
								
							        rd.forward(request,response); 
								}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
			}  
				
		   
		          
		      
		     
		         
		    }  
	}


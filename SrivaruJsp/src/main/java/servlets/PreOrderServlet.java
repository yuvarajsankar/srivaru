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
 * Servlet implementation class PreOrderServlet
 */
public class PreOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PreOrderServlet() {
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
		
		String customerId = (String) request.getSession().getAttribute("customer_id");
		
		String model = request.getParameter("model");
		String series = request.getParameter("series");
		String battery= request.getParameter("battery");
		String colour= request.getParameter("colour");
		System.out.println("entering pre order servlet");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/srivaru?useSSL=false","root","0000");

			String query = " insert into preOrder (preOrderId, model, series, colour,battery, customer_id)"
			        + " values ((floor(1000000 + (rand() * 99999999))), ?, ?,?,?,?)";
			      PreparedStatement preparedStmt = con.prepareStatement(query);
			      
			      preparedStmt.setString(1, model);
			      preparedStmt.setString(2, series);
			      preparedStmt.setString(3, colour);
			      preparedStmt.setString(4, battery);
			      preparedStmt.setString(5, customerId);
			
			      
			      preparedStmt.execute();
			      response.sendRedirect("PreOrderSucess.jsp");
			  }catch (Exception e) {
			      System.err.println("Got an exception!");
			      System.err.println(e.getMessage());
			}
	}

}

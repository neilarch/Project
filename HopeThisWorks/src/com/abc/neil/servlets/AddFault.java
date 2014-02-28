package com.abc.neil.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * creates a new user
 */
@WebServlet("/AddFault")
public class AddFault extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFault() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = null;
		try{

	    Class.forName("com.mysql.jdbc.Driver").newInstance();
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faultdb","root","cl1m8t3;");

	    //ResultSet doSubmit = null;
	    PreparedStatement pdoSubmit = null;

	    String sum= request.getParameter("Summary");
	    String desc = request.getParameter("description");
	    String id = request.getParameter("id");
	    



	    	String sqlOption= "INSERT INTO fault (summary, details, author_idauthor) VALUES (?,?,?)";

	    	pdoSubmit = con.prepareStatement(sqlOption);
	    	pdoSubmit.setString(1, sum);
	    	pdoSubmit.setString(2, desc);
	    	pdoSubmit.setString(3,  id);
	    	


	    	pdoSubmit.executeUpdate();

	    	 response.sendRedirect("/HopeThisWorks/Fault");

		}
	    	catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}

	    	try{

	    		if(con!=null)
	    		{
	    			con.close();
	    		}
	    	}
	    	catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
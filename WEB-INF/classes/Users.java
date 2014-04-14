package com.b2c.getcon;


import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

public class Users extends HttpServlet{	
	
	public void service(HttpServletRequest request,HttpServletResponse response) 
			throws IOException,ServletException
	{
		RequestDispatcher rd=request.getRequestDispatcher("CRM.jsp");
		Connection con=null;
		con=Getcon.getMySqlConnection();
		PreparedStatement ps=null;
        	
		String uname=request.getParameter("uname");
		String umail=request.getParameter("umail");
		    	
		try{
			HttpSession hs=request.getSession(true);
			hs.setAttribute("Valid", "yes");
			hs.setAttribute("uname", uname);
			hs.setAttribute("umail", umail);
			
			String sql="insert into users values(?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,uname);
			ps.setString(2,umail);
			
			ps.executeUpdate();
			
			response.sendRedirect("Main.jsp");
			
			request.setAttribute("comment","You Have Successfully Sign Out");
			rd.forward(request,response);
		}
		catch(Exception e){
			System.out.println(e);
		}
       Getcon.cleanup(ps, con);
	}
}
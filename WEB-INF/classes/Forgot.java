package com.b2c.getcon;

import java.io.* ;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class Forgot extends HttpServlet{	
	
	public void service(HttpServletRequest request,HttpServletResponse response) 
			throws IOException,ServletException
	{
		RequestDispatcher rd=request.getRequestDispatcher("Forgot.jsp");
		Connection con=null;
		con=Getcon.getMySqlConnection();
		ResultSet rs=null;
		PreparedStatement ps=null;
        	
		
		
		String utype=request.getParameter("t1");
		String usrid=request.getParameter("t2");
		String email=request.getParameter("t3");
		boolean flag = false ;
			 
		PrintWriter out=response.getWriter();
				
		try{  
			Statement stmt = con.createStatement();
			System.out.println("Connection Established");
			 rs = stmt.executeQuery("select * from register");
		while(rs.next())
			{
				if((utype.equals(rs.getString(1))) && (usrid.equals(rs.getString(2))) && (email.equals(rs.getString(9))))
				{
					flag = true ;
					break ;
				}
			}
			if(flag)
			{
				
		out.println("<html><head><title>hi "+ rs.getString(3) +"</title></head><body><center><br/><br/><br/>");
		out.println("<table border='2' align='center' width='50%' height='30%'><tr><td align='center'><h1><font color='#569DF5'>hi "+ rs.getString(3) +"</font></h1></td></tr>");
		out.println("<tr><td align='left'><font color='green'><b>Your Detailes</font></b></td></tr>");
		out.println("<tr><td align='center'><font color='green'><b>User ID:&nbsp;&nbsp;"+ rs.getString(2) +"</font></b></td></tr>");
		out.println("<tr><td align='center'><font color='green'><b>Password :&nbsp;&nbsp;"+ rs.getString(4) +"</font></b></td></tr>");
		out.println("<tr><td align='center'><font color='blue'><b><a href = \"login.jsp\"><u><b>Continue...</u></b></a></font></b></td></tr></table>");
			
		out.println("</center></body></html>");
			}


			else
			{
				request.setAttribute("comment","Please Check the Detailes You have Entered");
				rd.forward(request,response);

			}
			
		}
		
		catch(Exception e){
				System.out.println(e);
				  }
       Getcon.cleanup(ps, con);
	}
}

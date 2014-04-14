package com.b2c.getcon;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import com.b2c.getcon.Getcon;

public class Complaints extends HttpServlet{	
	
	public void service(HttpServletRequest request,HttpServletResponse response) 
			throws IOException,ServletException
	{
		
		Connection con=null;
		con=Getcon.getMySqlConnection();
		PreparedStatement ps=null;
        	
		String pname=request.getParameter("t1");
		String mname=request.getParameter("t2");
		String cmpname=request.getParameter("t3");
		String purdate=request.getParameter("t4");
		String cltname=request.getParameter("t5");
		String cltoc=request.getParameter("t6");
				
		String phnum=request.getParameter("t7");
		String email=request.getParameter("t8");
		String add=request.getParameter("t9");
		String city=request.getParameter("t10");
		String sess=request.getParameter("t11");
		String uid=request.getParameter("t12");
		
		

		try{
			String sql="insert into complaints values(?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,pname);
			ps.setString(2,mname);
			ps.setString(3,cmpname);
			ps.setString(4,purdate);
			ps.setString(5,cltname);
			ps.setString(6,cltoc);
			ps.setString(7,phnum);
			ps.setString(8,email);
			ps.setString(9,add);
			ps.setString(10,city);
			ps.setString(11,sess);
			ps.setString(12,uid);
			
			
			ps.executeUpdate();
if (sess!=null)
{
	
	 if((sess.equals("D")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("DComplaints.jsp");
request.setAttribute("comment","Your Complaints will be verified soon.Thank you");
rd.forward(request,response);
	}
	else if((sess.equals("R")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("RComplaints.jsp");
request.setAttribute("comment","Your Complaints will be verified soon.Thank you");
rd.forward(request,response);
	}
	else if((sess.equals("yes")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("Complaints.jsp");
request.setAttribute("comment","Your Complaints will be verified soon.Thank you");
rd.forward(request,response);
	}
}
else
{
	response.sendRedirect("login.jsp");
}
	
		}
		catch(Exception e){
			System.out.println(e);
		}
       Getcon.cleanup(ps, con);
	}
}
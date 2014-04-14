package com.b2c.getcon;

import java.io.* ;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class Orders extends HttpServlet{	
	
	public void service(HttpServletRequest request,HttpServletResponse response) 
			throws IOException,ServletException
	{
		
		Connection con=null;
		con=Getcon.getMySqlConnection();
		PreparedStatement ps=null;
        	
		String pname=request.getParameter("t1");
		String mname=request.getParameter("t2");
		String cmpname=request.getParameter("t3");
		String qty=request.getParameter("t4");
		String odate=request.getParameter("t5");
		String ddate=request.getParameter("t6");
				
		String cltname=request.getParameter("t7");
		String phnum=request.getParameter("t8");
		String email=request.getParameter("t9");
		String add=request.getParameter("t10");
		
		String bname=request.getParameter("t11");
		String bcity=request.getParameter("t12");
		String doi=request.getParameter("t13");
		String amt=request.getParameter("t14");
		String dftnum=request.getParameter("t15");
		String sess=request.getParameter("t16");
		
		String uid=request.getParameter("t17");

		PrintWriter out=response.getWriter();
			
		    	
		try{
			String sql="insert into orders values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,pname);
			ps.setString(2,mname);
			ps.setString(3,cmpname);
			ps.setString(4,qty);
			ps.setString(5,odate);
			ps.setString(6,ddate);
			ps.setString(7,cltname);
			ps.setString(8,phnum);
			ps.setString(9,email);
			ps.setString(10,add);
			
			ps.setString(11,bname);
			ps.setString(12,bcity);
			ps.setString(13,doi);
			ps.setString(14,amt);
			ps.setString(15,dftnum);
			ps.setString(16,sess);
			ps.setString(17,uid);
			ps.executeUpdate();
			
			

if (sess!=null)
{
	
	 if((sess.equals("D")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("DOrders.jsp");
request.setAttribute("comment","Your Orders will be Delivered soon.Thank you");
rd.forward(request,response);
	}
	else if((sess.equals("R")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("ROrders.jsp");
request.setAttribute("comment","Your Orders will be Delivered soon.Thank you");
rd.forward(request,response);
	}
	else if((sess.equals("yes")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("Orders.jsp");
request.setAttribute("comment","Your Orders will be Delivered soon.Thank you");
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
package com.b2c.getcon;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class Product extends HttpServlet{	
	
	public void service(HttpServletRequest request,HttpServletResponse response) 
			throws IOException,ServletException
	{
		RequestDispatcher rd=request.getRequestDispatcher("Add New Product.jsp");
		Connection con=null;
		con=Getcon.getMySqlConnection();
		PreparedStatement ps=null;
        	
		String cltname=request.getParameter("t1");
		String cmpname=request.getParameter("t2");
		String phnum=request.getParameter("t3");
		String email=request.getParameter("t4");
		String add=request.getParameter("t5");
		String fdbk=request.getParameter("t6");
		String sess=request.getParameter("t7");
		String uid=request.getParameter("t8");
		

		try{
			String sql="insert into product values(?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,cltname);
			ps.setString(2,cmpname);
			ps.setString(3,phnum);
			ps.setString(4,email);
			ps.setString(5,add);
			
			ps.setString(6,fdbk);
			ps.setString(7,sess);
			ps.setString(8,uid);
			
			ps.executeUpdate();
			
			
			request.setAttribute("comment","Your Product is Added Sucessfully");
			rd.forward(request,response);
		}
	
		catch(Exception e){
			System.out.println(e);
		}
       Getcon.cleanup(ps, con);
	}
}

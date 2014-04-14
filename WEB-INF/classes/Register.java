package com.b2c.getcon;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class Register extends HttpServlet{	
	
	public void service(HttpServletRequest request,HttpServletResponse response) 
			throws IOException,ServletException
	{
		RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");

		Connection con=null;
		con=Getcon.getMySqlConnection();
		ResultSet rs=null;
		PreparedStatement ps=null;
		boolean flag = false ;
        	
		String utype=request.getParameter("t1");
		String uid=request.getParameter("t2");
		String uname=request.getParameter("t3");
		String pwd=request.getParameter("t4");
		String cpwd=request.getParameter("t5");
		String cmpname=request.getParameter("t6");
				
		String indtype=request.getParameter("t7");
		String phnum=request.getParameter("t8");
		String email=request.getParameter("t9");
		String add=request.getParameter("t10");
		String city=request.getParameter("t11");
		String zip=request.getParameter("t12");
		
		String state=request.getParameter("t13");
		
	try{
		Statement stmt = con.createStatement();
		rs = stmt.executeQuery("select * from register");
		while(rs.next())
			{
				if(phnum.equals(rs.getString(8)))
				{
					flag = true ;
					break ;
				}
			}
			if(flag)
			{	
				request.setAttribute("comment","Phone number already exists. Try again");
				rd.forward(request,response);

			}

			else
			{
			String sql="insert into register values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,utype);
			ps.setString(2,uid);
			ps.setString(3,uname);
			ps.setString(4,pwd);
			ps.setString(5,cpwd);
			ps.setString(6,cmpname);
			ps.setString(7,indtype);
			ps.setString(8,phnum);
			ps.setString(9,email);
			ps.setString(10,add);
			ps.setString(11,city);
			ps.setString(12,zip);
			ps.setString(13,state);

			
			ps.executeUpdate();
			
			request.setAttribute("comment","You are Registered Successfully.Thank you");
			rd.forward(request,response);
		
			}

		}	
		catch(Exception e){
			System.out.println(e);
		}

       Getcon.cleanup(ps, con);
	}
}

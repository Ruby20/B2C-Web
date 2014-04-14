package com.b2c.getcon;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

public class Login extends HttpServlet{	
	
	public void service(HttpServletRequest req,HttpServletResponse res) 
			throws IOException,ServletException
	{
		HttpSession hs=req.getSession(true);
		System.out.println("here");
		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
		Connection con=null;
		con=Getcon.getMySqlConnection();
		ResultSet rs=null;
		PreparedStatement ps=null;
        
		String utype=req.getParameter("utype");
		String uid=req.getParameter("uid");
		String upass=req.getParameter("upass");
		
		

		try{
		Statement stmt = con.createStatement();
			System.out.println("Connection Established");
			rs = stmt.executeQuery("select * from register where t2='"+uid+"' ");
			boolean flag=false;
			while(rs.next())
				{
					if(utype.equals(rs.getString(1)))
					{
						flag = true ;
						break ;
					}
				}
				if(flag)
				{
					if(uid.equals(rs.getString(2)))
					{
							hs.setAttribute("utype", utype);
							hs.setAttribute("uname", rs.getString(3));
							hs.setAttribute("uid",uid);

							if(upass.equals(rs.getString(4)))
							{
								if(utype.equals("m"))

								{		
										hs.setAttribute("valid", "M");
										res.sendRedirect("Man.jsp");
								}
								else if(utype.equals("d"))
								{		
										
										hs.setAttribute("valid", "D");
										res.sendRedirect("Dis.jsp");
								}
								else if(utype.equals("r"))
								{
										hs.setAttribute("valid", "R");
										res.sendRedirect("Ret.jsp");
								}
								else if(utype.equals("c"))
								{
										hs.setAttribute("valid", "yes");
										res.sendRedirect("Main.jsp");
								}
							}
							else{
								req.setAttribute("comment","Password Missmatch");
								rd.forward(req,res);
							}
					}
					else{
						req.setAttribute("comment","Invalid User ID ");
						rd.forward(req,res);
					}
				}
				else
				{
					req.setAttribute("comment","User Doesn't Exists");
					rd.forward(req,res);
				}
			   }		
		catch(Exception e)
		{
			System.out.println(e);
		}
		Getcon.cleanup(ps, con);
	}
}


				
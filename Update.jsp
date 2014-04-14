<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>



<%          
try
   {
   
   

String id=(String)session.getAttribute("id");

   
             	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
        	con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
             
	
	
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
	
	
String ab="update register  set t1=?,t2=?, t3=?, t4=?,t5=?,t6=?,t7=?, t8=?,t9=?,t10=?,t11=?, t12=?,t13=?  where t2='"+uid+"' ";
	PreparedStatement stmt = con.prepareStatement(ab);
	 
	
	 stmt.setString(1,utype);
			stmt.setString(2,uid);
			stmt.setString(3,uname);
			stmt.setString(4,pwd);
			stmt.setString(5,cpwd);
			stmt.setString(6,cmpname);
			stmt.setString(7,indtype);
			stmt.setString(8,phnum);
			stmt.setString(9,email);
			stmt.setString(10,add);
			stmt.setString(11,city);
			stmt.setString(12,zip);
			stmt.setString(13,state);	
	 
	stmt.executeUpdate();
		
   } 
   catch(NumberFormatException e)
        {
	out.println(e);
          }
   catch(SQLException e)
        {
	out.println(e);
         }

%>


<%
String hs=(String)session.getAttribute("valid");

if (hs!=null)
{
	if((hs.equals("M")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("MProfile.jsp");
request.setAttribute("comment","Updated Successfully");
rd.forward(request,response);
	}
	else if((hs.equals("D")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("DProfile.jsp");
request.setAttribute("comment","Updated Successfully");
rd.forward(request,response);
	}
	else if((hs.equals("R")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("RProfile.jsp");
request.setAttribute("comment","Updated Successfully");
rd.forward(request,response);
	}
	else if((hs.equals("yes")))
	{
		RequestDispatcher rd=request.getRequestDispatcher("CProfile.jsp");
request.setAttribute("comment","Updated Successfully");
rd.forward(request,response);
	}
}
else
{
	response.sendRedirect("login.jsp");
}
%>

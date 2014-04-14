<%@ page errorPage="../login.jsp" %>

<%@ page import="java.sql.*"%>
<jsp:useBean id='clock' scope='page' class='dates.JspCalendar' type="dates.JspCalendar" />
<%!
String usrname,usrmail;
%>

<%
String hs=(String)session.getAttribute("valid");


if (hs!=null)
{
	if((hs.equals("D")))
	{
		usrname=(String)session.getAttribute("uname");
		//usrmail=(String)hs.getAttribute("mail");		
	}
	else
	{
		response.sendRedirect("../login.jsp");
	}
	
}
else
{
	response.sendRedirect("../login.jsp");
}
%>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Manufact Services</title>
<meta name="keywords" content="" />
<meta name="Small Window " content="" />
<link href="../css/default.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style5 {
	color: #33FFCC;
	font-size: 24px;
}
.style24 {color: #000000; font-size: 14px; }
.style25 {font-size: 14px; color: #0000FF; }
.style28 {color: red}
.style29 {font-size: 18px}
.style30 {
	font-size: 18px;
	color: red;
}
.style34 {color: #996600; font-size: 18px;}
.style56 {color: #6666CC}
.style63 {color: #0066FF}
.style64 {color: #996600}
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style64">B</span> <span class="style28">2</span> <span class="style64">c network solutions </span></h1>
</div>

<div id="menu">
  <p>&nbsp;</p>
  <table width="100%" border="0">
    <tr>
      <td width="24%" class="style62 style25 style29 style64">Welcome</td>
      <td width="41%"><span class="style51 style26 style30">
        <%if(usrname==null){}else{%>
        <%=usrname%>
        <%}%>
      </span></td>
      <td width="35%" class="style62  style34">Distributors Blog</td>
    </tr>
  </table>
  <table width="100%" height="78" border="0">
    <tr>
      <td width="20%" height="74"><a href="../Dis.jsp">home</a></td>
      <td width="20%"><a href="abts.jsp" class="style24">About us</a></td>
      <td width="20%"><a href="cnts.jsp" class="style24">Contact</a></td>
      <td width="20%"><a href="stms.jsp" class="style24">Sitemap</a></td>
	   <td width="20%"><a href="../signout.jsp" class="style24">Sign Out</a></td>
    </tr>
  </table>
  </div>
<div>
  
<table width="980" height="240" border="0" background="../images/KINGW013.JPG" >
  <tr>
    <td width="18" height="236">&nbsp;</td>
    <td width="743" height="236" ><div align="center">
      <p align="left" class="entry style5">&nbsp;</p>
      <p align="left" class="entry style5">Our Principle is Wealth Maximization&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/acc_handheld_accessories_70.gif" alt="Asseseries" /> &nbsp;<img src="../images/acc_computer_accessories_70.gif" alt="asseseries" />&nbsp;<img src="../images/acc_scanner_accessories_70.gif" alt="" width="70" height="70" /></p>
      </div></td>
    <td width="205"><img src="../images/B2Coutlines_to5w2v.jpg" width="174" height="177" border="1"  /></td>
  </tr>
</table>
</div>
</div>

<div id="page">
  
  
  <div id="div" align="">
    <form id="order" action="Update.jsp" method="post" onsubmit="return isEmpty()">
      <table width="73%" height="54" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
        <tr >
          <td width="2%" height="38" background="../images/top1bg.gif">&nbsp;</td>
          <td width="21%" background="../images/top1bg.gif"><div align="center"><a href="../Dis.jsp" class="style25">Home</a></div></td>
          <td width="77%" background="../images/top1bg.gif"><div align="right">Order Date:
            <jsp:getProperty name="clock" property="date"/>        
                  <span class="style56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div></td>
        </tr>
        <tr>
          <td colspan="10"><table align="center" border="3" cellspacing="1">
              <caption>
              <h1 class="style63" >Customers Report</h1>
              </caption>
            <tr>
                <th align="center">Customers Name </th>
                <th align="center">Phone Number</th>
              <th align="center">Email-ID</th>
              <th align="center">Address</th>
            </tr>
              <%
    try  {
	    	Connection con=null;
	Class.forName("com.mysql.jdbc.Driver");
        	con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
             
	
         Statement st = null;
      st=con.createStatement();

   ResultSet rs=st.executeQuery("select * from register where t1='c'  ");
   while(rs.next())
   {
    out.println("<tr><td>");
    out.println(rs.getString(3));
   out.println("</td><td>");
    out.println(rs.getString(8));
   out.println("</td><td>");
    out.println(rs.getString(9));
	out.println("</td><td>");
    out.println(rs.getString(10));
   out.println("</td></tr>");
   %>
              <%
      }
   }
   catch(Exception e)
   { out.print(e);}
 %>
          </table></td>
        </tr>
        <tr>
          <td><p>&nbsp;</p></td>
        </tr>
      </table>
    </form>
  </div>
</div>

<div id="footer">
	<table width="980" height="93" border="0">
  <tr>
   <td>&nbsp;<p>&copy;2009 All Rights Reserved. &nbsp;&nbsp; Design by:   B2c   network solutions </p></td>
  </tr>
</table>
</div>
</body>
</html>

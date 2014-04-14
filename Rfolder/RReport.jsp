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
	if((hs.equals("R")))
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
<title>Retail Products</title>
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
.style28 {color: red}
.style35 {font-size: 24px}
.style36 {color: #0099FF}
.style37 {font-size: 24px; color: #0099FF; }
.style51 {color: green; font-size: 18px; }
.style64 {color: #FF6600; font-size: 18px; }
.style65 {color: #FF6600}
.style25 {font-size: 14px; color: #0000FF; }
.style56 {color: #6666CC}
.style63 {color: #0066FF}
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style65">B</span> <span class="style28">2</span> <span class="style65">c network solutions </span></h1>
</div>

<div>
  <div id="menu">
    <p>&nbsp;</p>
    <table width="100%" border="0">
      <tr>
        <td width="24%"><span class="style64">Welcome</span></td>
        <td width="41%"><span class="style51">
          <%if(usrname==null){}else{%>
          <%=usrname%>
          <%}%>
        </span></td>
        <td width="35%"><span class="style64">Retailers Blog</span></td>
      </tr>
    </table>
    </p>
    <table width="100%" height="55" border="0">
      <tr>
        <td width="20%"><a href="../Ret.jsp">home</a></td>
        <td width="20%"><a href="abts.jsp" class="style24">About us</a></td>
        <td width="20%"><a href="cnts.jsp" class="style24">Contact</a></td>
        <td width="20%"><a href="stms.jsp" class="style24">Sitemap</a></td>
        <td width="20%"><a href="../signout.jsp" class="style24">Sign Out</a></td>
      </tr>
    </table>
  </div>
  
<table width="980" height="241" border="0" background="../images/KINGW013.JPG" >
  <tr>
    <td width="18" height="237">&nbsp;</td>
    <td width="743" height="237" ><div align="center">
      <p align="left" class="entry style5">&nbsp;</p>
      <p align="left" class="entry style5">Our Principle is Wealth Maximization&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/acc_handheld_accessories_70.gif" alt="Asseseries" /> &nbsp;<img src="../images/acc_computer_accessories_70.gif" alt="asseseries" />&nbsp;<img src="../images/acc_scanner_accessories_70.gif" alt="" width="70" height="70" /></p>
      </div></td>
    <td width="205"><img src="../images/B2Coutlines_to5w2v.jpg" width="174" height="177" border="1"  /></td>
  </tr>
</table>
</div>
</div>

<div id="page" align="">
  <table width="73%" height="54" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
    <tr >
      <td width="2%" height="38" background="../images/top1bg.gif">&nbsp;</td>
      <td width="21%" background="../images/top1bg.gif"><div align="center"><a href="../Ret.jsp" class="style25">Home</a></div></td>
      <td width="77%" background="../images/top1bg.gif"><div align="right">Order Date:
        <jsp:getProperty name="clock" property="date"/>      
              <span class="style56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div></td>
    </tr>
    <tr>
      <td colspan="10"><table align="center" border="3" cellspacing="1">
          <caption>
          <h1 class="style63" >Retailers Report</h1>
          </caption>
        <tr>
            <th align="center">Distributors Name </th>
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

   ResultSet rs=st.executeQuery("select * from register where t1='r'  ");
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

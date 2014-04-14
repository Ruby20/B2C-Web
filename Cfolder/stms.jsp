<%@ page errorPage="../login.jsp" %>

<%!
String usrname,usrmail;
%>

<%
String hs=(String)session.getAttribute("valid");

if (hs!=null)
{
	if((hs.equals("yes")))
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






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>cust Sitmap</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../css/mm_spa.css" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0cm;
	margin-top: 0cm;
	margin-right: 0cm;
	margin-bottom: 0cm;
}
.style10 {
	font-size: 24px;
	color: #FF9900;
}
.style15 {font-size: 24px; color: #FF6600; }
.style19 {font-size: 18px}
.style28 {font-size: 16px}
.style29 {
	color: #0000FF;
	font-size: 16px;
}
.style30 {
	color: #0000FF;
	font-size: 14px;
}
.style33 {
	color: #FFFFFF;
	font-size: 16px;
	font-weight: bold;
}
.style38 {color: #0099CC; font-size: 18px; }
.style39 {color: #FFFFFF; font-size: 18px; }
.style40 {
	color: #FFFF00;
	font-size: 16px;
}
.style41 {color: #0099CC}
.style42 {color: #FFFF00}
-->
</style>
</head>

<body bgcolor="#333333">

<table width="100%" height="627" border="0" cellpadding="0" cellspacing="0" background="../images/KINGW013.JPG">
	<tr>
		<td width="184" rowspan="0">&nbsp;<img src="../images/acc_printer_accessories_70.gif" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/acc_handheld_accessories_70.gif" /></td>
	    <td width="608" height="151" nowrap="nowrap" class="pageName"><p>
	    
	    <div align="center" class="style15">
	    <p class="style10">B<sub>2</sub>C NETWORK SOLUTIONS</p>
	    <p> <span class="style19">&quot;We Care For You&quot;</span></p>
	  </div>
	  </p></td>
   		<td width="217" rowspan="0"><div align="center"><img src="../images/B2Coutlines_to5w2v.jpg" alt="Logo of Company" width="188" height="142" border="1" /></div></td>
	</tr>
	
 	<tr bgcolor="green">
 		<td height="0" colspan="6"></td>
	</tr>
	
	<tr bgcolor="red">
 		<td height="0" colspan="6"></td>
	</tr>
	
	<tr bgcolor="green">
 		<td height="2" colspan="6"></td>
	</tr>

	<tr>
    	<td height="403" colspan="3" valign="top"><table width="100%" height="419" border="0" align="center" cellpadding="0" cellspacing="0"  >
          <tr>
            <td height="16" colspan="4">&nbsp;</td>
          </tr>
          <tr>
            <td height="17" colspan="4" class="bordertop" bgcolor="#033976" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style33"> S&nbsp;I&nbsp;T&nbsp;E&nbsp;M&nbsp;A&nbsp;P</span></td>
          </tr>
          <tr>
            <td width="111" class="bordertop"><div align="center"></div></td>
            <td width="20" height="383" class="borderbox"><p align="center" class="style28">&nbsp;</p>            </td>
            <td width="880" class="bordertop" ><table width="786" height="167" border="1" align="center">
              <tr>
                <td  height="31" colspan="5"><div align="center" class="style39">Customers Sitemap</div></td>
              </tr>
              <tr>
                <td width="167" height="25"><div align="center" class="style38"><a href="../login.jsp" class="style41">Login Page</a> </div></td>
                <td width="176"><div align="center" class="style38"><a href="../Main.jsp" class="style41">Customers Blog</a></div></td>
                <td width="184"><div align="center" class="style38">Categaries</div></td>
                <td width="215">&nbsp;</td>
              </tr>
              <tr>
                <td height="101"><ul>
                    <li class="style28"><a href="../Register.jsp" class="style42">Register</a></li>
                </ul>
                    <p>&nbsp;</p>
                  <ul>
                      <li class="style28"><a href="../Forgot.jsp" class="style42">Forgor Password</a></li>
                  </ul>
                  <p>&nbsp;</p></td>
                <td><ul class="style28">
                    <li><a href="../Main.jsp" class="style42">Home</a></li>
                </ul>
                    <ul class="style28">
                      <li><a href="abts.jsp" class="style42">About Us</a></li>
                    </ul>
                  <ul class="style28">
                      <li><a href="cnts.jsp" class="style42">Contact</a></li>
                  </ul>
                  <ul class="style28">
                      <li><a href="stms.jsp" class="style42">Sitemap</a></li>
                  </ul>
                  <ul class="style28">
                      <li><a href="../signout.jsp" class="style42">Sign out </a></li>
                  </ul></td>
                <td><ul class="style40">
                    <li><a href="../CProfile.jsp" class="style42">Your Prifile</a></li>
                </ul>
                    <ul class="style40">
                      <li><a href="Services.jsp" class="style42">Services</a></li>
                    </ul>
                  <ul class="style40">
                      <li><a href="Products.jsp" class="style42">Products</a></li>
                  </ul>
                  <ul class="style40">
                      <li><a href="Alerts.jsp" class="style42">Alerts</a></li>
                  </ul>
                  <ul class="style40">
                      <li><a href="../Feedback.jsp" class="style42">Feedback </a></li>
                  </ul></td>
                <td><ul class="style28">
                    <li><a href="../Orders.jsp" class="style42">Orders</a></li>
                </ul>
                    <ul class="style28">
                      <li><a href="../Complaints.jsp"class="style42">Complaints</a></li>
                    </ul>
                  <ul class="style28">
                      <li><a href="Downloads.jsp" class="style42">Downloads</a></li>
                  </ul>
                  </td>
              </tr>
            </table></td>
          </tr>
        </table> 
    	  <hr color="#FF0000"/>	  
	   <marquee align="middle">
	    <span class="style21 style29">B2C Network Solutions</span>
      </marquee></td>
	</tr>
	
	<tr>
   		<td background="../images/KINGW014.JPG"width="184" height="38">&nbsp;</td>
    	<td background="../images/KINGW014.JPG"width="608" height="38">&nbsp;</td>
	  	<td background="../images/KINGW014.JPG"width="217" height="38"><div align="center"><a href="../Main.jsp" class="style28 style30">HOME</a></div></td>
  	</tr>
</table>


</body>
</html>

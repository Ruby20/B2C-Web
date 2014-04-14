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






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>PReports</title>
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
.style27 {color: green}
.style28 {color: red}
.style29 {font-size: 18px}
.style30 {
	font-size: 18px;
	color: red;
}
.style34 {color: green; font-size: 18px;}
.style64 {
	font-size: 18px;
	color: #0033FF;
	font-weight: bold;
}
.style65 {color: #000000}
.style66 {color: #000000; font-weight: bold; }
.style67 {color: #FF0000}
.style68 {
	color: #0033FF;
	font-weight: bold;
}
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style27">B</span> <span class="style28">2</span> <span class="style27">c network solutions </span></h1>
</div>

<div id="menu">
  <p>&nbsp;</p>
  <table width="100%" border="0">
    <tr>
      <td width="24%" class="style62 style25 style29 style27">Welcome</td>
      <td width="41%"><span class="style51 style26 style30">
        <%if(usrname==null){}else{%>
        <%=usrname%>
        <%}%>
      </span></td>
      <td width="35%" class="style62  style34">Manufacturers Blog</td>
    </tr>
  </table>
  <table width="100%" height="78" border="0">
    <tr>
      <td width="20%" height="74"><a href="../Main.jsp">home</a></td>
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
      <table width="100%" border="1" align="center" background="../images/back.jpg">
        <tr>
          <td colspan="8"><div align="center" class="style64 style65">Digital Camera  </div></td>
        </tr>
        <tr>
          <td width="20%"><div align="center">Model</div></td>
          <td width="20%"><div align="center">Market Price</div></td>
          <td width="20%"><div align="center">Sensor</div></td>
          <td width="20%"><div align="center">Optical Zoom </div></td>
          <td width="20%"><div align="center">LCD Screen </div></td>
        </tr>
        <tr>
          <td>Canon Powershot SX120 </td>
          <td>Rs 14995 </td>
          <td>10 MP </td>
          <td>10x</td>
          <td>3.0 Inches </td>
        </tr>
        <tr>
          <td>Kodak C140 </td>
          <td>Rs 4999 </td>
          <td>8 MP </td>
          <td>3x</td>
          <td>2.4 Inches </td>
        </tr>
        <tr>
          <td>Nikon</td>
          <td>Rs 23995 </td>
          <td>12 MP </td>
          <td>24x</td>
          <td>2.7 Inches </td>
        </tr>
        <tr>
          <td>Olympus FE25 </td>
          <td>Rs 5995 </td>
          <td>10 MP </td>
          <td>3x</td>
          <td>2.4 Inches </td>
        </tr>
        <tr>
          <td>Sony Hx1 </td>
          <td>Rs 29000 </td>
          <td>9 MP </td>
          <td>20x</td>
          <td>3.0 Inches </td>
        </tr>
        <tr>
          <td>Sony H2O </td>
          <td>Rs 17500 </td>
          <td>10 MP </td>
          <td>10x</td>
          <td>3 Inches </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><div align="center" class="style67"><a href="../Orders.jsp" class="style68">Buy Now</a></div></td>
          <td><div align="center"><a href="Products.jsp" class="style66 style67">Back</a></div></td>
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

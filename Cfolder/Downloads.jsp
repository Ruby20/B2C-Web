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




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Cust Downloads</title>
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
.style28 {color: green}
.style29 {color: red}
.style39 {
	font-size: 18px;
	color: #0066FF;
}
.style32 {color: #000000}
.style33 {font-size: 16px}
.style34 {color: #000000; font-size: 16px; }
.style35 {font-size: 16}
.style49 {color: green; font-size: 18px; }
.style51 {color: #FF0000; font-size: 18px; }
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style28">B</span> <span class="style29">2</span> <span class="style28">c network solutions </span></h1>
</div>

<div id="menu">
  <p>&nbsp;</p>
  <table width="100%" border="0">
    <tr>
      <td width="24%"><span class="style49">Welcome</span></td>
      <td width="41%"><span class="style51">
        <%if(usrname==null){}else{%>
        <%=usrname%>
        <%}%>
      </span></td>
      <td width="35%"><span class="style49">Customers Blog</span></td>
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

<div id="page">
  <table width="100%" border="2" background="../css/pur7bo.gif">
  <tr>
    <td><table width="100%" border="0">
  <tr>
    <td width="60%">&nbsp;</td>
    <td width="40%">&nbsp;</td>
  </tr>
  <tr>
    <td class="bordertop" colspan="4"><div align="center" class="style39">
      <div align="center"><U>D O W N L O A D &nbsp;A R E A </U></div>
    </div></td>
    
  </tr>
  <tr>
    <td class="bordertop" width="60%"><table width="187" border="1" align="right">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="177"><p align="center"><a href="../Download/portfolio.doc"class="style32 style33">Product Detailes</a></p>
      <p align="center"><a href="Download/portfolio.doc" class="style34">Cetalogs</a></p>
      <p align="center"><a href="Download/portfolio.doc" class="style34">Demo softwares</a></p>
      <p align="center"><a href="Download/portfolio.doc" class="style32 style33">Laptop Drivers</a></p>
      <p align="center" class="style35"><a href="Download/portfolio.doc" class="style34">Desktop Specifications</a></p>
      <p align="center" class="style35"><a href="Download/portfolio.doc" class="style34">Updates</a></p>
      <p align="center" class="style35"><a href="Download/portfolio.doc" class="style34">Manufacturers Detailes</a></p>
   <p align="center"><span class="style33"><a href="Download/portfolio.doc" class="style32">Customer services</a></span></p></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
  </tr>
  
  
</table></td>
    <td class="bordertop"><div align="center"></div></td>
  </tr>
  <tr>
    <td >&nbsp;</td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td class="bordertop">&nbsp; </td>
    <td class="bordertop">&nbsp;</td>
  </tr>
</table>
</td>
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

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
<title>Cust Alerts</title>
<meta name="keywords" content="" />
<meta name="Small Window " content="" />
<link href="../css/default.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style5 {
	color: #33FFCC;
	font-size: 24px;
}
.style15 {color: #00FFCC}
.style16 {color: #00FFFF}
.style17 {color: #FFFFFF}
.style24 {color: #000000; font-size: 14px; }
.style25 {color: green}
.style26 {color: red}
.style49 {color: green; font-size: 18px; }
.style51 {color: #FF0000; font-size: 18px; }
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">
<div id="logo">
	<h1><span class="style25">b</span> <span class="style26">2</span> <span class="style25">c network solutions</span> </h1>
	
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
  <table width="100%" height="83" border="0">
    <tr>
     <td width="20%" height="79"><a href="../Main.jsp">home</a></td>
      <td width="20%"><a href="abts.jsp" class="style24">About us</a></td>
      <td width="20%"><a href="cnts.jsp" class="style24">Contact</a></td>
      <td width="20%"><a href="stms.jsp" class="style24">Sitemap</a></td>
	   <td width="20%"><a href="../signout.jsp" class="style24">../Sign Out</a></td>
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
<!-- end header -->

<div id="wrapper">
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
	  <div class="post">
			<h2 class="title style16">Latest News and Updates </h2>
		    <p class="byline">&nbsp;</p>
		  <p class="byline">&nbsp;</p>
		  <p class="byline">&nbsp;</p>
		  <p class="byline">&nbsp;</p>
		  <p class="byline">&nbsp;</p>
	  </div>
	</div>
	<!-- end content -->
	<!-- start sidebars -->
	<div id="sidebar1" class="sidebar">
		<ul>
			<li>
				<h2 class="style15"><font color="#00FFFF">Customer Suppors</font></h2>
				<ul>
					<li><a href="../CProfile.jsp">Your Profile</a></li>
					<li><a href="../Orders.jsp">Orders</a></li>
					<li><a href="../Complaints.jsp">Compliants</a></li>
					<li><a href="../Feedback.jsp">Feedback</a></li>
				 
				</ul>
			</li>
	    </ul>
	</div>
	<div id="div2" class="sidebar">
      <ul>
        <li>
          <h2><font color="#00FFFF">Categories</font></h2>
          <ul>
            <li><a href="Services.jsp">Services</a></li>
            <li><a href="Products.jsp">Products</a></li>
            <li><a href="Alerts.jsp">Alerts</a></li>
            <li><a href="Downloads.jsp">Downloads</a></li>
          </ul>
        </li>
      </ul>
    </div>
	<!-- end sidebars -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
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

<%@ page errorPage="../login.jsp" %>

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
<title>Manufact Products</title>
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
.style29 {font-size: 18px}
.style30 {
	font-size: 18px;
	color: red;
}
.style38 {color: #000000}
.style39 {color: #996600}
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style39">B</span> <span class="style28">2</span> <span class="style39">c network solutions </span></h1>
</div>

<div id="menu">
  <p>&nbsp;</p>
  <table width="100%" border="0">
    <tr>
      <td width="24%" class="style62 style25 style29 style39">Welcome</td>
      <td width="41%"><span class="style51 style26 style30">
        <%if(usrname==null){}else{%>
        <%=usrname%>
        <%}%>
      </span></td>
      <td width="35%"><span class="style62 style29 style25 style39">Retailers Blog</span></td>
    </tr>
  </table>
  <table width="100%" height="85" border="0">
    <tr>
      <td width="20%" height="69"><a href="../Ret.jsp">home</a></td>
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

<div id="page" align="">
<form name="prd" action="PReport.jsp">
<table border="0" width="100%" background="../images/back.jpg">

  <tr>
    <td >
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
	  <tr><td colspan="5" background="../images/123.JPG"><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/btn_products_dn.jpg" alt="" width="175" height="43" /></div></td>
        
      </table>
    </td>
  </tr>
  
  <tr><td><p>&nbsp;</p>
      <ul>
        <li>
          <div align="center"><a href="Harddrives.jsp" class="style38">Hard Drives</a></div>
        </li>
        </ul>
      
        
          <div align="center">
            <ul>
              <li><a href="Graphiccard.jsp" class="style38">Graphic Card</a></li>
            </ul>
            <ul>
              <li><a href="Digitalcamera.jsp" class="style38">Digital Camera</a></li>
            </ul>
            <ul>
              <li><a href="Motherboard.jsp" class="style38">Motherboards</a></li>
            </ul>
            <ul>
              <li><a href="Proccessers.jsp" class="style38">Processors</a></li>
            </ul>
            <ul>
              <li><a href="Moniters.jsp" class="style38">Moniters</a></li>
            </ul>
            <ul>
              <li><a href="Moniters.jsp" class="style38">Laptops</a></li>
            </ul>
          </div>
          
    </td>
  </tr>
  
  
</table>
</form>

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

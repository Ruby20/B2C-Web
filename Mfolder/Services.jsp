<%@ page errorPage="../login.jsp" %>

<%!
String usrname,usrmail;
%>

<%
String hs=(String)session.getAttribute("valid");


if (hs!=null)
{
	if((hs.equals("M")))
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
.style27 {color: green}
.style28 {color: red}
.style29 {font-size: 18px}
.style30 {
	font-size: 18px;
	color: red;
}
.style34 {color: green; font-size: 18px;}
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
      <td width="20%" height="74"><a href="../Man.jsp">home</a></td>
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
    <table border="0" width="100%" background="../images/back.jpg">
      <tr>
        <td >
            <table width="100%" border="1" cellpadding="0" cellspacing="0">
              <tr>
                <td colspan="5" background="../images/shead.JPG"><div align="center"><img src="../images/ss1.JPG" alt="" width="106" height="34" /></div></td>
              </tr>
              <tr>
                <td width="100%" class="borderbox" colspan="5">
                  
                <table width="100%" border="1">
  <tr>
    <td width="10%" valign="bottom"><img src="../images/welcome_img.jpg" alt="" width="128" height="140" /></td>
    <td width="88%" valign="bottom"><P><IMG height=140 
                              src="../images/contactus_img.jpg" 
                              width=128 align=right> <STRONG><A class=blue_link 
                              href="mailto:contact@finaccindia.com" 
                              target=_blank>contact@finaccindia.com</A></STRONG></P>
                              <P>Service Number : +91-99 866 99 866 </P>
                              <P>&nbsp;</P>
                              <P align="justify">Anyone can consult. Ideas are just the 
        beginning of progress. There must be a drive to 
        act on those ideas. Our services start with 
        precision thinking, followed by relentless 
        execution, and we don't stop until the job is done.</P></TD>
    </tr>
  <tr>
    <td class="bordertop"><div align="center"><img src="../css/ss.gif" alt="service" width="64" height="64" /></div></td>
    <td class="bordertop"><p>B2C  provides a full range of Marketing,  outsourcing, and consulting 
      services </p>
      <ul>
        <li>Software and Hardware Maketing </li>
        <li>Business Consulting </li>
        <li>Project Manengment</li>
      </ul></td>
    </tr>
  <tr>
    <td class="bordertop"><strong>Support 
                Services:</strong></td>
    <td class="bordertop">&nbsp;</td>
    </tr>
  <tr>
    <td class="bordertop"><ul>
      <li><strong>Set up</strong></li>
    </ul></td>
    <td class="bordertop"><div align="justify">From your home
      entertainment center to your home office, we'll 
      help you get up and running. TVs, media devices, 
      printers and PCs – we know 
      ‘em.</div></td>
    </tr>
  <tr>
    <td class="bordertop"><ul>
      <li><strong>Protect</strong></li>
    </ul></td>
    <td class="bordertop"><div align="justify"><span class="para_small">We can help you install 
      and configure security software to shield your 
      computer from viruses, efficient backup tools to 
      save your files, and parental controls to 
      protect your kids</span></div></td>
    </tr>
  <tr>
    <td class="bordertop"><ul>
      <li><strong>Upgrade</strong></li>
    </ul></td>
    <td class="bordertop"><div align="justify"><span class="para_small">We can show you how to 
      improve your PC's power and performance. We’ll 
      help you fine-tune everything for top results 
      and you’ll barely recognize your old machine. 
      Also, check out our available hardware services </span></div></td>
    </tr>
  <tr>
    <td class="bordertop"><ul>
      <li><strong>Know-how</strong></li>
    </ul></td>
    <td class="bordertop">If you’re a fast learner, 
you can delve into our collection of expert 
guides.</td>
    </tr>
  <tr>
    <td class="bordertop">&nbsp;</td>
    <td class="bordertop">&nbsp;</td>
    </tr>
</table>
</td>
                
              </tr>
            </table>
       </td>
      </tr>
    </table>
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

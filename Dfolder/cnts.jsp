<%@ page errorPage="../login.jsp" %>


<%
String hs=(String)session.getAttribute("valid");

if (hs!=null)
{
	if((hs.equals("D")))
	{
		//usrname=(String)hs.getAttribute("name");
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
<title>Distrib Contacts</title>
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
.style35 {
	font-size: 14px;
	font-weight: bold;
}
.style36 {
	color: #000000;
	font-size: 16px;
}
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
            <td height="17" colspan="4" class="bordertop" bgcolor="#033976"><img src="../images/contactus_head.jpg" width="500" height="38" /></td>
          </tr>
          <tr>
            <td width="211" class="bordertop" valign="bottom">

<table width="100%" height="100%" border="0" bgcolor="#FFFFFF">
  <tr>
    <td><img height="137" alt="" src="../images/contactus_img.jpg" width="128" /></td>
  </tr>
  <tr>
    <td><img height="84" alt="" src="../images/contact_img.jpg" width="100%" /></td>
  </tr>
  <tr>
    <TD class="blue_font" style="PADDING-RIGHT: 8px; PADDING-LEFT: 8px; PADDING-BOTTOM: 8px; PADDING-TOP: 8px" 
                                align=middle><span class="style35">contact@b2c.com<BR>
      Mobile: 
                                +91-9740106492</span></TD>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>
      <p>
        <marquee align="middle">
        <span class="style21 style29">B2C Network Solutions</span>
        </marquee>
      </p>
      </td>
  </tr>
</table>
</td>
            <td width="6" height="364" class="borderbox"><p align="center" class="style28">&nbsp;</p> </td>
            <td width="790" class="bordertop"  valign="bottom"><table width="93%" border="0" bgcolor="#FFFFFF">
  
  <tr>
    <td class="bordertop"><pre class="style36"><strong>     Office Address:</strong></pre>
      <pre class="style36">       B2C Network Solutions pvt ltd,
	   Hesaragatta Main Road,
	   Bengalore-577057</pre>
      <pre class="style36">&nbsp;    website: http:\\www.b2cnetworksloutions.com</pre></td>
  </tr>
  <tr>
    <td class="bordertop"><pre class="style36">&nbsp;    <strong>Contact Persons:</strong>

     <span class="blue_font"><strong>Anand Rao</strong></span>
     phone:+91-9740106492
     Email-ID: anandrao@b2c.com
</pre></td>
  </tr>
  <tr>
    <td class="bordertop"><pre class="style36">     <span class="blue_font"><strong>Arjun.U.S</strong></span>
     phone:+91-9916219674
     Email-ID: arjunus@b2c.com</pre></td>
  </tr>
</table>
</td>
          </tr>
        </table> 
    	 
	</tr>
	
	<tr>
   		<td background="../images/KINGW014.JPG"width="184" height="38">&nbsp;</td>
    	<td background="../images/KINGW014.JPG"width="608" height="38">&nbsp;</td>
	  	<td background="../images/KINGW014.JPG"width="217" height="38"><div align="center"><a href="../Dis.jsp" class="style28 style30">HOME</a></div></td>
  	</tr>
</table>


</body>
</html>

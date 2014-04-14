<%@ page errorPage="../login.jsp" %>


<%
String hs=(String)session.getAttribute("valid");

if (hs!=null)
{
	if((hs.equals("R")))
	{
		//usrname=(String)hs.getAttribute("name");
		//usrtype=(String)session.getAttribute("utype");	
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
<title>Retail abts</title>
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
.style33 {color: #FFFFFF}
.style34 {color: #FFFFFF; font-size: 16px; }
.style35 {color: #0000CC}
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
    	<td height="403" colspan="3" valign="top"><table width="100%" height="440" border="0" align="center" cellpadding="0" cellspacing="0"  >
          <tr>
            <td height="16" colspan="4">&nbsp;</td>
          </tr>
          <tr>
            <td height="17" colspan="4" class="bordertop" bgcolor="#033976"><img src="../images/about_head.jpg" /></td>
          </tr>
          <tr>
            <td width="220" class="bordertop"><div align="center"><img src="../images/business.jpg" alt="Business Partners" width="191" height="258" border="1" /></div></td>
            <td width="20" height="385" class="borderbox"><p align="center" class="style28">&nbsp;</p>            </td>
            <td width="780" class="bordertop" ><div>
			
              
              <p class="style33"><span class="style28">&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
              <p align="justify" class="style33"><span class="style28">&nbsp;&nbsp;&nbsp;&nbsp;BUSINESS TO CONUSMER NETWORK SOLUTIONS, started in 2009, is a consulting and outsourcing firm specialized in Marketing,  outsourcing services. Our aim is to provide fast, quality and cost effective manpower,marketing and sales outsourcing solutions to our clients. B2C is a team of dedicated experts which enables us to provide expertise services to our clients. </span></p>
              <p align="justify" class="style34">&nbsp;&nbsp;&nbsp;&nbsp;Our Mission:</p>
<p align="justify" class="style34"> &nbsp;&nbsp;&nbsp;&nbsp;“Empowering our customers in Product Marketing, Customer stasfaction management by providing the professional outsourcing and consulting services”
  
  Our Vision 
  
  “To emerge as India’s leading outsourcing and consulting company in Marketing , sales and Quality Management”</p>
<p align="justify" class="style28">&nbsp;&nbsp;&nbsp;&nbsp;<span class="style33">Our Vision:</span></p>
<p align="justify" class="style34"> “To emerge as India’s leading Marketing and consulting company in Softare and Hardware Industry ”</p>

            </div></td>
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
	  	<td background="../images/KINGW014.JPG"width="217" height="38"><div align="center"><a href="../Ret.jsp"class="style24 style35">HOME</a></div></td>
  	</tr>
</table>


</body>
</html>

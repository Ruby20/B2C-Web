<%@ page errorPage="login.jsp" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id='clock' scope='page' class='dates.JspCalendar' type="dates.JspCalendar" />

<%!
String usrname,usrmail,uid,t3,t8,t9,t10;
%>

<%
String hs=(String)session.getAttribute("valid");

if (hs!=null)
{
	if((hs.equals("D")))
	{
		usrname=(String)session.getAttribute("uname");
		uid=(String)session.getAttribute("uid");
		//usrmail=(String)hs.getAttribute("mail");		
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
	
}
else
{
	response.sendRedirect("login.jsp");
}
%>

<%
String comment=(String)request.getAttribute("comment");
%>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from Register where t2='"+uid+"'");
	while(rs.next())
	{
	t3=rs.getString(3);
		t8=rs.getString(8);
	 	t9=rs.getString(9);
	 	t10=rs.getString(10);
	 	
		
	}st.close();
}
catch(Exception e)
{}
%>	


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Dist Orders</title>
<meta name="keywords" content="" />
<meta name="Small Window " content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" language="javascript" src="datetimepicker.js"></script>
<style type="text/css">
<!--
.style5 {
	color: #33FFCC;
	font-size: 24px;
}
.style10 {
	font-size: 14px;
	color: #0000FF;
}
.style24 {color: #000000; font-size: 14px; }
.style25 {color: green}
.style26 {color: red}
.style51 {color: #FF0000; font-size: 18px; }
.style56 {color: #6666CC}
.style58 {color: #996600; font-size: 18px; }
.style59 {color: #996600}
-->
</style>
</head>

<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style25 style59">B</span> <span class="style26">2</span> <span class="style59">c network solutions </span></h1>
</div>
<div id="menu">
  <p>&nbsp;</p>
  <table width="100%" border="0">
    <tr>
      <td width="24%"><span class="style58">Welcome</span></td>
      <td width="41%"><span class="style51">
        <%if(usrname==null){}else{%>
        <%=usrname%>
        <%}%>
      </span></td>
      <td width="35%"><span class="style58">Distributors Blog</span></td>
    </tr>
  </table>
  <table width="100%" height="82" border="0">
    <tr>
      <td width="20%" height="78"><a href="Dis.jsp">home</a></td>
      <td width="20%"><a href="Dfolder/abts.jsp" class="style24">About us</a></td>
      <td width="20%"><a href="Dfolder/cnts.jsp" class="style24">Contact</a></td>
      <td width="20%"><a href="Dfolder/stms.jsp" class="style24">Sitemap</a></td>
	   <td width="20%"><a href="signout.jsp" class="style24">Sign Out</a></td>
    </tr>
  </table>
  </div>
<div>
<table width="980" height="241" border="0" background="images/KINGW013.JPG" >
  <tr>
    <td width="18" height="237">&nbsp;</td>
    <td width="743" height="237" ><div align="center">
      <p align="left" class="entry style5">&nbsp;</p>
      <p align="left" class="entry style5">Our Principle is Wealth Maximization&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/acc_handheld_accessories_70.gif" alt="Asseseries" /> &nbsp;<img src="images/acc_computer_accessories_70.gif" alt="asseseries" />&nbsp;<img src="images/acc_scanner_accessories_70.gif" alt="" width="70" height="70" /></p>
      </div></td>
    <td width="205"><img src="images/B2Coutlines_to5w2v.jpg" width="174" height="177" border="1"  /></td>
  </tr>
</table>
</div>
</div>

<div id="page">
<form name="order" id="order" action="Orders.do" method="post" onSubmit="return isEmpty()">
<table width="73%" height="782" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr >
    <td height="38" background="images/top1bg.gif">&nbsp;</td>
	<td background="images/top1bg.gif"><div align="center"><a href="Dis.jsp" class="style10">Home</a></div></td>
	<td background="images/top1bg.gif"><div align="right">Order Date:
	  <jsp:getProperty name="clock" property="date"/>
	  <span class="style56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>	  </div></td>
  </tr>
  <tr>
    <td height="16" >&nbsp;</td>
    <td >&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td >&nbsp;</td>
    <td ><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t16" type="text" id="t16" value="<%=hs%>" style="visibility:hidden" />
    </font></b></td>
    <td><font color="#FF0000"><%if(comment==null){}else{%><%=comment%><%}%></font></td>
  </tr>
  <tr>
    <td width="2%" >&nbsp;</td>
    <td width="21%" ><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t17" type="text" id="t17" value="<%=uid%>" style="visibility:hidden" />
    </font></b></td>
    <td width="77%"><strong>Enter 
    the Order details for Your selected Products</strong></td>
  </tr>
  <tr>
    <td height="16">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Product Name</td>
    <td><input name="t1" type="text" id="t1" size="55" maxlength="40" value="" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Model Number </td>
    <td><input name="t2" type="text" id="t2" size="55" maxlength="30" value="" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Company Name </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t3" type="text" id="t3" size="55" maxlength="30" value="" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><font size="2" face="Arial">Quantity</font></td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t4" type="text" id="t4" value="" />
      <input name="t5" type="text" id="t5" size="30" maxlength="30" value="<jsp:getProperty name="clock" property="date"/>" style="visibility:hidden" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Due Date </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t6" type="text" id="t6" value=""  />
      &nbsp;&nbsp;<A  href="javascript:NewCal('t6','ddmmyyyy')"><IMG 
                              alt="Select Date" 
                              src="images/calendar.gif" 
                              border=0></A>
      Date Format: dd/mm/yyyy
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Client Name </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t7" type="text" id="t7" size="55" maxlength="30" value="<%=t3%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Phone Number </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
	
	

      <input name="t8" type="text" id="t8" size="55" maxlength="30" value="<%=t8%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Email ID </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t9" type="text" id="t9" size="55" maxlength="30" value="<%=t9%>" onchange="email()" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Address</td>
    <td><textarea name="t10" cols="30" rows="5" id="t10"><%=t10%></textarea></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td colspan="2"><strong>Demand Draft Detailes </strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Bank Name</td>
    <td><input name="t11" type="text" id="t11" size="50" value="" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Branch &amp; City</td>
    <td><input name="t12" type="text" id="t12" size="50" value="" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Date of Issue</td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t13" type="text" id="t13" value=""  />
      &nbsp;&nbsp;<A  href="javascript:NewCal('t13','ddmmyyyy')"><IMG 
                              alt="Select Date" 
                              src="images/calendar.gif" 
                              border=0></A>
    Date Format: dd/mm/yyyy </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Amount</td>
    <td><input name="t14" type="text" id="t14" size="50" value="" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Draft Number</td>
    <td><input name="t15" type="text" id="t15" size="50" value="" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="30">&nbsp;</td>
    <td><input type="submit" name="Submit" value="Submit" />
        <input name="reset" type="reset" id="reset" value="Reset" /></td>
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

<script language="javascript">  
   
function isEmpty()
{
 a=document.order.t1.value.length;
 b=document.order.t2.value.length;
 c=document.order.t3.value.length;
 d=document.order.t4.value.length;
 e=document.order.t5.value.length;
 f=document.order.t6.value.length;
 g=document.order.t7.value.length;
 h=document.order.t8.value.length;
 

 i=document.order.t9.value.length;
 j=document.order.t10.value.length;
 k=document.order.t11.value.length;
 l=document.order.t12.value.length;
 m=document.order.t13.value.length;
 n=document.order.t14.value.length;
 o=document.order.t15.value.length;
 
 if(a<=0)
  {
  alert('Product name should not be empty');
  document.order.t1.focus();
  return false;
  }
  else
  if(b<=0)
  {
  alert('Model number should not be empty');
  document.order.t2.focus();
  return false;
  }
  else
  if(c<=0)
  {
  alert('Company name should not be empty');
  document.order.t3.focus();
  return false;
  }
  else
  if(d<=0)
  {
  alert('Quantity should not be empty');
  document.order.t4.focus();
  return false;
  }
  
  else
  if(f<=0)
  {
  alert('Due Date should not be empty');
  document.order.t6.focus();
  return false;
  }
  else
  if(g<=0)
  {
  alert('Client Name should not be empty');
  document.order.t7.focus();
  return false;
  }
  else
  if(h<=0)
  {
  alert(' Phone number must not be empty');
  document.order.t8.focus();
  return false;
  }
 
  else
  if(i<=0)
  {
  alert('Email-ID should not be empty');
  document.order.t9.focus();
  return false;
  }
  else
  if(j<=0)
  {
  alert('Enter Your Address ');
  document.order.t10.focus();
  return false;
  }
  else
  if(k<=0)
  {
  alert('Enter the Bank Name');
  document.order.t11.focus();
  return false;
  }
  else
  if(l<=0)
  {
  alert('Enter the Branch and  city');
  document.order.t12.focus();
  return false;
  }
  else
  if(m<=0)
  {
  alert('Enter the Draft Date');
  document.order.t13.focus();
  return false;
  }
  
}
     
function email()
{
var e=document.order.t9.value;
var e1=e.indexOf('@');
var e2=e.indexOf('.');
	if(e1==-1 || e2==-1)
		{
			alert("Invalid Format: eg:- root@gmail.com");
			document.order.t9.value="";
			document.order.t9.focus();
		}
}



</script>
</body>
</html>

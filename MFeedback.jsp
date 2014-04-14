<%@ page errorPage="login.jsp" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id='clock' scope='page' class='dates.JspCalendar' type="dates.JspCalendar" />

<%!
String usrname,usrmail,uid,t3,t8,t9,t10,t6;
%>

<%
String hs=(String)session.getAttribute("valid");

if (hs!=null)
{
	if((hs.equals("M")))
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
	t6=rs.getString(6);
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
<title>Cust Feedback</title>
<meta name="keywords" content="" />
<meta name="Small Window " content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style5 {
	color: #33FFCC;
	font-size: 24px;
}
.style8 {
	font-size: 16px;
	color: #0000FF;
}
.style10 {font-size: 14px}
.style24 {color: #000000; font-size: 14px; }
.style25 {font-size: 14px; color: #0000FF; }
.style26 {color: green}
.style27 {color: red}
.style49 {color: green; font-size: 18px; }
.style51 {color: #FF0000; font-size: 18px; }
.style56 {color: #6666CC}
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style26">B</span> <span class="style27">2</span> <span class="style26">c network solutions </span></h1>
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
      <td width="35%"><span class="style49">Manufactureres Blog</span></td>
    </tr>
  </table>
  <table width="100%" height="79" border="0">
    <tr>
      <td width="20%" height="75"><a href="Man.jsp">home</a></td>
      <td width="20%"><a href="Mfolder/abts.jsp" class="style24">About us</a></td>
      <td width="20%"><a href="Mfolder/cnts.jsp" class="style24">Contact</a></td>
      <td width="20%"><a href="Mfolder/stms.jsp" class="style24">Sitemap</a></td>
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
<form name="order" id="order" action="Feedback.do" method="post" onSubmit="return isEmpty()">
<table width="73%" height="678" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr >
    <td height="38" background="images/top1bg.gif">&nbsp;</td>
	<td background="images/top1bg.gif"><div align="center"><a href="Man.jsp" class="style25">Home</a></div></td>
	<td background="images/top1bg.gif"><div align="right">Date:
	  <jsp:getProperty name="clock" property="date"/>        
        <span class="style56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </div></td>
  </tr>
  <tr>
    <td height="16" >&nbsp;</td>
    <td >&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td >&nbsp;</td>
    <td ><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t7" type="text" id="t7" value="<%=hs%>" style="visibility:hidden" />
    </font></b></td>
    <td><font color="#FF0000">
      <%if(comment==null){}else{%>
      <%=comment%>
      <%}%>
    </font></td>
  </tr>
  <tr>
    <td width="2%" >&nbsp;</td>
    <td width="21%" ><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t8" type="text" id="t8" value="<%=uid%>" style="visibility:hidden" />
    </font></b></td>
    <td width="77%"><strong>Enter 
    Your Feedback </strong></td>
  </tr>
  <tr>
    <td height="16">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Client Name </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t1" type="text" id="t1" size="55" value="<%=t3%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Company Name  </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t2" type="text" id="t2" size="55" maxlength="30" value="<%=t6%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Phone Number </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t3" type="text" id="t3" size="55" maxlength="30" value="<%=t8%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Email ID </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t4" type="text" id="t4" size="55" maxlength="30" value="<%=t9%>" onchange="email()" />
    </font></b></td>
  </tr>
  <tr>
    <td height="121">&nbsp;</td>
    <td>Address</td>
    <td><textarea name="t5" cols="30" rows="5" id="t5"><%=t10%></textarea></td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td colspan="2"><strong>Enter Your Feedback </strong></td>
  </tr>
  <tr>
    <td height="202">&nbsp;</td>
    <td>Feedback</td>
    <td><textarea name="t6" cols="40" rows="10" id="t6"></textarea></td>
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
 b=document.order.t3.value.length;
 c=document.order.t4.value.length;
 d=document.order.t5.value.length;
 e=document.order.t6.value.length;
 
 if(a<=0)
  {
  alert('Client name should not be empty');
  document.order.t1.focus();
  return false;
  }
  else
  if(b<=0)
  {
  alert('Enter the Phone Number');
  document.order.t3.focus();
  return false;
  }
  else
  if(c<=0)
  {
  alert('Enter Your Email-ID');
  document.order.t4.focus();
  return false;
  }
  else
  if(d<=0)
  {
  alert('Enter your Address');
  document.order.t5.focus();
  return false;
  }
  else
  if(e<=0)
  {
  alert('Enter the Feedback');
  document.order.t6.focus();
  return false;
  }
}
     
function email()
{
var e=document.order.t4.value;
var e1=e.indexOf('@');
var e2=e.indexOf('.');
	if(e1==-1 || e2==-1)
		{
			alert("Invalid Format: eg:- root@gmail.com");
			document.order.t4.value="";
			document.order.t4.focus();
		}
}

</script>
</body>
</html>

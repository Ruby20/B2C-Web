<%@ page errorPage="login.jsp" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id='clock' scope='page' class='dates.JspCalendar' type="dates.JspCalendar" />

<%!
String usrname,usrmail,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,uid;
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
		t1=rs.getString(1);
	 	t2=rs.getString(2);
	 	t3=rs.getString(3);
	 	t4=rs.getString(4);
	 	t5=rs.getString(5);
	 	t6=rs.getString(6);
	 	t7=rs.getString(7);
		t8=rs.getString(8);
	 	t9=rs.getString(9);
	 	t10=rs.getString(10);
	 	t11=rs.getString(11);
	 	t12=rs.getString(12);
		t13=rs.getString(13);
		
	}st.close();
}
catch(Exception e)
{}
%>	




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>B2c MProfiles</title>
<meta name="keywords" content="" />
<meta name="Small Window " content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="screen" />
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
.style26 {color: red}
.style28 {font-size: 10}
.style24 {color: #000000; font-size: 14px; }
.style51 {color: #FF0000; font-size: 18px; }
.style59 {color: #996600; font-size: 18px; }
.style56 {color: #6666CC}
.style60 {color: #996600}
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style60">B</span> <span class="style26">2</span> <span class="style60">c network solutions </span></h1>
</div>

<div>
  <div id="menu">
    <p>&nbsp;</p>
    <table width="100%" border="0">
      <tr>
        <td width="24%"><span class="style59">Welcome</span></td>
        <td width="41%"><span class="style51">
          <%if(usrname==null){}else{%>
          <%=usrname%>
          <%}%>
        </span></td>
        <td width="35%"><span class="style59">Distributors Blog</span></td>
      </tr>
    </table>
    </p>
    <table width="100%" height="47" border="0">
      <tr>
        <td width="20%" height="43"><a href="Dis.jsp">home</a></td>
        <td width="20%"><a href="Dfolder/abts.jsp" class="style24">About us</a></td>
        <td width="20%"><a href="Dfolder/cnts.jsp" class="style24">Contact</a></td>
        <td width="20%"><a href="Dfolder/stms.jsp" class="style24">Sitemap</a></td>
        <td width="20%"><a href="signout.jsp" class="style24">Sign Out</a></td>
      </tr>
    </table>
  </div>
  
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
<form name="order" id="order" action="Update.jsp" method="post" onSubmit="return isEmpty()">
<table width="73%" height="782" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr >
    <td height="38" background="images/top1bg.gif">&nbsp;</td>
	<td background="images/top1bg.gif"><div align="center"><a href="Dis.jsp" class="style10">Home</a></div></td>
	<td background="images/top1bg.gif"><div align="right"> Date:
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
    <td >&nbsp;</td>
    <td><font color="#FF0000">
      <%if(comment==null){}else{%>
      <%=comment%>
      <%}%>
    </font></td>
  </tr>
  <tr>
    <td width="2%" >&nbsp;</td>
    <td width="21%" >&nbsp;</td>
    <td width="77%"><strong>Your Profile Detailes </strong></td>
  </tr>
  <tr>
    <td height="16">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>User Type </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t15" type="text" disabled="disabled" id="t15" value="Distributor" size="15" maxlength="25" />
    </font></b><span class="style28"><font color="#FF66CC" face="Arial"></font></span> <b><font color="#FF66CC" size="1" face="Arial">
    <input name="t1" type="text" style="visibility:hidden" id="t1" value="<%=t1%>" size="15" maxlength="25" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>User-ID</td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t16" type="text" disabled="disabled" id="t16" value="<%=t2%>" size="15" maxlength="25" />
      <input name="t2" type="text" style="visibility:hidden" id="t2" value="<%=t2%>" size="15" maxlength="25" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>User Name  </td>
    <td><input name="t3" type="text" id="t3" value="<%=t3%>" size="25" maxlength="30" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Enter Password</td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t4" type="password" id="t4" size="15" maxlength="10" value="<%=t4%>"  />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><font size="2" face="Arial">Confirm Password </font></td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t5" type="password" id="t5" size="15" maxlength="10" onchange="chkpass()" value="<%=t5%>">
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Company Name  </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t6" type="text" id="t6" size="50" value="<%=t6%>"  />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Industry Type  </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t7" type="text" id="t7" size="40" maxlength="30" value="<%=t7%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Phone Number </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t8" type="text" id="t8" size="30" maxlength="30" value="<%=t8%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Email ID </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t9" type="text" id="t9" size="55" maxlength="30"  onchange="email()" value="<%=t9%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Address</td>
    <td><textarea name="t10" cols="30" rows="5" id="t10"><%=t10%></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>City</td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t11" type="text" id="t11" size="30" maxlength="30" value="<%=t11%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="34"><p>Zipcode</p></td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t12" type="text" id="t12" size="21" maxlength="30" value="<%=t12%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>State </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t13" type="text" id="t13" size="30" maxlength="30" value="<%=t13%>" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="30">&nbsp;</td>
    <td><input type="submit" name="Submit" value="Update" />
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

	c=document.order.t4.value.length;
 	d=document.order.t5.value.length;
	
	if(c<=0)
  {
  alert('Enter the Password');
  document.order.t4.focus();
  return false;
  }
  else
  if(d<=0)
  {
  alert('Enter the Confirmation Password ');
  document.order.t5.focus();
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

function chkpass()
{
var a=document.order.t4.value;
var b=document.order.t5.value;

	if(a != b  || b!=a)
		{
			alert("Cofirm Password is not correct");
			document.order.t5.value="";
			document.order.t5.focus();
		}
}

</script>
</body>
</html>


<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>


<%
String comment=(String)request.getAttribute("comment");
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>B2c Registers</title>
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
.style25 {color: green}
.style26 {color: red}
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">

<div id="logo">
	<h1><span class="style25">B</span> <span class="style26">2</span> <span class="style25">c network solutions </span></h1>
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
<form name="order" id="order" action="Register.do" method="post" onSubmit="return isEmpty()">
<table width="73%" height="782" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr >
    <td height="38" background="images/top1bg.gif">&nbsp;</td>
	<td background="images/top1bg.gif"><div align="center"><a href="login.jsp" class="style10">Home</a></div></td>
	<td background="images/top1bg.gif">&nbsp;</td>
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
    <td width="77%"><strong>Enter Your details to Register  </strong></td>
  </tr>
  <tr>
    <td height="16">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>User Type </td>
    <td><select name="t1" id="t1" onChange="visibal()">
      <option value="">Select</option>
      <option value="m">Manufacturer</option>
      <option value="d">Distributor</option>
      <option value="r">Retailor</option>
	   <option value="c">Customer</option>
    </select></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>User ID </td>
    <td>
	
<%
try{
	  
	  Connection con=null;
	  Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
	   
	  Statement state;
	  int no=0, i=0;
	  state=con.createStatement();
	  ResultSet rs = state.executeQuery("select * from register");
	  while(rs.next())
		{
			no=no+1;
		}
		
		if( no > 0 )
		{	
				ResultSet rs1 = state.executeQuery("select * from register");
				for(i=0;i<no;i++)
					{
							rs1.next();
					}
						String str2=rs1.getString(2);
						String temp=str2.substring(3);
						int id=Integer.parseInt(temp);
						 String diid="B2C"+(id+1);%>
	<input name="t15" type="text" disabled="disabled" style="visibility:hidden"  id="t15" value="<% out.println(diid);%>" />
	<input name="t2" type="text" id="t2"  style="visibility:hidden" value="<% out.println(diid);%>" />
				
				<%
			}

	   
}
catch(NumberFormatException e)
        {
	out.println(e);
          }
catch(SQLException e)
        {
	out.println(e);
         }

%>
	
	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>User Name  </td>
    <td><input name="t3" type="text" id="t3" size="55" maxlength="30" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Enter Password</td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t4" type="password" id="t4" size="15" maxlength="10"  />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><font size="2" face="Arial">Confirm Password </font></td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t5" type="password" id="t5" size="15" maxlength="10" onchange="chkpass()" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Company Name  </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input  name="t6" type="text" id="t6" size="50"  />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Industry Type  </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t7" type="text" id="t7" size="40" maxlength="30" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Phone Number </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t8" type="text" id="t8" size="30" maxlength="30" value=""  />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Email ID </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t9" type="text" id="t9" size="55" maxlength="30"  onchange="email()" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Address</td>
    <td><textarea name="t10" cols="30" rows="5" id="t10"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>City</td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t11" type="text" id="t11" size="30" maxlength="30" />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="34"><p>Zipcode</p></td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t12" type="text" id="t12" size="21" maxlength="30"  />
    </font></b></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>State </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t13" type="text" id="t13" size="30" maxlength="30" />
    </font></b></td>
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
 
 c=document.order.t3.value.length;
 d=document.order.t4.value.length;
 e=document.order.t5.value.length;
 
 
 h=document.order.t8.value.length;
 
 i=document.order.t9.value.length;
 
 j=document.order.t10.value.length;
 k=document.order.t11.value.length;
 l=document.order.t12.value.length;

 m=document.order.t13.value.length;
			
 
  if(a == 0)
	{
				
	alert("Please Enter the User Type");
	document.order.t1.focus();
	return false;
	}
  
  else
  if(c<=0)
  {
  alert('Enter the User Name');
  document.order.t3.focus();
  return false;
  }
  else
  if(d<=0)
  {
  alert('Enter the Password ');
  document.order.t4.focus();
  return false;
  }
  
  else
  if(e<=0)
  {
  alert('Enter the Confirm Password');
  document.order.t5.focus();
  return false;
  }
  else
  if(h<=0)
  {
  alert('Phone Number Should not be empty');
  document.order.t8.focus();
  return false;
  }
  else
  if(i<=0)
  {
  alert('Enter The Email ID');
  document.order.t9.focus();
  return false;
  }
  else
  if(j<=0)
  {
  alert('Enter Your Address');
  document.order.t10.focus();
  return false;
  }
  else
  if(k<=0)
  {
  alert('Enter the City');
  document.order.t11.focus();
  return false;
  }
  else
  if(l<=0)
  {
  alert('Enter the Zipcode');
  document.order.t12.focus();
  return false;
  }
   else
  if(m<=0)
  {
  alert('Enter Your State');
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

function visibal(){	
		
		
		
		if (document.order.t1.selectedIndex=="") {
			
			document.order.t15.style.visibility  = "hidden" ;
		}
		else{
			document.order.t15.style.visibility  = "visible" ;
			}
}


function ph()
{
	
	var a=document.order.t8.value.search(/^[0-9]$/);
	
	if(a!=0)
	{
		alert("Enter the Phone Number in Digit form");
		document.order.t8.value="";
		document.order.t8.focus();
		return false;
	}
}


</script>
</body>
</html>

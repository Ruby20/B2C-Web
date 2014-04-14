<%
String comment=(String)request.getAttribute("comment");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>B2c Forgot Password</title>
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
<form name="order" id="order" action="Forgot.do" method="post" onSubmit="return isEmpty()">
<table width="73%" height="357" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
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
    <td height="45" >&nbsp;</td>
    <td >&nbsp;</td>
    <td><p><font color="#FF0000">
      <%if(comment==null){}else{%>
      <%=comment%>
      <%}%>
    </font></p>
      </td>
  </tr>
  <tr>
    <td width="2%" height="38" >&nbsp;</td>
    <td width="21%" >&nbsp;</td>
    <td width="77%"><p><strong>Enter Your details to get your Username/Password </strong></p>
      </td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="56">&nbsp;</td>
    <td>User Type </td>
    <td><select name="t1" id="t1">
      <option value="">Select</option>
      <option value="m">Manufacturer</option>
      <option value="d">Distributor</option>
      <option value="r">Retailor</option>
	  <option value="c">Customer</option>
    </select></td>
  </tr>
  <tr>
    <td height="55">&nbsp;</td>
    <td>User ID </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t2" type="text" id="t2" size="30" maxlength="30" />
    </font></b></td>
  </tr>
  <tr>
    <td height="54">&nbsp;</td>
    <td>Email ID </td>
    <td><b><font color="#FF66CC" size="1" face="Arial">
      <input name="t3" type="text" id="t3" size="55" maxlength="30" value="" onchange="email()" />
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
 b=document.order.t2.value.length;
 c=document.order.t3.value.length;
 
  if(a == 0)
	{
				
	alert("Please Enter the User Type");
	document.order.t1.focus();
	return false;
	}
  
  else
  if(b<=0)
  {
  alert('Enter phone number');
  document.order.t2.focus();
  return false;
  }
  else
  if(c<=0)
  {
  alert('Enter the Email-ID');
  document.order.t3.focus();
  return false;
  }
  
}
     
function email()
{
var e=document.order.t3.value;
var e1=e.indexOf('@');
var e2=e.indexOf('.');
	if(e1==-1 || e2==-1)
		{
			alert("Invalid Format: eg:- root@gmail.com");
			document.order.t3.value="";
			document.order.t3.focus();
		}
}


</script>
</body>
</html>

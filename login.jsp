
<jsp:useBean id='clock' scope='page' class='dates.JspCalendar' type="dates.JspCalendar" />

<%
String comment=(String)request.getAttribute("comment");
%>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>B2C Network Login page</title>
<link href="css/styles.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style4 {font-size: 18px; color: #033976;}
.style12 {font-size: 16px}
-->
</style>
<head>
<script language="javascript">
	function validate()
	{		if(document.lform.utype.value.length == 0)
			{
				
				alert("Please Enter the User Type");
				document.lform.utype.focus();
				return false;
			}
			else
			if(document.lform.uid.value.length == 0)
			{
				
				alert("Please Enter the User-ID");
				document.lform.uid.focus();
				return false;
			}
			else
			if(document.lform.upass.value.length == 0)
			{
				
				alert("Please Enter the Password");
				document.lform.upass.focus();
				return false;
			}
				
				
	}
</script>
</head>

<body background="css/pur7b.gif">
<form name="lform" method="post" action="Login.do">
<table width="100%"  border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td height="85" colspan="4" ><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p align="center"><img src="css/welcome_018.gif" alt="Welcome" width="279" height="35"></p>
      <p>&nbsp;</p></td>
    </tr>
  
  <tr>
    <td height="19" colspan="4" ><div align="center"><font color="#FF0000">&nbsp;&nbsp;<%if(comment==null){}else{%><%=comment%><%}%></font></div></td>
  </tr>
  <tr>
    <td width="4%" rowspan="0" class="bordertop">&nbsp;</td>
    <td width="4%" colspan="" class="bordertop">&nbsp;</td>
    <td width="57%" class="bordertop"><font color="green" size="5">B </font><font size="5"><span class="style1">2</span></font><font color="green" size="5"> C Network Solutions </font></td>
    <td width="35%" class="bordertop"><p class="style4" >Welcome </p></td>
  </tr>
  <tr>
    <td height="19" colspan="4" class="bordertop">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><table width="99%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="39%">
		<p>&nbsp;&nbsp;</p>
		<p>&nbsp;&nbsp;</p>
		<p>&nbsp;&nbsp;</p>
		<p>&nbsp;&nbsp;</p>
		<p>&nbsp;&nbsp;</p>
		</td>
        <td width="26%">
        <table width="220"  border="1" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="220" ></td>
          </tr>
          <tr>
            <td ><div align="center">
              <table width="75%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="10"><div align="center"></div></td>
                    </tr>
                <tr>
                  <td><div align="center">
                    <h1 class="style1">User Login </h1>
                      </div></td>
                    </tr>
                <tr>
                  <td height="10"></td>
                    </tr>
                <tr>
                  <td><p>User Type</p></td>
                    </tr>
                <tr>
                  <td><select name="utype" id="utype">
                    <option value="">Select</option>
                    <option value="m">Manufacturer</option>
                    <option value="d">Distributor</option>
                    <option value="r">Retailer</option>
                    <option value="c">Customer</option>
                    </select>                  </td>
                    </tr>
                <tr>
                  <td height="10"></td>
                    </tr>
                <tr>
                  <td><p>User ID </p></td>
                    </tr>
                <tr>
                  <td><input name="uid" type="text" class="input" id="uid" /></td>
                    </tr>
                <tr>
                  <td height="12"></td>
                    </tr>
                <tr>
                  <td><p>Password</p></td>
                    </tr>
                <tr>
                  <td><input name="upass" type="password" class="input"></td>
                    </tr>
                <tr>
                  <td>&nbsp;</td>
                    </tr>
                <tr>
                  <td colspan="2"><div align="center">
                    <input name="signin" type="submit" id="signin" value="Sign In"  onClick="return validate()"  width="63" height="29" border="0">
                    </div></td>
                    </tr>
                <tr>
                  <td>&nbsp;</td>
                    </tr>
                <tr>
                  <td><p align="center">Did you forget your<br>
                    <a href="Forgot.jsp">Password</a></p>
                          <p>&nbsp;</p></td>
                    </tr>
                <tr>
                  <td><p align="center">New User Sign up Here
                    
                    <div align="center"><a href="Register.jsp">B2C</a></div>
                    </p></td>
                    </tr>
              </table>
            </div></td>
          </tr>
    <td></td>
  </tr>
        </table></td>
		
        <td width="35%"><p align="center"><img src="images/new logo1.JPG" width="175" height="175"></p></td>
      </tr>
    </table></td>
  </tr>
  <tr>
  <tr>
    <td >&nbsp;</td>
    <td colspan="" >&nbsp;</td>
    <td >&nbsp;</td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td width="4%" rowspan="0" >&nbsp;</td>
    <td width="4%" colspan="" >&nbsp;</td>
    <td width="57%" ><p align="right">&copy; B2C Network Solutions 2009. All Rights Reserved</p></td>
    <td width="35%" ><p align="right">
    
      <span class="style12">
      <jsp:getProperty name="clock" property="day"/>    
      &nbsp;
      <jsp:getProperty name="clock" property="date"/>
      &nbsp;
      <jsp:getProperty name="clock" property="time"/>
      </span></p></td>
  </tr>
</table>

</form>
</body>
</html>

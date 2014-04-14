<%@ page errorPage="login.jsp" %>

<jsp:useBean id='clock' scope='page' class='dates.JspCalendar' type="dates.JspCalendar" />

<%!
String usrname;
%>

<%
String hs=(String)session.getAttribute("valid");

if (hs!=null)
{
	if((hs.equals("D")))
	{
		usrname=(String)session.getAttribute("uname");
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Distributors Main</title>
<meta name="keywords" content="" />
<meta name="Small Window " content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style5 {
	color: #33FFCC;
	font-size: 24px;
}
.style15 {color: #00FFCC}
.style16 {color: #00FFFF}
.style17 {color: #FFFFFF}
.style24 {color: #000000; font-size: 14px; }
.style41 {color: red}
.style45 {color: #000000}
.style46 {
	font-size: 24px;
	color: #33CCFF;
}
.style51 {color: #FF0000; font-size: 18px; }
.style58 {color: #996600}
.style59 {color: #996600; font-size: 18px; }
-->
</style>
</head>
<body topmargin="0" rightmargin="0" leftmargin="12" bottommargin="0">
<!-- start header -->
<div id="header">
<div id="logo">
	<h1><span class="style58">B</span> <span class="style41">2</span> <span class="style58">c network solutions</span> </h1>
</div>
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
<div>
  
<table width="980" height="241" border="0" align="left" background="images/KINGW013.JPG" >
  <tr>
    <td width="18" height="237">&nbsp;</td>
    <td width="743" height="237" ><div align="center">
      <p align="left" class="entry style5">&nbsp;</p>
      <p align="center" class="entry style5">Quality Oriented Dealership  &nbsp;&nbsp;&nbsp;&nbsp;<img src="images/acc_handheld_accessories_70.gif" alt="Asseseries" /> &nbsp;<img src="images/acc_computer_accessories_70.gif" alt="asseseries" />&nbsp;<img src="images/acc_scanner_accessories_70.gif" alt="" width="70" height="70" /></p>
      </div></td>
    <td width="205"><img src="images/B2Coutlines_to5w2v.jpg" width="174" height="177" border="1"  /></td>
  </tr>
</table>
</div>
</div>
<!-- end header -->

<div id="wrapper">
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
	  <div class="post">
			<h2 class="title style16">Welcome to Our Website!</h2>
			<table width="459" border="0" cellpadding="0" cellspacing="0" background="" >
  
  <tr>
    <td colspan="2"><div align="justify">
      <p>&nbsp;</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;<span class="style45">B2C is a team of young professionals, who 
          have experience in Marketing, Consultency and Project Management, formed to provide consulting 
          and outsourcing and services.</span></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;<span class="style45">‘B2C’ is a coin word which is framed by 
          taking first 3 letters of Business to Consumers. It 
          follows the principle of ‘Wealth maximization’ of 
          its clients which is the basic principle of 
          Financial Management</span></p>
        </div></td>
    </tr>
  <tr>
    <td><div align="justify">
      <p>&nbsp;&nbsp;&nbsp;&nbsp;<span class="style45">Our marketing firm has registered partnership with leading product manufacturing companies like Dell, HP, Sony, ect</span></p>
      <p>&nbsp;</p>
    </div></td>
  </tr>
</table>
</div>
	  <div class="post">
			<h4 align="right" class="title style59">
			  <span class="style17">
			  <jsp:getProperty name="clock" property="day"/>              
			  &nbsp;
			  <jsp:getProperty name="clock" property="date"/>              
			  &nbsp;
			  <jsp:getProperty name="clock" property="time"/>
			  </span>			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
		    <table width="459" border="0" cellpadding="0" cellspacing="0" background="" >
              
              <tr>
                <td height="164" colspan="2"><div align="justify"><span class="style45">&nbsp;&nbsp;&nbsp;&nbsp;Testing the product, to help you get value from every last Ruppy you spend. it's still not enaough Over the past decade or so, we have seen technology enter every aspect of our lives, and the software products are more valueable today.</span></div></td>
              </tr>
              <tr>
                <td><div align="justify"><span class="style45">&nbsp;&nbsp;&nbsp;&nbsp;software product available in the market. we are here to sugest you and we provide the best tested products which are provided by the worlds best leading Manufacturers. our marketing firm has registered parnership with leading product manufacturing companies like Dell, HP, Sony, ect</span></div></td>
              </tr>
        </table>
	      
	  </div>
    </div>
	<!-- end content -->
	<!-- start sidebars -->
	<div id="sidebar1" class="sidebar">
		<ul>
			<li>
				<h2 class="style15"><font color="#00FFFF">Reports</font></h2>
				<ul>
					
					<li><a href="Dfolder/CReport.jsp">Customers Reports </a></li>
					<li><a href="Dfolder/RReport.jsp">Retailers Reports </a></li>
					<li><a href="Dfolder/DReport.jsp">Distributors Reports </a></li>
					<li><a href="Dfolder/MReport.jsp">Manufactureres Report </a></li>
					<li><a href="DFeedback.jsp">Feedback</a></li>
				</ul>
			</li>
	    </ul>
	</div>
	<div id="div2" class="sidebar">
      <ul>
        <li>
          <h2><font color="#00FFFF">Categories</font></h2>
          <ul>
		  	<li><a href="DProfile.jsp">Your Profile</a></li>
            <li><a href="Dfolder/Services.jsp">Services</a></li>
            <li><a href="Dfolder/Products.jsp">Products</a></li>
            <li><a href="DOrders.jsp">Orders</a></li>
          
           
            <li><a href="DComplaints.jsp">Compliants</a></li>
            
          </ul>
        </li>
      </ul>
    </div>
	<div class="addi" align="center">
	<p class="style46"> B2C Classifides</p>
	<p><marquee behavior="scroll" direction="right">&nbsp;<img src="classifides/149.jpg" alt="" width="200" height="200" />
	&nbsp;<img src="classifides/149(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/A3064847.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q2wk09_studio_new_dhs_bucket_236x200.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q3wk05_studio_dt_bucket_236x200.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q3wk13_fasttrack_freeship_236x200.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/desktoplanding_tile1_IQ500t_268x138_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_aio_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_everyday_computing_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_slim_sleek_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/HHO_20090421_Generic_NoJavaScript.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/laptop_right_mini311_275x240_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q4wk02_monstrcable_180x150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(2).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/solutions_desktop_812x300_20091101.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/ul.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/149.jpg" alt="" width="200" height="200" />
	&nbsp;<img src="classifides/149(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/A3064847.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q2wk09_studio_new_dhs_bucket_236x200.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q3wk05_studio_dt_bucket_236x200.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q3wk13_fasttrack_freeship_236x200.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/desktoplanding_tile1_IQ500t_268x138_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_aio_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_everyday_computing_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_slim_sleek_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/HHO_20090421_Generic_NoJavaScript.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/laptop_right_mini311_275x240_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q4wk02_monstrcable_180x150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(2).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/solutions_desktop_812x300_20091101.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/ul.jpg" alt="" width="200" height="200" />
	</marquee></p>
	
	<p><marquee behavior="scroll" direction="left">&nbsp;<img src="images/Fake.JPG" alt="" width="200" height="200" />&nbsp;<img src="images/Fake.JPG" alt="" width="200" height="200" />&nbsp;<img src="classifides/ul.jpg" alt="" width="200" height="200" />
	&nbsp;<img src="classifides/solutions_desktop_812x300_20091101.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(2).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/camera2.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/camera5.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/desktoplanding_tile1_IQ500t_268x138_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_aio_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_everyday_computing_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_slim_sleek_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/HHO_20090421_Generic_NoJavaScript.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/laptop_right_mini311_275x240_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q4wk02_monstrcable_180x150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(2).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/solutions_desktop_812x300_20091101.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/ul.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/149.jpg" alt="" width="200" height="200" />
	&nbsp;<img src="classifides/149(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/A3064847.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/camera1.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/camera2.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/camera5.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/desktoplanding_tile1_IQ500t_268x138_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_aio_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_everyday_computing_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/dt_slim_sleek_150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/HHO_20090421_Generic_NoJavaScript.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/laptop_right_mini311_275x240_110109.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/q4wk02_monstrcable_180x150.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(1).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/scp_nb(2).jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/solutions_desktop_812x300_20091101.jpg" alt="" width="200" height="200" />&nbsp;<img src="classifides/ul.jpg" alt="" width="200" height="200" />
	</marquee></p>
	</div>
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
</div>

<div id="footer"><table width="980" height="93" border="0">
  <tr>
    <td>&nbsp;<p>&copy;2009 All Rights Reserved. &nbsp;&nbsp; Design by:   B2c   network solutions </p></td>
  </tr>
</table>
</div>
</body>
</html>

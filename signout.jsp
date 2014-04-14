<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("valid");

RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
request.setAttribute("comment","Signed out Successfully");
rd.forward(request,response);

%>

package com.b2c.getcon;

import java.sql.*;
public class Getcon
{
  public static Connection getMySqlConnection()
  {
    Connection con=null;
   
    try{
    	
    
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","root");
	System.out.println ("Database connection established");
	}catch(Exception e)
  	  {
		System.out.println(e);
  	  }
	return con;
   }
  
  
   public static void cleanup(Statement st,Connection con)
   {
     try{
	  if(st!=null)
	  {
		st.close();
	  }
	  if(con!=null)
	  {
		con.close();
	  }
	}catch(Exception e1)
	 {
		System.out.println(e1);
	 }
   }
}

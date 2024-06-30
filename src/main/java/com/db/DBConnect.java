package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	
	public static Connection getConn() 
	{
		if(conn==null)
		{
			 try {
		            Class.forName("com.mysql.jdbc.Driver");
		            System.out.println("Driver Loaded Successfully");
		            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Job_Portal", "root", "root");
		            System.out.println("Connection established successfully.");
		        } catch (Exception e) {
		            System.out.println("Error during database connection: " + e);
		        }

		}
		return conn;
	}
		
	

}

package com.user;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect {

		private static String url ="jdbc:mysql://localhost:3306/final_project_db?useSSL=false";
		private static String userName = "root";
		private static String password = "IT2107#anu";
		private static Connection con;
		
		public static Connection getConnection() {
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url,userName,password);
				
				
			}catch(Exception e) {
				System.out.println("Database connection unsuccessful!");
			}
			
			return con;
			
		} 
	
}

package com.user;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<User> validate(String userName, String password){
		
		ArrayList<User> us = new ArrayList<>(); 
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where user_name='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(6);
				String lastName = rs.getString(7);
				String email = rs.getString(2);
				String mobile = rs.getString(8);
				String gender = rs.getString(9);
				Date dateOfBirth = rs.getDate(10);
				String userU = rs.getString(5);
				String passU = rs.getString(3);
				
				User u = new User(id,firstName,lastName,email,mobile,gender,dateOfBirth,userU,passU);
				us.add(u);
				
				
				
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return us;
		
	}
	
	
	//Update User
	public static boolean updateuser(String id, String firstName,
			String lastName, String email,String mobile,String gender,String dateOfBirth,String userName,String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update user set first_name='"+firstName+"',last_name ='"+lastName+"',email='"+email+"',phone='"+mobile+"',gender='"+gender+"',date_of_birth='"+dateOfBirth+"', user_name='"+userName+"',password='"+password+"' where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
				
			}else {
				
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//Update Admin
	public static boolean updateadmin(String id, String firstName,
			String lastName, String email,String mobile,String gender,String dateOfBirth,String userName,String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update user set first_name='"+firstName+"',last_name ='"+lastName+"',email='"+email+"',phone='"+mobile+"',gender='"+gender+"',date_of_birth='"+dateOfBirth+"', user_name='"+userName+"',password='"+password+"' where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
				
			}else {
				
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static List<User> getUserDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				 int id = rs.getInt(1);
				 String fName = rs.getString(6);
				 String lName = rs.getString(7);
				 String email = rs.getString(2);
				 String mobile = rs.getString(8);
				 String gender = rs.getString(9);
				 Date dob = rs.getDate(10);
				 String userName = rs.getString(5);
				 String password = rs.getString(3);
				 
				 User u1 = new User(id,fName,lName,email,mobile,gender,dob,userName,password);
				 user.add(u1); 
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
	}
	
	
	
	public static boolean deleteUser(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from user where id='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;	
			}else {
				isSuccess = false;
			}
				
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
}

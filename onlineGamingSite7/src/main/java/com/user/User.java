package com.user;

import java.util.Date;

public class User {
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String mobile;
	private String gender;
	private Date dateOfBirth;
	private String userName;
	private String password;
	
	public User(int id, String firstName, String lastName, String email, String mobile, String gender,
			Date dateOfBirth, String userName, String password) {
		
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.mobile = mobile;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.userName = userName;
		this.password = password;
	}

	public User() {
	
	}

	public int getId() {
		return id;
	}

	

	public String getFirstName() {
		return firstName;
	}



	public String getLastName() {
		return lastName;
	}

	
	public String getEmail() {
		return email;
	}

	

	public String getMobile() {
		return mobile;
	}


	public String getGender() {
		return gender;
	}


	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	

	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	
	
	
	
	
}

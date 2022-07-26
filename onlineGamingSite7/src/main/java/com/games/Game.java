package com.games;

public class Game {
	
	private int gId;
	private int devId;
	private String gName;
	private double price;
	private String gDetails;
	
	
	public Game() {
		
	}
	
	


	public Game(int gId, String gName) {
		super();
		this.gId = gId;
		this.gName = gName;
	}




	public Game(int gId,int devId, String gName, double price, String gDetails) {
		
		this.gId = gId;
		this.devId = devId;
		this.gName = gName;
		this.price = price;
		this.gDetails = gDetails;
	}

		
	public void setgId(int gId) {
		this.gId = gId;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}


	public void setgDetails(String gDetails) {
		this.gDetails = gDetails;
	}

	public int getgId() {
		return gId;
	}

	public String getgName() {
		return gName;
	}


	public String getgDetails() {
		return gDetails;
	}
	
	public int getDevId() {
		return devId;
	}


	public void setDevId(int devId) {
		this.devId = devId;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	
}

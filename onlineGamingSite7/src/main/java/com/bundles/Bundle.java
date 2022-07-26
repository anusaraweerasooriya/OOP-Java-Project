package com.bundles;

public class Bundle {
	
	private int bId;
	private int creatorId;
	String bName;
	String bDetails;
	double price;
	private int game1;
	private int game2;
	private int game3;
	private int game4;
	String bImg;
	
	public Bundle() {
		super();
	}

	public Bundle(int bId, int creatorId, String bName, String bDetails, double price, int game1, int game2, int game3,
			int game4, String bImg) {
		super();
		this.bId = bId;
		this.creatorId = creatorId;
		this.bName = bName;
		this.bDetails = bDetails;
		this.price = price;
		this.game1 = game1;
		this.game2 = game2;
		this.game3 = game3;
		this.game4 = game4;
		this.bImg = bImg;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public int getCreatorId() {
		return creatorId;
	}

	public void setCreatorId(int creatorId) {
		this.creatorId = creatorId;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbDetails() {
		return bDetails;
	}

	public void setbDetails(String bDetails) {
		this.bDetails = bDetails;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getGame1() {
		return game1;
	}

	public void setGame1(int game1) {
		this.game1 = game1;
	}

	public int getGame2() {
		return game2;
	}

	public void setGame2(int game2) {
		this.game2 = game2;
	}

	public int getGame3() {
		return game3;
	}

	public void setGame3(int game3) {
		this.game3 = game3;
	}

	public int getGame4() {
		return game4;
	}

	public void setGame4(int game4) {
		this.game4 = game4;
	}

	public String getbImg() {
		return bImg;
	}

	public void setbImg(String bImg) {
		this.bImg = bImg;
	}
	
	
	
}

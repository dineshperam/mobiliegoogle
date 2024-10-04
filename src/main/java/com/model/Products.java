package com.model;

public class Products {
	private int id;
	private String prodtype;
	private String location;
	private String mdate;
	private String prodname;
	private String prodprice;
	
	public Products() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProdtype() {
		return prodtype;
	}

	public void setProdtype(String prodtype) {
		this.prodtype = prodtype;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	public String getProdprice() {
		return prodprice;
	}

	public void setProdprice(String prodprice) {
		this.prodprice = prodprice;
	}

	
}

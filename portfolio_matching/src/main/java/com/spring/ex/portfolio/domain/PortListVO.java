package com.spring.ex.portfolio.domain;

import java.sql.Date;

public class PortListVO {

	private int portfolio_id;
	private String portfolio_userId;
	private String portfolio_title;
	private String portfolio_bCat;
	private String portfolio_sCat;
	private String portfolio_thumbUrl;
	private String portfolio_Img;
	private String portfolio_content;
	private int portfolio_price;
	private String portfolio_term;
	private double portfolio_rating;
	private Date portfolio_regData;
	
	public int getPortfolio_id() {
		return portfolio_id;
	}
	public void setPortfolio_id(int portfolio_id) {
		this.portfolio_id = portfolio_id;
	}
	public String getPortfolio_userId() {
		return portfolio_userId;
	}
	public void setPortfolio_userId(String portfolio_userId) {
		this.portfolio_userId = portfolio_userId;
	}
	public String getPortfolio_title() {
		return portfolio_title;
	}
	public void setPortfolio_title(String portfolio_title) {
		this.portfolio_title = portfolio_title;
	}
	public String getPortfolio_bCat() {
		return portfolio_bCat;
	}
	public void setPortfolio_bCat(String portfolio_bCat) {
		this.portfolio_bCat = portfolio_bCat;
	}
	public String getPortfolio_sCat() {
		return portfolio_sCat;
	}
	public void setPortfolio_sCat(String portfolio_sCat) {
		this.portfolio_sCat = portfolio_sCat;
	}
	public String getPortfolio_thumbUrl() {
		return portfolio_thumbUrl;
	}
	public void setPortfolio_thumbUrl(String portfolio_thumbUrl) {
		this.portfolio_thumbUrl = portfolio_thumbUrl;
	}
	public String getPortfolio_Img() {
		return portfolio_Img;
	}
	public void setPortfolio_Img(String portfolio_Img) {
		this.portfolio_Img = portfolio_Img;
	}
	public String getPortfolio_content() {
		return portfolio_content;
	}
	public void setPortfolio_content(String portfolio_content) {
		this.portfolio_content = portfolio_content;
	}
	public int getPortfolio_price() {
		return portfolio_price;
	}
	public void setPortfolio_price(int portfolio_price) {
		this.portfolio_price = portfolio_price;
	}
	public String getPortfolio_term() {
		return portfolio_term;
	}
	public void setPortfolio_term(String portfolio_term) {
		this.portfolio_term = portfolio_term;
	}
	public double getPortfolio_rating() {
		return portfolio_rating;
	}
	public void setPortfolio_rating(double portfolio_rating) {
		this.portfolio_rating = portfolio_rating;
	}
	public Date getPortfolio_regData() {
		return portfolio_regData;
	}
	public void setPortfolio_regData(Date portfolio_regData) {
		this.portfolio_regData = portfolio_regData;
	}

}

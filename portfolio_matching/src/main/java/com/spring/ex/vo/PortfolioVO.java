package com.spring.ex.vo;

import java.util.Date;


public class PortfolioVO {
	private int portfolio_id;
	private String portfolio_userId;
	private String portfolio_title;
	private String portfolio_bCat;
	private String portfolio_sCat;
	private String portfolio_thumbUrl;
	private String portfolio_content;
	private int portfolio_price;
	private String portfolio_term;
	private int portfolio_rating;
	private Date portfolio_regDate;

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

	public int getPortfolio_rating() {
		return portfolio_rating;
	}

	public void setPortfolio_rating(int portfolio_rating) {
		this.portfolio_rating = portfolio_rating;
	}

	public Date getPortfolio_regDate() {
		return portfolio_regDate;
	}

	public void setPortfolio_regDate(Date portfolio_regDate) {
		this.portfolio_regDate = portfolio_regDate;
	}
}
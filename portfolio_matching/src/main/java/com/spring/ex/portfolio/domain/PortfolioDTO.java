package com.spring.ex.portfolio.domain;

import java.sql.Timestamp;

public class PortfolioDTO {

	private int portfolio_id;
	private String portfolio_userId;
	private String portfolio_title;
	private CategoryMainVO portfolio_category_main;
	private CategorySubVO portfolio_category_sub;
	private String portfolio_thumbUrl;
	private String portfolio_content;
	private int portfolio_price;
	private String portfolio_term;
	private double portfolio_rating;
	private Timestamp portfolio_regDate;
	private String portfolio_Img;

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

	public CategoryMainVO getPortfolio_category_main() {
		return portfolio_category_main;
	}

	public void setPortfolio_category_main(CategoryMainVO portfolio_category_main) {
		this.portfolio_category_main = portfolio_category_main;
	}

	public CategorySubVO getPortfolio_category_sub() {
		return portfolio_category_sub;
	}

	public void setPortfolio_category_sub(CategorySubVO portfolio_category_sub) {
		this.portfolio_category_sub = portfolio_category_sub;
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

	public double getPortfolio_rating() {
		return portfolio_rating;
	}

	public void setPortfolio_rating(double portfolio_rating) {
		this.portfolio_rating = portfolio_rating;
	}

	public Timestamp getPortfolio_regDate() {
		return portfolio_regDate;
	}

	public void setPortfolio_regDate(Timestamp portfolio_regDate) {
		this.portfolio_regDate = portfolio_regDate;
	}

	public String getPortfolio_Img() {
		return portfolio_Img;
	}

	public void setPortfolio_Img(String portfolio_Img) {
		this.portfolio_Img = portfolio_Img;
	}

	@Override
	public String toString() {
		return "PortfolioDTO [portfolio_id=" + portfolio_id + ", portfolio_userId=" + portfolio_userId + ", portfolio_title=" + portfolio_title + ", portfolio_category_main=" + portfolio_category_main + ", portfolio_category_sub=" + portfolio_category_sub + ", portfolio_thumbUrl=" + portfolio_thumbUrl + ", portfolio_content=" + portfolio_content + ", portfolio_price=" + portfolio_price
				+ ", portfolio_term=" + portfolio_term + ", portfolio_rating=" + portfolio_rating + ", portfolio_regDate=" + portfolio_regDate + ", portfolio_Img=" + portfolio_Img + "]";
	}

}

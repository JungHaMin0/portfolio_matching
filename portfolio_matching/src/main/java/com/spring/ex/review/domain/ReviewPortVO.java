package com.spring.ex.review.domain;

import java.sql.Timestamp;
import java.util.Date;

public class ReviewPortVO {
	private int review_id;
	private int review_portfolio_id;
	private double review_rating;
	private String review_userId;
	private String review_title;
	private String review_content;
	private Timestamp review_regDate;
	
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
	private Date portfolio_regDate;
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getReview_portfolio_id() {
		return review_portfolio_id;
	}
	public void setReview_portfolio_id(int review_portfolio_id) {
		this.review_portfolio_id = review_portfolio_id;
	}
	public double getReview_rating() {
		return review_rating;
	}
	public void setReview_rating(double review_rating) {
		this.review_rating = review_rating;
	}
	public String getReview_userId() {
		return review_userId;
	}
	public void setReview_userId(String review_userId) {
		this.review_userId = review_userId;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Timestamp getReview_regDate() {
		return review_regDate;
	}
	public void setReview_regDate(Timestamp review_regDate) {
		this.review_regDate = review_regDate;
	}
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
	public Date getPortfolio_regDate() {
		return portfolio_regDate;
	}
	public void setPortfolio_regDate(Date portfolio_regDate) {
		this.portfolio_regDate = portfolio_regDate;
	}
	@Override
	public String toString() {
		return "ReviewPortVO [review_id=" + review_id + ", review_portfolio_id=" + review_portfolio_id
				+ ", review_rating=" + review_rating + ", review_userId=" + review_userId + ", review_title="
				+ review_title + ", review_content=" + review_content + ", review_regDate=" + review_regDate
				+ ", portfolio_id=" + portfolio_id + ", portfolio_userId=" + portfolio_userId + ", portfolio_title="
				+ portfolio_title + ", portfolio_bCat=" + portfolio_bCat + ", portfolio_sCat=" + portfolio_sCat
				+ ", portfolio_thumbUrl=" + portfolio_thumbUrl + ", portfolio_Img=" + portfolio_Img
				+ ", portfolio_content=" + portfolio_content + ", portfolio_price=" + portfolio_price
				+ ", portfolio_term=" + portfolio_term + ", portfolio_rating=" + portfolio_rating
				+ ", portfolio_regDate=" + portfolio_regDate + "]";
	}
	
	
	

}

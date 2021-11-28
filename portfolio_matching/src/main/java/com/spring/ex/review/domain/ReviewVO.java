package com.spring.ex.review.domain;

import java.sql.Timestamp;
import java.util.Date;

public class ReviewVO {
	private int review_id;
	private int review_portfolio_id;
	private double review_rating;
	private String review_userId;
	private String review_title;
	private String review_content;
	private Timestamp review_regDate;

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
	public void setReview_rating(int review_rating) {
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
	@Override
	public String toString() {
		return "ReviewVO [review_id=" + review_id + ", review_portfolio_id=" + review_portfolio_id + ", review_rating="
				+ review_rating + ", review_userId=" + review_userId + ", review_title=" + review_title
				+ ", review_content=" + review_content + ", review_regDate=" + review_regDate + "]";
	}
}

package com.spring.ex.inquiry.domain;

import java.util.Date;

public class InquiryDTO {
	private int inq_id;
	private int inq_deal_id;
	private int inq_portfolio_id;
	private String inq_purUser;
	private String inq_title;
	private String inq_content;
	private Date inq_regDate;
	private int inq_ans;

	public int getInq_id() {
		return inq_id;
	}

	public void setInq_id(int inq_id) {
		this.inq_id = inq_id;
	}

	public int getInq_deal_id() {
		return inq_deal_id;
	}

	public int getInq_portfolio_id() {
		return inq_portfolio_id;
	}

	public void setInq_portfolio_id(int inq_portfolio_id) {
		this.inq_portfolio_id = inq_portfolio_id;
	}

	public void setInq_deal_id(int inq_deal_id) {
		this.inq_deal_id = inq_deal_id;
	}

	public String getInq_purUser() {
		return inq_purUser;
	}

	public void setInq_purUser(String inq_purUser) {
		this.inq_purUser = inq_purUser;
	}

	public String getInq_title() {
		return inq_title;
	}

	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}

	public String getInq_content() {
		return inq_content;
	}

	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}

	public Date getInq_regDate() {
		return inq_regDate;
	}

	public void setInq_regDate(Date inq_regDate) {
		this.inq_regDate = inq_regDate;
	}

	public int getInq_ans() {
		return inq_ans;
	}

	public void setInq_ans(int inq_ans) {
		this.inq_ans = inq_ans;
	}

}
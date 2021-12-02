package com.spring.ex.inquiry.domain;

import java.util.Date;

public class AnswerVO {
	private int ans_id;
	private int ans_deal_id;
	private int ans_inq_id;
	private String ans_saleUser;
	private String ans_content;
	private Date ans_regDate;
	private int acnt;

	public int getAcnt() {
		return acnt;
	}

	public void setAcnt(int acnt) {
		this.acnt = acnt;
	}

	public int getAns_id() {
		return ans_id;
	}

	public void setAns_id(int ans_id) {
		this.ans_id = ans_id;
	}

	public int getAns_deal_id() {
		return ans_deal_id;
	}

	public void setAns_deal_id(int ans_deal_id) {
		this.ans_deal_id = ans_deal_id;
	}

	public int getAns_inq_id() {
		return ans_inq_id;
	}

	public void setAns_inq_id(int ans_inq_id) {
		this.ans_inq_id = ans_inq_id;
	}

	public String getAns_saleUser() {
		return ans_saleUser;
	}

	public void setAns_saleUser(String ans_saleUser) {
		this.ans_saleUser = ans_saleUser;
	}

	public String getAns_content() {
		return ans_content;
	}

	public void setAns_content(String ans_content) {
		this.ans_content = ans_content;
	}

	public Date getAns_regDate() {
		return ans_regDate;
	}

	public void setAns_regDate(Date ans_regDate) {
		this.ans_regDate = ans_regDate;
	}

}

package com.spring.ex.deal.domain;

import java.util.Date;

public class DealVO {
	private int deal_id;
	private int deal_portfolio_id;
	private String deal_purUser;
	private String deal_saleUser;
	private int deal_price;
	private String deal_status;
	private Date deal_date;
	private int dcnt;
	private int dealsum;

	public int getDealsum() {
		return dealsum;
	}

	public void setDealsum(int dealsum) {
		this.dealsum = dealsum;
	}

	public int getDcnt() {
		return dcnt;
	}

	public void setDcnt(int dcnt) {
		this.dcnt = dcnt;
	}

	public int getDeal_id() {
		return deal_id;
	}

	public void setDeal_id(int deal_id) {
		this.deal_id = deal_id;
	}

	public int getDeal_portfolio_id() {
		return deal_portfolio_id;
	}

	public void setDeal_portfolio_id(int deal_portfolio_id) {
		this.deal_portfolio_id = deal_portfolio_id;
	}

	public String getDeal_purUser() {
		return deal_purUser;
	}

	public void setDeal_purUser(String deal_purUser) {
		this.deal_purUser = deal_purUser;
	}

	public String getDeal_saleUser() {
		return deal_saleUser;
	}

	public void setDeal_saleUser(String deal_saleUser) {
		this.deal_saleUser = deal_saleUser;
	}

	public int getDeal_price() {
		return deal_price;
	}

	public void setDeal_price(int deal_price) {
		this.deal_price = deal_price;
	}

	public String getDeal_status() {
		return deal_status;
	}

	public void setDeal_status(String deal_status) {
		this.deal_status = deal_status;
	}

	public Date getDeal_date() {
		return deal_date;
	}

	public void setDeal_date(Date deal_date) {
		this.deal_date = deal_date;
	}

}
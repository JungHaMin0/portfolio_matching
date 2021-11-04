package com.spring.ex.deal.domain;

public class OrderVO {
	int deal_portfolio_id;
	String deal_purUser;
	String deal_saleUser;
	int deal_price;
	String result;

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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
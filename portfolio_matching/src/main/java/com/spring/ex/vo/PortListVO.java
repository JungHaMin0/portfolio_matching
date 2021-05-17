package com.spring.ex.vo;

import java.sql.Blob;

public class PortListVO {
	private int portlist_id;
	private String portlist_title;
	private String portlist_content;
	private String portlist_category;
	private String portlist_day;
	private String portlist_url;
	private double portlist_rating;
	

	public double getPortlist_rating() {
		return portlist_rating;
	}
	public void setPortlist_rating(double portlist_rating) {
		this.portlist_rating = portlist_rating;
	}
	public int getPortlist_id() {
		return portlist_id;
	}
	public void setPortlist_id(int portlist_id) {
		this.portlist_id = portlist_id;
	}
	public String getPortlist_title() {
		return portlist_title;
	}
	public void setPortlist_title(String portlist_title) {
		this.portlist_title = portlist_title;
	}
	public String getPortlist_content() {
		return portlist_content;
	}
	public void setPortlist_content(String portlist_content) {
		this.portlist_content = portlist_content;
	}
	public String getPortlist_category() {
		return portlist_category;
	}
	public void setPortlist_category(String portlist_category) {
		this.portlist_category = portlist_category;
	}
	public String getPortlist_day() {
		return portlist_day;
	}
	public void setPortlist_day(String portlist_day) {
		this.portlist_day = portlist_day;
	}
	public String getPortlist_url() {
		return portlist_url;
	}
	public void setPortlist_url(String portlist_url) {
		this.portlist_url = portlist_url;
	}
	
}

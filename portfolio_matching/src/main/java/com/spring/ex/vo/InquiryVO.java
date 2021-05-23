package com.spring.ex.vo;

import java.util.Date;

public class InquiryVO {
	private int inq_num;
	private int port_num;
	private String user_id;
	private String inq_content;
	private Date inq_regDate;

	public int getInq_num() {
		return inq_num;
	}

	public void setInq_num(int inq_num) {
		this.inq_num = inq_num;
	}

	public int getPort_num() {
		return port_num;
	}

	public void setPort_num(int port_num) {
		this.port_num = port_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
}
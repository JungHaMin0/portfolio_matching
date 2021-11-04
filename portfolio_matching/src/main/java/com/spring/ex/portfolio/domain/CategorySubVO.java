package com.spring.ex.portfolio.domain;

public class CategorySubVO {

	private int id;
	private int main_id;
	private String name;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMain_id() {
		return main_id;
	}
	public void setMain_id(int main_id) {
		this.main_id = main_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "SubCategoryVO [id=" + id + ", main_id=" + main_id + ", name=" + name + "]";
	}
	
}

package com.spring.ex.vo;

public class Criteria {
	private Integer page;
    private Integer perPageNum;
     
    // - 생성자
    // page와 perPageNum을 default로 각각 1, 10으로 정해준다
    public Criteria() {
     
        this.page = 1;
        this.perPageNum = 9;
    }
 
    public Integer getPage() {
        return page;
    }
 
    public void setPage(Integer page) {
        // page를 1보다 작은 수로 입력되면 1로 고정
        this.page = (page < 1) ? 1 :  page; 
    }
 
    public Integer getPerPageNum() {
        return perPageNum;
    }
 
    public void setPerPageNum(Integer perPageNum) {
        // perPageNum을 10 미만 또는 100이상일 경우 10으로 고정
        this.perPageNum = (perPageNum <9 || perPageNum >=100) ? 9 : perPageNum;
    }
     
    //MyBatis
    public int getPageStart(){
 
        return (this.page-1) * 9 ;
    }
}


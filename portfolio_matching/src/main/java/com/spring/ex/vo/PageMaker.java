package com.spring.ex.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	  private Criteria cri; // page, perPageNum
	     
	    private Integer totalCount; // 총 게시물 수
	     
	    private Integer startPage;  // 시작 페이지
	    private Integer endPage;    // 끝 페이지
	    private boolean prev;       // 이 전
	    private boolean next;       // 이 후
	     
	    private Integer displayPageNum = 10; // 페이지네이션 보여줄 갯 수 15개로 고정
	     
	    // 리스트 페이지에서 단일 게시글 클릭하면 페이징,
	    // 검색 정보를 가지고 URI문자열을 만들어서 조회페이지로 이동한다
	    // 그러면 조회페이지에서 페이징, 검색정보를 유지하고 있기 때문에 다시 리스트 페이지로 이동할 때 원래 page와 검색 조건의 리스트
	    public String makeSearch(Integer page){
	             
	        UriComponents uriComponents = UriComponentsBuilder.newInstance()
	            .queryParam("page", page)
	            .queryParam("perPageNum", cri.getPerPageNum())
	            .queryParam("searchType", ((SearchCriteria)cri).getSearchType())
	            .queryParam("keyword", ((SearchCriteria)cri).getKeyword())
	            .build();           
	        return uriComponents.toUriString();
	    }// makeSearch()
	     
	    // 리스트페이지에서 단일 게시글 클릭하면 해당 page정보를 가지고
	    // page, perPageNum 파라미터를 포함한 URI 문자열을 만들어서 조회페이지로 이동한다 
	    // 그러면 조회페이지에서 page, perPageNum, bno 값을 유지하고 있기 때문에 다시 리스트 페이지로 이동할때 원래 page로 이동
	    public String makeQuery(Integer page){
	             
	        UriComponents uriComponents = 
	            UriComponentsBuilder.newInstance()
	            .queryParam("page", page)
	            .queryParam("perPageNum", cri.getPerPageNum())
	            .build();
	             
	        return uriComponents.toUriString();
	    }// makeQuery() 
	 
	    public Integer getTotalCount() {
	        return totalCount;
	    }
	 
	    // 총 게시물 수를 setting해주면 바로 다른 멤버변수들을 계산할 수 있기 때문에 이 메소드 안에서 calcData()를 호출한다.
	    public void setTotalCount(Integer totalCount) {
	        this.totalCount = totalCount;
	         
	        // 여기서 다른 계산 다 해주면 될듯
	        calcData();
	    }
	 
	    private void calcData(){        
	        // 끝 페이지
	        endPage = (int)Math.ceil((double)cri.getPage()/displayPageNum) * displayPageNum;
	        // 시작 페이지
	        startPage = (endPage - displayPageNum) + 1;     
	        int tempEndPage = (int)Math.ceil((double)totalCount/displayPageNum);        
	        // 끝 페이지 검증
	        if( endPage > tempEndPage ){
	            endPage = tempEndPage;
	        }// if()        
	        // 이전
	        prev = (startPage == 1 ? false : true);
	        // 이후
	        next = (tempEndPage > endPage ? true : false);       
	    }// calcData()
	        /*getters & setters*/

		public Criteria getCri() {
			return cri;
		}

		public void setCri(Criteria cri) {
			this.cri = cri;
		}

		public Integer getStartPage() {
			return startPage;
		}

		public void setStartPage(Integer startPage) {
			this.startPage = startPage;
		}

		public Integer getEndPage() {
			return endPage;
		}

		public void setEndPage(Integer endPage) {
			this.endPage = endPage;
		}

		public boolean isPrev() {
			return prev;
		}

		public void setPrev(boolean prev) {
			this.prev = prev;
		}

		public boolean isNext() {
			return next;
		}

		public void setNext(boolean next) {
			this.next = next;
		}

		public Integer getDisplayPageNum() {
			return displayPageNum;
		}

		public void setDisplayPageNum(Integer displayPageNum) {
			this.displayPageNum = displayPageNum;
		}
	    
	    
	}



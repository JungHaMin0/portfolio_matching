package com.spring.ex.portfolio.domain;

public class PortListPagingVO {

	 /** �� �������� �Խñ� �� **/
    private int pageSize = 10;
    
    /** �� ��(range)�� ������ �� **/
    private int rangeSize = 10;
    
    /** ���� ������ **/
    private int curPage = 1;
    
    /** ���� ��(range) **/
    private int curRange = 1;
    
    /** �� �Խñ� �� **/
    private int listCnt;
    
    /** �� ������ �� **/
    private int pageCnt;
    
    /** �� ��(range) �� **/
    private int rangeCnt;
    
    /** ���� ������ **/
    private int startPage = 1;
    
    /** �� ������ **/
    private int endPage = 1;
    
    /** ���� index **/
    private int startIndex = 0;
    
    /** ���� ������ **/
    private int prevPage;
    
    /** ���� ������ **/
    private int nextPage;
 
	
}

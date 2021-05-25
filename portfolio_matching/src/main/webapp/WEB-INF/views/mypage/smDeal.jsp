<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>

</head>

<body class="body-wrapper">

  <!--==================================
=            User Profile            =
===================================-->
  <div class="col-md-12">
    <div class="widget dashboard-container">
      <h3 class="text-center">거래 관리</h3>
      <table class="table product-dashboard-table">
        <thead>
          <tr>
            <th>이미지</th>
            <th>구매 정보</th>
            <th class="text-center">현재 상태</th>
            <th class="text-center">진행 상태 변경</th>
          </tr>
        </thead>
        <tbody>
        
          <c:forEach items="${smDealList}" var="smDealList">
            <tr>
              <td class="product-thumb"><img width="80px" height="auto" src="${smDealList.portfolio_thumbUrl}"></td>
              <td class="product-details">
                <h3 class="title">${smDealList.portfolio_title}</h3> <span><strong>가격</strong>${smDealList.deal_price}</span><span><strong>구매일</strong>${smDealList.deal_date}</span><span><strong>구매자</strong>${smDealList.deal_purUser}</span>
              </td>
              <td class="product-category"><span><strong>${smDealList.deal_status}</strong></span></td>
              <td class="action" data-title="Action">
                <div>
                  <ul class="list-inline justify-content-center">
                    <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="작업 중" class="view" href="smDealWorking.do?deal_id=${smDealList.deal_id}&portfolio_id=${smDealList.portfolio_id}"> <i class="fa fa-hourglass-half"></i>
                    </a></li>
                    <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="작업 완료" class="edit" href="smDealComplete.do?deal_id=${smDealList.deal_id}&portfolio_id=${smDealList.portfolio_id}"><i class="fa fa-hourglass-end"></i></a></li>
                    <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="환불/취소" class="delete" href=""><i class="fa fa-undo"></i></a></li>
                  </ul>
                </div>
              </td>
            </tr>
          </c:forEach>
          
        </tbody>
      </table>
    </div>
  </div>
  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
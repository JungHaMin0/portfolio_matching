<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">
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
              <td class="product-thumb"><img width="80px" height="auto" src="data:image/jpeg;base64,<c:out value='${smDealList.portfolio_Img }'/>" /></td>
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
                    <li></li>
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
  <script type="text/javascript">
  	$(".view").on('click', function() {
  		if(confirm('현재 상태를 작업 중으로 변경하시겠습니까?') == true) {
  			alert('변경되었습니다.');
  			return;
  		} else {
  			return false;
  		}
  	});
  	
  	$(".edit").on('click', function() {
  		if(confirm('현재 상태를 작업 완료로 변경하시겠습니까?') == true) {
  			alert('변경되었습니다.');
  			return;
  		} else {
  			return false;
  		}
  	});
  	
  	$(".delete").on('click', function() {
  		if(confirm('환불/취소 요청을 처리하시겠습니까?') == true) {
  			alert('환불/취소되었습니다.');
  			return;
  		} else {
  			return false;
  		}
  	});
  </script>
</body>

</html>
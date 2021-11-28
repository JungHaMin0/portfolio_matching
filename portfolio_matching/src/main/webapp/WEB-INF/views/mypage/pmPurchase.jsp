<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">
  <%@ include file="../../include/header.jsp"%>

  <section class="dashboard section">
    <div class="container">
      <div class="row">
        <%@ include file="nav.jsp"%>

        <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
          <div class="widget dashboard-container my-adslist">
            <h3>구매 내역</h3> <br />
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>구매 정보</th>
                  <th class="text-center">상태</th>
                  <th class="text-center"></th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${pmPurchaseList}" var="pmPurList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="data:image/jpeg;base64,<c:out value='${pmPurList.portfolio_Img }'/>"/></td>
                    <td class="product-details">
                      <h3 class="title">${pmPurList.portfolio_title}</h3> <span><strong>가격</strong>${pmPurList.portfolio_price} 원</span><span><strong>구매일</strong>${pmPurList.deal_date}</span><span><strong>판매자</strong>${pmPurList.deal_saleUser}</span>
                    </td>
                    <td class="product-category"><span><strong>${pmPurList.deal_status}</strong></span></td>
                    <td class="action" data-title="Action">
                      <div>
                        <ul class="list-inline justify-content-center">
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="문의 하기" class="view" href="" onclick="pmInquiryWrite('${pmPurList.deal_id}', '${pmPurList.portfolio_title}');"> <i class="fa fa-commenting-o"></i></a></li>
                          <c:choose>
                            <c:when test="${pmPurList.deal_status eq '구매 확정'}">
                              <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="후기 작성" class="edit" href="" onclick="pmReviewWrite('${pmPurList.portfolio_id}');"><i class="fa fa-thumbs-o-up"></i></a></li>
                            </c:when>
                            <c:otherwise>
                              <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="구매 확정" class="edit" href="pmPurchaseConfirm.do?deal_id=${pmPurList.deal_id}" onclick="pur_confirm();"> <i class="fa fa-check"></i></a></li>
                            </c:otherwise>
                          </c:choose>
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="첨부 파일" class="view" href="" onclick="pmFile('${pmPurList.portfolio_id}');"> <i class="fa fa-file-o"></i></a></li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
          
          <div class="pagination justify-content-center">
            <nav aria-label="Page navigation example">
              <ul class="pagination">

                <c:if test="${pageMaker.prev}">
                  <li class="page-item"><a class="page-link" href="pmPurchase.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                  </a></li>
                </c:if>

                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                  <c:if test="${pageMaker.cri.page eq idx}">
                    <li class="page-item active"><a class="page-link" href="pmPurchase.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                  <c:if test="${pageMaker.cri.page ne idx}">
                    <li class="page-item"><a class="page-link" href="pmPurchase.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                </c:forEach>

                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                  <li class="page-item"><a class="page-link" href="pmPurchase.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
                  </a></li>
                </c:if>

              </ul>
            </nav>
          </div>
          
        </div>
      </div>
    </div>
  </section>

  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
  <script type="text/javascript">
  function pmInquiryWrite(deal_id, portfolio_title) {
		var popupWidth = 1000;
		var popupHeight = 705;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY = (window.screen.height / 2) - (popupHeight / 2);
		
		url = "pmInquiryWrite.do?deal_id=" + deal_id + "&portfolio_title=" + portfolio_title;
		specs = "width=" + popupWidth + ", height= " + popupHeight + ", top=" + popupY + ", left=" + popupX;
		window.open(url, name, specs);
		
		return false;
	}
	
	function pmReviewWrite(portfolio_id) {
		var popupWidth = 1000;
		var popupHeight = 585;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY = (window.screen.height / 2) - (popupHeight / 2);
		
		url = "pmReview.do?portfolio_id=" + portfolio_id;
		specs = "width=" + popupWidth + ", height= " + popupHeight + ", top=" + popupY + ", left=" + popupX;
		window.open(url, name, specs);
		
		return false;
	}
	function pmFile(portfolio_id) {
		var popupWidth = 1000;
		var popupHeight = 585;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY = (window.screen.height / 2) - (popupHeight / 2);
		
		url = "pmFile.do?portfolio_id=" + portfolio_id;
		specs = "width=" + popupWidth + ", height= " + popupHeight + ", top=" + popupY + ", left=" + popupX;
		window.open(url, name, specs);
		
		return false;
	}
	
	function pur_confirm() {
		if (!confirm('구매를 확정하시겠습니까?')) {
			alert('구매 확정을 취소하셨습니다.');
			return;
		} else {
			
			alert('구매 확정이 완료되었습니다.');
		}
	}
  </script>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
<script type="text/javascript">
	function pur_confirm() {
		if (!confirm('구매를 확정하시겠습니까?')) {
			alert('구매 확정을 취소하셨습니다.');
			return;
		} else {
			alert('구매 확정이 완료되었습니다.');
		}
	}
</script>
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
                    <td class="product-thumb"><img width="80px" height="auto" src="${pmPurList.portfolio_thumbUrl}"></td>
                    <td class="product-details">
                      <h3 class="title">${pmPurList.portfolio_title}</h3> <span><strong>가격</strong>${pmPurList.portfolio_price} 원</span><span><strong>구매일</strong>${pmPurList.deal_date}</span><span><strong>판매자</strong>${pmPurList.deal_saleUser}</span>
                    </td>
                    <td class="product-category"><span><strong>${pmPurList.deal_status}</strong></span></td>
                    <td class="action" data-title="Action">
                      <div>
                        <ul class="list-inline justify-content-center">
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="문의 하기" class="view" href="pmInquiryWrite.do?deal_id=${pmPurList.deal_id}&portfolio_title=${pmPurList.portfolio_title}" onclick="window.open(this.href, '_blank', 'width=1000, height=700'); return false;"> <i class="fa fa-commenting-o"></i></a></li>
                          <c:choose>
                            <c:when test="${pmPurList.deal_status eq '구매 확정'}">
                              <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="후기 작성" class="edit" href="pmReview.do?portfolio_id=${pmPurList.portfolio_id}" onclick="window.open(this.href, '_blank', 'width=1000, height=580'); return false;"><i class="fa fa-thumbs-o-up"></i></a></li>
                            </c:when>
                            <c:otherwise>
                              <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="구매 확정" class="edit" href="pmPurchaseConfirm.do?deal_id=${pmPurList.deal_id}" onclick="pur_confirm"> <i class="fa fa-check"></i></a></li>
                            </c:otherwise>
                          </c:choose>
                        </ul>
                      </div>
                    </td>
                  </tr>
                </c:forEach>

              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>

  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>
</html>
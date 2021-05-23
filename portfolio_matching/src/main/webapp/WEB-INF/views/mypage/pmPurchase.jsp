<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
</head>

<body class="body-wrapper">
  <!--==================================
=            User Profile            =
===================================-->
  <section class="dashboard section">
    <!-- Container Start -->
    <div class="container">
      <!-- Row Start -->
      <div class="row">
        <%@ include file="nav.jsp"%>

        <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
          <div class="widget dashboard-container my-adslist">
            <h3>구매 내역</h3> <br />
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>구매 상품</th>
                  <th class="text-center">상태</th>
                  <th class="text-center">문의/후기</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${pmPurchaseList}" var="pmPurList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="${pmPurList.portfolio_thumbUrl}"></td>
                    <td class="product-details">
                      <h3 class="title">${pmPurList.portfolio_title}</h3> <span><strong>가격</strong>${pmPurList.portfolio_price} 원</span><span><strong>구매일</strong>${pmPurList.deal_date}</span><span><strong>판매자</strong>${pmPurList.saleUser}</span><span><strong>연락처</strong>db값 없음</span>
                    </td>
                    <td class="product-category"><span>${pmPurList.portfolio_sCat}</span></td>
                    <td class="action" data-title="Action">
                      <div>
                        <ul class="list-inline justify-content-center">
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="문의 하기" class="view" href="pmInquiry.do" target="_blank"> <i class="fa fa-commenting-o"></i>
                          </a></li>
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="구매 확정" class="edit" href="#"> <i class="fa fa-check"></i>
                          </a></li>
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="후기 작성" class="view" href="pmReview.do" target="_blank"><i class="fa fa-thumbs-o-up"></i></a></li>
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
      <!-- Row End -->
    </div>
    <!-- Container End -->
  </section>

  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
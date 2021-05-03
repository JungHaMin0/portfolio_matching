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
            <h3>수익 현황</h3> <br />
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>판매 상품</th>
                  <th class="text-center">금액</th>
                  <th class="text-center">총액</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="product-thumb"><img width="80px" height="auto" src="resources/images/item_image1.PNG" alt="image description"></td>
                  <td class="product-details">
                    <h3 class="title">웹사이트 제작</h3> <span class="add-id"><strong>구매자</strong>정하민</span><span><strong>구매일</strong>2021-4-25</span><span><strong>가격</strong>490,000 원</span>
                  </td>
                  <td class="text-center">
                    <span><strong>+ 490,000 원</strong></span>
                  </td>
                  <td class="text-center">
                    <span><strong>1,470,000 원</strong></span>
                  </td>
                </tr>

                <tr>
                  <td class="product-thumb"><img width="80px" height="auto" src="resources/images/item_image2.PNG" alt="image description"></td>
                  <td class="product-details">
                    <h3 class="title">웹 페이지 반응형 웹</h3> <span class="add-id"><strong>구매자</strong>정하민</span><span><strong>구매일</strong>2021-4-24</span><span><strong>가격</strong>490,000 원</span>
                  </td>
                  <td class="text-center">
                    <span><strong>+ 490,000 원</strong></span>
                  </td>
                  <td class="text-center">
                    <span><strong>980,000 원</strong></span>
                  </td>
                </tr>

                <tr>
                  <td class="product-thumb"><img width="80px" height="auto" src="resources/images/item_image3.PNG" alt="image description"></td>
                  <td class="product-details">
                    <h3 class="title">안드로이드 앱 제작</h3> <span class="add-id"><strong>구매자</strong>정하민</span><span><strong>구매일</strong>2021-4-23</span><span><strong>가격</strong>490,000 원</span>
                  </td>
                  <td class="text-center">
                    <span><strong>+ 490,000 원</strong></span>
                  </td>
                  <td class="text-center">
                    <span><strong>490,000 원</strong></span>
                  </td>
                </tr>
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
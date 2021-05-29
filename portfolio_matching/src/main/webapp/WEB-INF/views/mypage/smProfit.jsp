<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <%@ include file="../../include/style_css.jsp"%>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript">
    var total = 0;
    var cur = 0;
    function sum(number) {
      total = total + number;
      $("#total").html(total + " 원");
      return total;
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
                <c:forEach items="${smProfitList}" var="smProfitList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="${smProfitList.portfolio_thumbUrl}" alt="image description"></td>
                    <td class="product-details">
                      <h3 class="title">웹사이트 제작</h3> <span class="add-id"><strong>구매자</strong>${smProfitList.deal_purUser}</span><span><strong>구매일</strong>${smProfitList.deal_date}</span><span><strong>가격</strong>${smProfitList.deal_price}</span>
                    </td>
                    <td class="text-center">
                      <span><strong>+ </strong><strong id="price">${smProfitList.deal_price}</strong><strong> 원</strong></span>
                    </td>
                    <td class="text-center">
                      <span><strong id="total"><script>sum(${smProfitList.deal_price});</script></strong></span>
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
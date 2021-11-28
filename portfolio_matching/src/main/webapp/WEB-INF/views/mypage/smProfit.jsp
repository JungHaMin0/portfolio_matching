<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
            <h3>수익 현황</h3>
            <div class="text-right">
              <strong>총 수익 : ${total} 원</strong>
            </div>
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>판매 상품</th>
                  <th class="text-center">가격</th>
                  <th class="text-center">실수령액</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${smProfitList}" var="smProfitList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="data:image/jpeg;base64,<c:out value='${smProfitList.portfolio_Img }'/>" alt="image description"></td>
                    <td class="product-details">
                      <h3 class="title">웹사이트 제작</h3> <span class="add-id"><strong>구매자</strong>${smProfitList.deal_purUser}</span><span><strong>구매일</strong>${smProfitList.deal_date}</span>
                    </td>
                    <td class="text-center"><span><strong id="price">${smProfitList.deal_price}</strong><strong> 원</strong></span></td>
                    <td class="text-center"><span><strong id="total">${smProfitList.deal_price - (smProfitList.deal_price * 0.1) }</strong> 원</span></td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>

          <div class="pagination justify-content-center">
            <nav aria-label="Page navigation example">
              <ul class="pagination">

                <c:if test="${pageMaker.prev}">
                  <li class="page-item"><a class="page-link" href="smProfit.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                  </a></li>
                </c:if>

                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                  <c:if test="${pageMaker.cri.page eq idx}">
                    <li class="page-item active"><a class="page-link" href="smProfit.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                  <c:if test="${pageMaker.cri.page ne idx}">
                    <li class="page-item"><a class="page-link" href="smProfit.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                </c:forEach>

                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                  <li class="page-item"><a class="page-link" href="smProfit.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
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
</body>

</html>
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
    <!-- Container Start -->
    <div class="container">
      <!-- Row Start -->
      <div class="row">
        <%@ include file="nav.jsp"%>

        <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
          <div class="widget dashboard-container my-adslist">
            <h3>관심 상품</h3> <br />
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>관심 상품</th>
                  <th class="text-center">카테고리</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>

                <c:forEach items="${pmInterestList}" var="pmInterList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="data:image/jpeg;base64,<c:out value='${pmInterList.portfolio_Img }'/>"></td>
                    <td class="product-details">
                      <h3 class="title">${pmInterList.portfolio_title}</h3> <span><strong>판매자</strong>${pmInterList.portfolio_userId}</span> <span><strong>가격</strong>${pmInterList.portfolio_price} 원</span> <span><strong>평점</strong><i class="fa fa-star"></i> ${pmInterList.portfolio_rating}</span>
                    </td>
                    <td class="product-category"><span>${pmInterList.portfolio_sCat}</span></td>
                    <td class="action" data-title="Action">
                      <div>
                        <ul class="list-inline justify-content-center">
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="보기" class="view" href="PortContent.do?portfolio_id=${pmInterList.portfolio_id}"> <i class="fa fa-eye"></i></a></li>
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="삭제" class="delete" href="pmInterestDelete.do?portfolio_id=${pmInterList.portfolio_id}"> <i class="fa fa-trash"></i></a></li>
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
                  <li class="page-item"><a class="page-link" href="pmInterest.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                  </a></li>
                </c:if>

                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                  <c:if test="${pageMaker.cri.page eq idx}">
                    <li class="page-item active"><a class="page-link" href="pmInterest.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                  <c:if test="${pageMaker.cri.page ne idx}">
                    <li class="page-item"><a class="page-link" href="pmInterest.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                </c:forEach>

                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                  <li class="page-item"><a class="page-link" href="pmInterest.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
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
  	$(".delete").on('click', function() {
  		if(confirm('정말 삭제하시겠습니까?') == true) {
  			alert('삭제되었습니다.');
  			return;
  		} else {
  			return false;
  		}
  	});
  </script>
</body>

</html>
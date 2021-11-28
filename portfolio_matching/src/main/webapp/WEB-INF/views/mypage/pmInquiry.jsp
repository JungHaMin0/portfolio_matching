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
            <h3>문의 내역</h3> <br />
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>문의 상품 및 내용</th>
                  <th class="text-center"></th>
                  <th class="text-center"></th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${pmInquiryList}" var="pmInqList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="data:image/jpeg;base64,<c:out value='${pmInqList.portfolio_Img }'/>" /></td>
                    <td class="product-details">
                      <h3 class="title">${pmInqList.portfolio_title}</h3> <span><strong>문의 제목</strong>${pmInqList.inq_title}</span> <span><strong>문의 일자</strong>${pmInqList.inq_regDate}</span>
                    </td>
                    <td class="product-category"></td>
                    <td class="action" data-title="Action">
                      <div>
                        <ul class="list-inline justify-content-center">
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="답변 확인" class="view" href="" onclick="pmInquiryRead('${pmInqList.inq_id}', '${pmInqList.portfolio_title}');"> <i class="fa fa-commenting-o"></i></a></li>
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
                  <li class="page-item"><a class="page-link" href="pmInquiry.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                  </a></li>
                </c:if>

                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                  <c:if test="${pageMaker.cri.page eq idx}">
                    <li class="page-item active"><a class="page-link" href="pmInquiry.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                  <c:if test="${pageMaker.cri.page ne idx}">
                    <li class="page-item"><a class="page-link" href="pmInquiry.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                  </c:if>
                </c:forEach>

                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                  <li class="page-item"><a class="page-link" href="pmInquiry.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
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
  function pmInquiryRead(inq_id, portfolio_title) {
		var popupWidth = 1000;
		var popupHeight = 900;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY = (window.screen.height / 2) - (popupHeight / 2);
		
		url = "pmInquiryRead.do?inq_id=" + inq_id  + "&portfolio_title=" + portfolio_title;
		specs = "width=" + popupWidth + ", height= " + popupHeight + ", top=" + popupY + ", left=" + popupX;
		window.open(url, name, specs);
		
		return false;
	}
  </script>
</body>

</html>
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
            <h3>문의 내역</h3> <br />
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>문의 상품</th>
                  <th class="text-center"></th>
                  <th class="text-center"></th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${smInquiryList}" var="smInqList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="${smInqList.portfolio_thumbUrl}"></td>
                    <td class="product-details">
                      <h3 class="title">${smInqList.portfolio_title}</h3>
                      <span><strong>문의 제목</strong>${smInqList.inq_title}</span>
                      <span><strong>작성자</strong>${smInqList.inq_purUser}</span>
                      <span><strong>문의 일자</strong>${smInqList.inq_regDate}</span>
                    </td>
                    <td class="product-category"></td>
                    <td class="action" data-title="Action">
                      <div>
                        <ul class="list-inline justify-content-center">
                          <li class="list-inline-item">
                            <a data-toggle="tooltip" data-placement="top" title="답변 하기" class="view" href="smAnswerWrite.do?inq_id=${smInqList.inq_id}&porfolio_title=${smInqList.portfolio_title}" target="_blank"> <i class="fa fa-commenting-o"></i></a>
                          </li>
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
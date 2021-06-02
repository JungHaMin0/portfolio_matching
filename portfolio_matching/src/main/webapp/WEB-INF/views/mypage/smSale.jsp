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
            <h3>판매 중</h3> <br />
            <table class="table product-dashboard-table">
              <thead>
                <tr>
                  <th>이미지</th>
                  <th>판매 정보</th>
                  <th class="text-center">거래 현황</th>
                  <th class="text-center"></th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${smSaleList}" var="smSaleList">
                  <tr>
                    <td class="product-thumb"><img width="80px" height="auto" src="${smSaleList.portfolio_thumbUrl}"></td>
                    <td class="product-details">
                      <h3 class="title">${smSaleList.portfolio_title}</h3> <span><strong>가격</strong>${smSaleList.portfolio_price} 원</span><span><strong>등록일</strong>${smSaleList.portfolio_regDate}</span>
                    </td>
                    <td class="product-category action" data-title="Action">
                      <ul class="list-inline justify-content-center">
                        <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="보기" class="edit" href="smDeal.do?portfolio_id=${smSaleList.portfolio_id}"> <i class="fa fa-krw"></i>
                        </a></li>
                      </ul>
                    </td>
                    <td class="action" data-title="Action">
                      <div>
                        <ul class="list-inline justify-content-center">
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="보기" class="view" href="category.html"> <i class="fa fa-eye"></i>
                          </a></li>
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="수정" class="edit" href=""> <i class="fa fa-pencil"></i>
                          </a></li>
                          <li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="삭제" class="delete" href=""> <i class="fa fa-trash"></i>
                          </a></li>
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
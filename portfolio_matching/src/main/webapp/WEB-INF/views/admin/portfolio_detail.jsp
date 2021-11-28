<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="../../include/adminstyle_css.jsp"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>포매 어드민 페이지</title>
<style>
.card-body-detail {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 10px;
}

#portfolio-category {
	position: relative;
}

#category-name {
	position: absolute;
	width: 150px;
	background-color: white;
	border: solid 1px #e3e6f0;
	visibility: hidden;
	z-index: 9999;
	padding: 5px;
	left: 130px;
	top: -7px;
}

#portfolio-category:hover #category-name {
	visibility: visible;
}

.custom-size {
	width: 218px;
	height: 190px;
	overflow: hidden;
}

.custom-size img {
	display: block;
	width: 100%;
	height: auto;
	object-fit: cover;
}
</style>
</head>

<body id="page-top">

  <%@ include file="../../include/adminstyle_css.jsp"%>
  <!-- Page Wrapper -->
  <div id="wrapper">
    <!-- sidebar -->
    <%@ include file="../../include/adminSidebar.jsp"%>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <%@ include file="../../include/adminTopbar.jsp"%>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">${portfolio.portfolio_title}</h1>

          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">판매량</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${allSaleCount}</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-chart-line fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Annual) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">판매 수익</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                        <fmt:formatNumber value="${allSalePrice}" pattern="#,###" />
                        &#8361;
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-won-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Tasks Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">리뷰</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${allReviewCount}</div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-thumbs-up fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">문의</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${allInquiryCount}</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">

            <div class="col-lg-6">

              <!-- Basic Card Example -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">포트폴리오 상세 보기</h6>
                </div>
                <div class="card-body">
                  <div class="row">

                    <div class="col-lg-4">
                      <div class="card">
                        <div class="card-body-detail">
                          <div class="row no-gutters align-items-center">
                            <div class="col mr-2 text-center">
                              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">이미지</div>
                              <div class="custom-size">
                                <a href="adminPortfolioImage.do?portfolio_id=${portfolio.portfolio_id}" onClick="window.open(this.href, '', 'width=500, height=500'); return false;"><img src="data:image/jpeg;base64,<c:out value='${portfolio.portfolio_Img}'/>" style="height: auto;"></a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-8">
                      <div class="row mb-3">

                        <div class="col-lg-4">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">번호</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800">${portfolio.portfolio_id}</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="col-lg-8">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">작성자</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800">${portfolio.portfolio_userId}</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                      </div>

                      <div class="row mb-3">

                        <div class="col-lg-12">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">제목</div>
                                  <div class="h5 mb-0 text-gray-800">${portfolio.portfolio_title}</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                      </div>

                      <div class="row mb-3">

                        <div class="col-lg-5">
                          <div class="card">
                            <div class="card-body-detail" id="portfolio-category">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">카테고리</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800">${portfolio.portfolio_category_main.id}-${portfolio.portfolio_category_sub.id}</div>
                                  <div id="category-name">
                                    [${portfolio.portfolio_category_main.name}]<br />${portfolio.portfolio_category_sub.name}</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="col-lg-7">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">작성일</div>
                                  <div class="h5 font-weight-bold mb-0 text-gray-800">
                                    <fmt:formatDate pattern="yyyy-mm-dd / kk:mm" value="${portfolio.portfolio_regDate}" />
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                      </div>

                    </div>

                    <div class="col-lg-12">
                      <div class="row mb-3">

                        <div class="col-lg-4">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">작업 기간</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800">${portfolio.portfolio_term}일</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="col-lg-4">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">가격</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800">${portfolio.portfolio_price}원</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="col-lg-4">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2 text-center">
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">평점</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800">${portfolio.portfolio_rating}점</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                      </div>

                    </div>

                    <div class="col-lg-12">
                      <div class="row mb-3">

                        <div class="col-lg-12">
                          <div class="card">
                            <div class="card-body-detail">
                              <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                  <div class="text-center text-xs font-weight-bold text-primary text-uppercase mb-1">내용</div>
                                  <div class="h5 mb-0 text-gray-800">${portfolio.portfolio_content}</div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                      </div>

                    </div>

                  </div>
                </div>
              </div>

            </div>

            <div class="col-lg-6">

              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">최근 거래 내역</h6>
                </div>
                <div class="card-body">
                  <table class="table table-bordered dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                    <thead>
                      <tr role="row">
                        <th class="text-center" style="width: 60px;">번호</th>
                        <th class="text-center" style="width: 150px;">구매자</th>
                        <th class="text-center" style="width: 100px;">거래 현황</th>
                        <th class="text-center" style="width: 200px;">거래 일시</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:if test="${empty recentDeal}">
                        <tr>
                          <td class="text-center" colspan="4">최근 거래 내역이 없습니다.</td>
                        </tr>
                      </c:if>
                      <c:forEach items="${recentDeal}" var="list">
                        <tr>
                          <td class="text-center">${list.deal_id}</td>
                          <td class="text-center">${list.deal_purUser}</td>
                          <td class="text-center">${list.deal_status}</td>
                          <td class="text-center"><fmt:formatDate pattern="yyyy-mm-dd / kk:mm" value="${list.deal_date}" /></td>
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>

              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">최근 리뷰 내역</h6>
                </div>
                <div class="card-body">
                  <table class="table table-bordered dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                    <thead>
                      <tr role="row">
                        <th class="text-center" style="width: 60px;">번호</th>
                        <th class="text-center" style="width: 150px;">작성자</th>
                        <th class="text-center" style="width: 200px;">제목</th>
                        <th class="text-center" style="width: 60px;">평점</th>
                        <th class="text-center" style="width: 200px;">작성일</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:if test="${empty recentDeal}">
                        <tr>
                          <td class="text-center" colspan="5">최근 리뷰 내역이 없습니다.</td>
                        </tr>
                      </c:if>
                      <c:forEach items="${recentReview}" var="list">
                        <tr>
                          <td class="text-center">${list.review_id}</td>
                          <td class="text-center">${list.review_userId}</td>
                          <td class="text-center">${list.review_title}</td>
                          <td class="text-center">${list.review_rating} 점</td>
                          <td class="text-center"><fmt:formatDate pattern="yyyy-mm-dd / kk:mm" value="${list.review_regDate}" /></td>
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
              
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">최근 문의 내역</h6>
                </div>
                <div class="card-body">
                  <table class="table table-bordered dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                    <thead>
                      <tr role="row">
                        <th class="text-center" style="width: 60px;">번호</th>
                        <th class="text-center" style="width: 60px;">거래 번호</th>
                        <th class="text-center" style="width: 150px;">작성자</th>
                        <th class="text-center" style="width: 200px;">제목</th>
                        <th class="text-center" style="width: 60px;">답변 여부</th>
                        <th class="text-center" style="width: 200px;">거래 일시</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:if test="${empty recentInquiry}">
                        <tr>
                          <td class="text-center" colspan="6">최근 문의 내역이 없습니다.</td>
                        </tr>
                      </c:if>
                      <c:forEach items="${recentInquiry}" var="list">
                        <tr>
                          <td class="text-center">${list.inq_id}</td>
                          <td class="text-center">${list.inq_deal_id}</td>
                          <td class="text-center">${list.inq_purUser}</td>
                          <td class="text-center">${list.inq_title}</td>
                          <c:choose>
                            <c:when test="${list.inq_ans == 1}">
                              <td class="text-center" style="color: lightgreen;"><i class="far fa-check-circle"></i></td>
                            </c:when>
                            <c:otherwise>
                              <td class="text-center" style="color: #ff7979;"><i class="far fa-times-circle"></i></td>
                            </c:otherwise>
                          </c:choose>
                          <td class="text-center"><fmt:formatDate pattern="yyyy-mm-dd / kk:mm" value="${list.inq_regDate}" /></td>
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
              

            </div>

          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.do">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <%@ include file="../../include/adminstyle_js.jsp"%>

</body>

</html>
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

    <title>SB Admin 2 - Tables</title>

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
                    <h1 class="h3 mb-2 text-gray-800">모든 정보</h1>
                    <a href="adminStat.do">고객,</a>
					<a href="adminStatPortfolio.do">포트폴리오</a>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">포트폴리오 정보</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
										<tr>
                                            <th>번호</th>
                                            <th>사용자</th>
                                            <th>제목</th>
                                            <th>내용</th>
                                            <th>카테고리</th>
                                            <th>가격</th>
                                            <th>별점</th>
                                            <th>날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${statPortList}" var="statPortList">
                                        <tr>
                                            <td>${statPortList.portfolio_id}</td>
                                            <td>${statPortList.portfolio_userId}</td>
                                            <td>
                                            <c:choose>
					                            <c:when test="${fn:length(statPortList.portfolio_title) gt 10}">
					                                  <a href="adminPortfolioDetail.do?portfolio_id=${statPortList.portfolio_id}">${fn:substring(statPortList.portfolio_title, 0, 10)}...</a>
					                            </c:when>
					                            <c:otherwise>
					                              <div><a href="adminPortfolioDetail.do?portfolio_id=${statPortList.portfolio_id}">${statPortList.portfolio_title}</a></div>
					                            </c:otherwise>
				                          </c:choose>
                                            </td>
                                            <td>
                                            <c:choose>
					                            <c:when test="${fn:length(statPortList.portfolio_content) gt 20}">
					                            </c:when>
					                            <c:otherwise>
					                              <div>${statPortList.portfolio_content}</div>
					                            </c:otherwise>
				                          </c:choose>
                                            </td>
                                            
                                            <c:choose>
                                            <c:when test="${statPortList.portfolio_category_main eq 1}"><td>IT프로그래밍</td></c:when>
                                            <c:when test="${statPortList.portfolio_category_main eq 2}"><td>디자인</td></c:when>
                                            <c:when test="${statPortList.portfolio_category_main eq 3}"><td>영상, 사진, 음향</td></c:when>
                                            <c:when test="${statPortList.portfolio_category_main eq 4}"><td>마케팅</td></c:when>
                                            <c:when test="${statPortList.portfolio_category_main eq 5}"><td>번역 및 통역</td></c:when>
                                            <c:when test="${statPortList.portfolio_category_main eq 6}"><td>문서</td></c:when>
                                            <c:when test="${statPortList.portfolio_category_main eq 7}"><td>비즈니스 컨설팅</td></c:when>
                                            <c:when test="${statPortList.portfolio_category_main eq 8}"><td>주문 제작</td></c:when>
                                            </c:choose>
                                            
                                            <td>${statPortList.portfolio_price}</td>
                                            <td>${statPortList.portfolio_rating}</td>
                                            <td>${statPortList.portfolio_regDate}</td>
                                            
                                            <!-- <td><a href="#">보기</a></td> -->
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
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
                        <span>Copyright &copy; Your Website 2021</span>
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
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
    left: 200px;
    top: 5px;
  }
  
  #portfolio-category:hover #category-name{
    visibility: visible;
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
          <h1 class="h3 mb-2 text-gray-800">포트폴리오 관리</h1>
          <p class="mb-4">등록된 포트폴리오를 관리하는 페이지입니다.</p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">등록된 포트폴리오 목록</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr class="text-center">
                      <th>번호</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>카테고리</th>
                      <th>등록일</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${portfolio}" var="list">
                      <tr>
                        <td class="text-center">${list.portfolio_id}</td>
                        <td><c:choose>
                            <c:when test="${fn:length(list.portfolio_title) gt 50}">
                                  <a href="adminPortfolioDetail.do?portfolio_id=${list.portfolio_id}">${fn:substring(list.portfolio_title, 0, 47)}...</a>
                            </c:when>
                            <c:otherwise>
                              <div><a href="adminPortfolioDetail.do?portfolio_id=${list.portfolio_id}">${list.portfolio_title}</a></div>
                            </c:otherwise>
                          </c:choose></td>
                        <td>
                          <c:choose>
                            <c:when test="${fn:length(list.portfolio_userId) gt 13}">
                                  <a href="#">${fn:substring(list.portfolio_userId, 0, 10)}...</a>
                            </c:when>
                            <c:otherwise>
                             <div><a href="A_Info.do?purUser=${list.portfolio_userId}">${list.portfolio_userId}</a></div>
                            </c:otherwise>
                          </c:choose>
                        </td>
                        <td id="portfolio-category" class="text-center">
                          <div id="category-id">${list.portfolio_category_main.id} - ${list.portfolio_category_sub.id}</div>
                          <div id="category-name">[${list.portfolio_category_main.name}]<br />${list.portfolio_category_sub.name}</div>
                        </td>
                        <td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd / kk:mm" value="${list.portfolio_regDate}" /></td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <%@ include file="../../include/adminstyle_css.jsp"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>구매내역</title>


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
                    <h1 class="h3 mb-2 text-gray-800">회원 별구매내역</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">구매내역</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>구매자</th>
                                            <th>판매자</th>
                                            <th>가격</th>
                                            <th>상태</th>
                                            <th>날짜</th>
                                        </tr>
                                    </thead>
                                   <!--  <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot> -->
                                    <tbody>
                                    <c:forEach var="list" items="${list}"> 
                                    <tr>
                    	<td><c:out value="${list.deal_id}"/></td>
             
                       <td>	<a href="purUser.do?purUser=${list.deal_purUser}">
                        <c:out value="${list.deal_purUser}"/></a></td>
                         <td>	<a href="saleUser.do?saleUser=${list.deal_saleUser}">
                        <c:out value="${list.deal_saleUser}"/></a></td>
                        <td><c:out value="${list.deal_price}"/></td>
                        <td><c:out value="${list.deal_status}"/></td>
                        <td><fmt:formatDate value= "${list.deal_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                </c:forEach>
            
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
		
         <div class="pagination justify-content-center">
            <nav aria-label="Page navigation example">
              <ul class="pagination">
                <c:if test="${pageMaker.prev}">
                  <c:if test="${empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                    </a></li>
                  </c:if>
                  <c:if test="${not empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                    </a></li>
                  </c:if>
                </c:if>
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                  <c:if test="${empty categorySubGetOne}">
                    <c:if test="${pageMaker.cri.page eq idx}">
                      <li class="page-item active"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                    </c:if>
                    <c:if test="${pageMaker.cri.page ne idx}">
                      <li class="page-item"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                    </c:if>
                  </c:if>
                  <c:if test="${not empty categorySubGetOne}">
                    <c:if test="${pageMaker.cri.page eq idx}">
                      <li class="page-item active"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                    </c:if>
                    <c:if test="${pageMaker.cri.page ne idx}">
                      <li class="page-item"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(idx)}">${idx}</a></li>
                    </c:if>
                  </c:if>
                </c:forEach>
                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                  <c:if test="${empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
                    </a></li>
                  </c:if>
                  <c:if test="${not empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="adminPur.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
                    </a></li>
                  </c:if>
                </c:if>
              </ul>
            </nav>
          </div>
          
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
<!-- 
<script>
function fn_view(cb_num){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='admin_board_detail.do' />";
    url = url + "?cb_num=" + cb_num;
    fn_view
    form.action = url;    
    form.submit(); 
}
</script>

 -->
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
=======
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
>>>>>>> refs/remotes/origin/hamin

<<<<<<< HEAD

=======
>>>>>>> refs/remotes/origin/hamin
<!DOCTYPE html>
<html>
<head>
  <%@ include file="../../include/adminstyle_css.jsp"%>
    <title>관리자페이지</title>
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
                    <h1 class="h3 mb-2 text-gray-800">리뷰관리</h1>
                    <p class="mb-4">리뷰관리용^^<a target="_blank"
                            href="https://datatables.net">다윤이가 하는 페이지~하트하트</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">리뷰전체</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <form id="review_id" name="review_id" method="post">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
<<<<<<< HEAD
                                            <th>리뷰번호</th>
                                            <th>포트폴리오 번호</th>
                                            <th>사용자 아이디</th>
                                            <th>별점</th>
                                            <th>제목</th>
                                            <th>내용</th>
                                            <th>날짜</th>
                                            <th>삭제</th>
=======
                                            <th>리뷰 아이디</th>
                                            <th>포폴 아이디</th>
                                            <th>유저 아이디</th>
                                            <th>별점</th>
                                            <th>타이틀</th>
                                            <th>내용</th>
                                            <th>날짜</th>
>>>>>>> refs/remotes/origin/hamin
                                        </tr>
                                    </thead>
<<<<<<< HEAD
                                    <tfoot>
                                        <tr>
                                             <th>리뷰번호</th>
                                            <th>포트폴리오 번호</th>
                                            <th>사용자 아이디</th>
                                            <th>별점</th>
                                            <th>제목</th>
                                            <th>내용</th>
                                            <th>날짜</th>
                                            <th>삭제</th>
                                            
                                        </tr>
                                    </tfoot>
=======
>>>>>>> refs/remotes/origin/hamin
                                    <tbody>
<<<<<<< HEAD
                                     <c:forEach items="${reviewlist}" var="reviewlist">
=======
                                    <c:forEach items="${reviewlist}" var="reviewlist">
>>>>>>> refs/remotes/origin/hamin
                                        <tr>
                                            <td>${reviewlist.review_id}</td>
                                            <td>${reviewlist.review_portfolio_id}</td>
                                            <td>${reviewlist.review_userId}</td>
                                            <td>${reviewlist.review_rating}</td>
                                            <td>${reviewlist.review_title}</td>
                                            <td>${reviewlist.review_content}</td>
                                            <td>${reviewlist.review_regDate}</td>
<<<<<<< HEAD
                                            <td> 
                                          <!--   <a href='#' onClick='fn_delete()'>삭제</a> -->
                                          <a href="javascript:reviewDelete(${reviewlist.review_id});">삭제</a>
                                            </td>
											</tr>
                                        </c:forEach>
=======
                                        </tr>
      	                           </c:forEach>
>>>>>>> refs/remotes/origin/hamin
                                    </tbody>
                                </table>
                                </form>
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
  
  <script type="text/javascript">
   function reviewDelete(review_id) {
     if(confirm("정말 삭제하시겠습니까?") == true) {
        $.ajax({
             url: "reviewDelete.do",
             data: {"review_id" : review_id},
             success : function(res) {
                if(res == 1) {
                   alert('삭제가 완료되었습니다.');
                  location.reload();
                } else {
                   alert('삭제에 실패하였습니다.');
                }
             }, error : function() {
                alert('AJAX ERROR');
             }
          });
     } else {
        return 0;
     }
  } 
  
	/* function fn_delete() {
		var form = document.getElementById("reviewForm");
		form.action = "<c:url value='/reviewDelete.do'/>";
		form.submit();
	} */
</script>

</body>

</html>
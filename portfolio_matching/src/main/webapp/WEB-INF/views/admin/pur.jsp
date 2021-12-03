<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<meta charset="utf-8">
    <title>거래내역</title>
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.tabpager.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tabpager.js"></script>

  

<script>
$(document).ready $(function(){   
	
	var link = document.loaction.href;
	var tab = link.split('/')pop();
	$('a[href$='+tab+']').trigger("click");
	$("#Pur").show();
}); 

</script>


</head>

<body id="page-top">
  <%@ include file="../../include/adminUser_css.jsp"%>
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
                    <h1 class="h3 mb-2 text-gray-800">거래관리</h1>
 					
   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                         <h6 class="m-0 font-weight-bold text-primary">거래목록</h6>
                        </div>
   <div class="container">

  <div class="row">
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="tab" role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist" id ="dd">
                            <li role="presentation" class="active"><a href="#Pur" aria-controls="home" role="tab" data-toggle="tab">거래내역</a></li>
                     
                        </ul>
  <div class="tab-slider--container">
         <div class="card-body">
            <div class="tab-content tabs">
                            <div role="tabpanel" class="tab-pane active" id="Pur">
                              
                                    <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th class="text-center">번호</th>
                                            <th class="text-center">구매자</th>
                                            <th class="text-center">판매자</th>
                                            <th class="text-center">가격</th>
                                            <th class="text-center">상태</th>
                                            <th class="text-center">날짜</th>
                                        </tr>
                                    </thead>
                                  
                                    <tbody>
                                    <c:forEach var="list" items="${list}"> 
                                    <tr>
                    	<td><c:out value="${list.deal_id}"/></td>
             
                       <td class="text-center">	<a href="A_Info.do?purUser=${list.deal_purUser}">
                        <c:out value="${list.deal_purUser}"/></a></td>
                         <td class="text-center">	<a href="A_Info.do?purUser=${list.deal_saleUser}">
                        <c:out value="${list.deal_saleUser}"/></a></td>
                        <td class="text-center"><c:out value="${list.deal_price}"/>원</td>
                        <td class="text-center"><c:out value="${list.deal_status}"/></td>
                        <td class="text-center"><fmt:formatDate value= "${list.deal_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                </c:forEach>
            
                                    </tbody>
                                </table>
                           
                            </div>
                         
                                </div>
                           
                    
                      
                      </div>
                 </div>       
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


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
						<h3 class="widget-header">회원 탈퇴</h3>
                        
                        <div class="text-center"><strong>탈퇴하시겠습니까?</strong></div>
                        <div class="text-center">
                           <br>
                          <button type="button" class="btn btn-danger" id="delete">탈퇴</button>
                          <button type="button" class="btn btn-success" id="cancel">취소</button>
                        </div>
					</div>
				</div>
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</section>
    
	<%@ include file="../../include/footer.jsp"%>
	<%@ include file="../../include/style_js.jsp"%>
  <script src="./resources/js/userDel.js"></script>
</body>
</html>
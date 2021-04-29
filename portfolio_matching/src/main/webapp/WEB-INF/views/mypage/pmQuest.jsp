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
					<div class="row text-center">
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa fa-bookmark-o"></i> <span class="counter my-2 d-block" data-count="20">0</span>
								<h5>관심 상품</h5>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa-credit-card"></i> <span class="counter my-2 d-block" data-count="32">0</span>
								<h5>결제 내역</h5>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa-thumbs-o-up"></i> <span class="counter my-2 d-block" data-count="12">0</span>
								<h5>서비스 평가</h5>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa-commenting-o"></i> <span class="counter my-2 d-block" data-count="48">0</span>
								<h5>문의 내역</h5>
							</div>
						</div>
					</div>

					<div class="widget dashboard-container my-adslist">
						<h3 class="widget-header">최근 활동 내역</h3>

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
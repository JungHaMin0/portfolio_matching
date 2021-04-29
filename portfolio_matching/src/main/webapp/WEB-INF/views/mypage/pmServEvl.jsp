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
						<h3 class="widget-header">서비스 평가</h3>

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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<head> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" /> 
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

</head>


<!DOCTYPE html>
<html>
<body class="bg-gray">
	<div class="col-md-12 bg-gray">
		<nav class="navbar navbar-expand-lg navbar-light navigation">
			<a class="navbar-brand" href="index.do"> <img
				src="resources/images/logo.png" alt="logo" width="30" height="60">
				<h3>포매</h3>
			</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto main-nav ">
					<li class="nav-item active"><a class="nav-link"
						href="index.do">Home</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<!-- contact us start-->
	
		<div class="container" style="margin-top: 5px">
			<div class="row">
				<div class="col-md-4 bg-gray">
					<div class="contact-us-content p-4">
						<h5>포트폴리오 등록</h5>
						<hr>
						<!-- <h1 class="pt-3">Hello, what's on your mind?</h1> -->
						<p class="pt-3">1.기본정보</p>
						<p class="pt-3">2.포트폴리오 상세 </p>
						<p class="pt-3">3.포트폴리오 정보 등록 ✔</p>
						<p class="pt-3">4.검토 및 내용 수정</p>
					</div>
				</div>

				<div class="ad-listing-list col-md-8 bg-white">
					<h3 style="margin-top: 20px">포트폴리오 정보등록</h3>
					<hr>
					<form action="#">
					<fieldset class="p-2">
						<div class="form-group">
							<div class="row">
								<div class="col-lg-12 py-2">
									<p class="pt-3">가격 *</p>
									<div class="input-group">
										<input id="cc-payment" name="cc-payment" type="text"
											class="form-control" aria-required="true"
											aria-invalid="false" value="100.00">
									</div>
								</div>
							</div>
						</div>

						<p class="pt-3">예상 시작일~마침일 *</p>
						<div class="col-lg-6 py-2">
							<div class="form-group">
								<div class="input-group date" id="datetimepicker1"
									data-target-input="nearest">
									<input type="text" class="form-control datetimepicker-input"
										data-target="#datetimepicker1" value="2021/05/11">
									<div class="input-group-append" data-target="#datetimepicker1"
										data-toggle="datetimepicker">
										<div class="input-group-text">
											<i class="fa fa-calendar"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 py-2">
							<div class="form-group">
								<div class="input-group date" id="datetimepicker2"
									data-target-input="nearest">
									<input type="text" class="form-control datetimepicker-input"
										data-target="#datetimepicker2" value="2021/05/11">
									<div class="input-group-append" data-target="#datetimepicker2"
										data-toggle="datetimepicker">
										<div class="input-group-text">
											<i class="fa fa-calendar"></i>
										</div>
									</div>
								</div>
							</div>
						</div>


						<p class="pt-3">진행기간 *</p>
						<div class="col-lg-6 py-2">
						<input type="text" placeholder="일" class="form-control">
						</div>
						<div class="btn-grounp">
							<a class="btn btn-primary mt-2 float-right"
								href="portfolio_register4.do">다음</a> <a class="mt-2 float-left"
								href="portfolio_register2.do"><U>이전<U></a>
						</div>
					</fieldset>
				</form>
				</div>
			</div>
		</div>
	<!-- contact us end -->




	<script type="text/javascript">
		$(function() {
			$('#datetimepicker1').datetimepicker({
				format : 'L'
			});
			$('#datetimepicker2').datetimepicker({
				format : 'L',
				useCurrent : false
			});
			$("#datetimepicker1").on("change.datetimepicker", function(e) {
				$('#datetimepicker2').datetimepicker('minDate', e.date);
			});
			$("#datetimepicker2").on("change.datetimepicker", function(e) {
				$('#datetimepicker1').datetimepicker('maxDate', e.date);
			});
		});
	</script>

	<!-- JAVASCRIPTS -->
	<%@ include file="../../include/style_js.jsp"%>

</body>
</html>
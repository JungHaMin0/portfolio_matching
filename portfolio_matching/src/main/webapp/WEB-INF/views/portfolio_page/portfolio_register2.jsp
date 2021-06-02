<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<!DOCTYPE html>
<html>
<body class="bg-gray"> 
	<div class="col-md-12">
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
					<p class="pt-3">2.포트폴리오 상세 ✔</p>
					<p class="pt-3">3.포트폴리오 정보 등록</p>
					<p class="pt-3">4.검토 및 내용 수정</p>
				</div>
			</div>

			<div class="ad-listing-list col-md-8 bg-white">
				<h3 style="margin-top: 20px">포트폴리오 상세</h3>
				<hr>
				<form action="#">
					<fieldset class="p-2">
						<p class="pt-3">포트폴리오 관련자료 *</p>
						<div>
							<input type="file" multiple />
						</div>
						<br>
						<div>
							<img id="foo" style="width: 100px; height: 100px;" />
						</div>
						<br>


						<p class="pt-3">상세 내용 작성 *</p>
						<textarea name="message" id="" placeholder="<포트폴리오 상세 설명>"
							class="border w-100 p-3 mt-3 mt-lg-4"></textarea>
						<div class="btn-grounp">
							<a class="btn btn-primary mt-2 float-right"
								href="portfolio_register3.do">다음</a> <a class="mt-2 float-left"
								href="portfolio_register1.do"><U>이전<U></a>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

	
	<!-- contact us end -->


	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#foo').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#file").change(function() {
			readURL(this);
		});
	</script>





	<!-- JAVASCRIPTS -->
	<%@ include file="../../include/style_js.jsp"%>

</body>
</html>
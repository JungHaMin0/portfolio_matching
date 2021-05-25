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
					<p class="pt-3">2.포트폴리오 상세</p>
					<p class="pt-3">3.포트폴리오 정보 등록</p>
					<p class="pt-3">4.검토 및 내용 수정 ✔</p>
				</div>
			</div>
			<div class="ad-listing-list col-md-8 bg-white">
				<h3 style="margin-top: 20px">검토 및 내용 수정</h3>
				<hr>
				<form action="#">
					<fieldset class="p-2">
						<div class="form-group row">
							<label for="colFormLabelSm"
								class="col-sm-2 col-form-label col-form-label-sm">제목</label>
							<div class="col-sm-10">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="제목확인">
							</div>
						</div>
						
						<div class="form-group row">
							<label for="colFormLabelSm"
								class="col-sm-2 col-form-label col-form-label-sm">설명</label>
							<div class="col-sm-10">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="어쩌구 저쩌구">
							</div>
						</div>
						
						<div class="form-group row">
							<label for="colFormLabelSm"
								class="col-sm-2 col-form-label col-form-label-sm">금액</label>
							<div class="col-sm-10">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="100,000">
							</div>
						</div>
						
						<div class="form-group row">
							<label for="colFormLabelSm"
								class="col-sm-2 col-form-label col-form-label-sm">예상작업기간</label>
							<div class="col-sm-10">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="30일">
							</div>
						</div>
						
						<!-- <div class="form-group row">
							<label for="colFormLabelSm"
								class="col-sm-2 col-form-label col-form-label-sm">시작일 ~<br>마감일</label>
							<div class="col-sm-5">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="2021/05/10">
							</div>
							<div class="col-sm-5">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="2021/06/10">
							</div>
						</div> -->
						
						<div class="form-group row">
							<label for="colFormLabelSm"
								class="col-sm-2 col-form-label col-form-label-sm">카테고리</label>
							<div class="col-sm-5">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="웹·앱개발">
							</div>
							<div class="col-sm-5">
								<input type="email" class="form-control form-control-sm"
									id="colFormLabelSm" placeholder="웹">
							</div>
						</div>
						






			<div class="btn-grounp">
							<a class="btn btn-primary mt-2 float-right"
								href="index.do"  onClick="alert('등록이 완료되었습니다!')">등록</a> <a class="mt-2 float-left"
								href="portfolio_register3.do"><U>이전<U></a>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<!-- contact us end -->



	<!-- JAVASCRIPTS -->
	<%@ include file="../../include/style_js.jsp"%>

</body>
</html>
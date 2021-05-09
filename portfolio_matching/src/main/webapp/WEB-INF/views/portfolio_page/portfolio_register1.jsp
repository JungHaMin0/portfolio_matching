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
						<h5>포트폴리오 등록</h5><hr>
						<!-- <h1 class="pt-3">Hello, what's on your mind?</h1> -->
						<p class="pt-3">1.기본정보 ✔</p>
						<p class="pt-3">2.포트폴리오 상세</p>
						<p class="pt-3">3.포트폴리오 정보 등록</p>
						<p class="pt-3">4.검토 및 내용 수정</p>
					</div>
				</div>
				<div class="ad-listing-list col-md-8 bg-white">
					<h3 style="margin-top: 20px">기본정보</h3>
					<hr>
					<form action="#">
						<fieldset class="p-2">
							<div class="form-group">
								<div class="row">
									<div class="col-lg-12 py-2">
										<p class="pt-3">포트폴리오 제목 *</p>
										<input type="text" placeholder="title" class="form-control">
										<!-- required -->
									</div>
									<!--  <div class="col-lg-6 pt-2">
                                        <input type="email" placeholder="Email *" class="form-control" required>
                                    </div> -->
								</div>
							</div>
							<p class="pt-3">포트폴리오 카테고리 *</p>
							<select name="" id="" class="form-control w-100">
								<option value="1">원하시는 카테고리를 고르세요.</option>
								<option value="1">웹·앱개발</option>
								<option value="1">디자인</option>
								<option value="1">영상·편집</option>
								<option value="1">마케팅</option>
							</select>


							<p class="pt-3">포트폴리오 상세 카테고리 *</p>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox1" value="option1"> <label
									class="form-check-label" for="inlineCheckbox1">웹</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox2" value="option2"> <label
									class="form-check-label" for="inlineCheckbox2">애플리케이션</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox2" value="option2"> <label
									class="form-check-label" for="inlineCheckbox2">일반소프트웨어</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox3" value="option3" disabled> <label
									class="form-check-label" for="inlineCheckbox3">퍼블리싱</label>
							</div>
							<div class="btn-grounp">
								<a class="btn btn-primary mt-2 float-right"
									href="portfolio_register2.do">다음</a>
								<!-- <button type="submit" class="btn btn-primary mt-2 float-right">다음</button> -->
							</div>

							<!-- <textarea name="message" id="" placeholder="Message *"
								class="border w-100 p-3 mt-3 mt-lg-4"></textarea>
							 -->
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
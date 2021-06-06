<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>



<body>
<%@ include file="../../include/header.jsp"%>
	<!-- contact us start-->
	<div class="container" style="margin-top: 5px">
		<div class="row">
			<div class="col-md-4 bg-gray">
				<div class="contact-us-content p-4">
					<h5>포트폴리오 등록</h5>
					<hr>
					<!-- <h1 class="pt-3">Hello, what's on your mind?</h1> -->
					<p class="pt-3">1.기본정보 ✔</p>
					<p class="pt-3">2.포트폴리오 상세</p>
					<p class="pt-3">3.포트폴리오 정보 등록</p>
				</div>
			</div>
			<div class="ad-listing-list col-md-8 bg-white">
				<h3 style="margin-top: 20px">기본정보</h3>
				<hr>
				<form id="writeForm" name="writeForm" method="post"
					enctype="multipart/form-data" onSubmit="return false;">

					<fieldset>
						<div class="form-group">
							<div class="row">
								<div class="col-lg-12 py-2">
									<p class="pt-3">포트폴리오 제목 *</p>
									<input type="text" placeholder="title" class="form-control"
										name="portfolio_title" id="portfolio_title">
									<!-- required -->
								</div>

								<!-- 	<p class="pt-3">포트폴리오 카테고리 *</p>
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

							<br> <br> <br> -->
								<div class="col-lg-12 py-2">
									<p class="pt-3">포트폴리오 관련 자료*</p>
									<input type="file" id="file" name="file" accept="image/*"
										onchange="setThumbnail(event);" />
									<div id="image_container"></div>
								</div>


								<br>
								<div class="col-lg-12 py-2">
									<p class="pt-3">상세 내용 작성 *</p>
									<textarea name="portfolio_content" id="portfolio_content"
										placeholder="<포트폴리오 상세 설명>"
										class="border w-100 p-3 mt-3 mt-lg-4"></textarea>

								</div>


								<br> <br> <br>
								<div class="col-lg-12 py-2">

									<h3 style="margin-top: 20px">포트폴리오 정보등록</h3>
									<hr>
									<p class="pt-3">가격 *</p>
									<div class="input-group">
										<input id="portfolio_price" name="portfolio_price" type="text"
											class="form-control" aria-required="true"
											aria-invalid="false">
									</div>
								</div>
								<div class="col-lg-12 py-2">
									<p class="pt-3">예상작업기간 *</p>
									<div class="col-lg-6 py-2">
										<input id="portfolio_term" name="portfolio_term" type="text"
											placeholder="일" class="form-control">
									</div>
								</div>

								<br> <br> <br>
								<div class="col-lg-12 py-2">
									<div class="btn-grounp">
										<input type="button" class="btn btn-primary mt-2 float-right"
											value="등록" onClick="fn_register()">
									</div>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>





	<!-------------------------------- 파일 첨부 스크립트 ---------------------------------->
	<script>
		function setThumbnail(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				img.setAttribute("width", 200);
				document.querySelector("div#image_container").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
		}
	</script>


	<!-------------------------------- 파일 첨부 스크립트END ---------------------------------->

	<!-------------------------------------기능 Script----------------------------------->

	<script type="text/javascript">
		//글쓰기
		function fn_register() {
			var form = document.getElementById("writeForm");
			form.action = "<c:url value='/port_register.do'/>";
			form.submit();
		}
	</script>
	<!-------------------------------------기능 Script END----------------------------------->





	<!-- JAVASCRIPTS -->
	<%@ include file="../../include/footer.jsp"%>
	<%@ include file="../../include/style_js.jsp"%>

</body>
</html>
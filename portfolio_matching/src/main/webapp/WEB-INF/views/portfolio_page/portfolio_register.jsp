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
          <p class="pt-3">1. 포트폴리오 기본 정보</p>
          <p class="pt-3">2. 포트폴리오 판매 정보</p>
        </div>
      </div>
      <div class="ad-listing-list col-md-8 bg-white">
        <h3 style="margin-top: 20px">포트폴리오 기본 정보</h3>
        <hr>
        <form id="writeForm" name="writeForm" method="post" enctype="multipart/form-data" onSubmit="return false;">

          <fieldset>
            <div class="form-group">
              <div class="row">
                <div class="col-lg-12 py-2">
                  <p class="pt-3">포트폴리오 제목 *</p>
                  <input type="text" placeholder="제목을 입력하세요." class="form-control" name="portfolio_title" id="portfolio_title">
                  <!-- required -->
                </div>

                <div class="col-lg-6 py-2">
                  <p class="pt-3">포트폴리오 카테고리 *</p>
                  <select name="portfolio_bCat" id="portfolio_bCat" class="form-control w-100">
                    <option value="디자인">디자인</option>
                    <option value="IT, 프로그래밍">IT, 프로그래밍</option>
                    <option value="영상, 사진">영상, 사진</option>
                    <option value="마케팅">마케팅</option>
                    <option value="취업">취업</option>
                    <option value="문서, 글쓰기">문서, 글쓰기</option>
                    <option value="주문제작">주문제작</option>
                    <option value="기타">기타</option>
                  </select>
                </div>

                <div class="col-lg-6 py-2">
                  <p class="pt-3">포트폴리오 상세 카테고리 *</p>
                  <select name="portfolio_sCat" id="portfolio_sCat" class="form-control w-100">
                    <option value="로고, 브랜딩">로고, 브랜딩</option>
                    <option value="상세, 이벤트 페이지">상세, 이벤트 페이지</option>
                    <option value="인쇄, 홍보물">인쇄, 홍보물</option>
                    <option value="제품, 패키지">제품, 패키지</option>
                  </select>
                </div>

                <br> <br> <br>
                <div class="col-lg-12 py-2">
                  <p class="pt-3">포트폴리오 썸네일*</p>
                  <input type="file" id="file" name="file" accept="image/*" onchange="setThumbnail(event);" />
                  <div id="image_container"></div>
                </div>

                <br>
                <div class="col-lg-12 py-2">
                  <p class="pt-3">포트폴리오 상세 내용 작성 *</p>
                  <textarea name="portfolio_content" id="portfolio_content" placeholder="상세 내용을 입력하세요." class="border w-100 p-3"></textarea>
                </div>
                <br> <br> <br>
                <div class="col-lg-12 py-2">
                  <h3 style="margin-top: 20px">포트폴리오 판매 정보</h3>
                  <hr>
                </div>

                <div class="col-lg-6 py-2">
                  <p class="pt-3">가격 *</p>
                  <div class="input-group">
                    <input id="portfolio_price" name="portfolio_price" type="number" class="form-control" aria-required="true" aria-invalid="false" placeholder="원">
                  </div>
                </div>

                <div class="col-lg-6 py-2">
                  <p class="pt-3">예상작업기간 *</p>
                  <input id="portfolio_term" name="portfolio_term" type="number" placeholder="일" class="form-control">
                </div>

                <div class="col-lg-12 py-2">
                  <p class="pt-3">포트폴리오 첨부 파일*</p>
                  <input type="file" name="uploadFile">
                </div>

                <br> <br> <br>
                <div class="col-lg-12 py-2">
                  <div class="btn-grounp">
                    <input type="button" class="btn btn-primary mt-2 float-right" value="등록" onClick="fn_register()">
                  </div>
                </div>
              </div>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
  </div>

  <!-- JAVASCRIPTS -->
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>

  <!-------------------------------- 파일 첨부 스크립트 ---------------------------------->
  <script>
			function setThumbnail(event) {
				var reader = new FileReader();
				reader.onload = function(event) {
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("width", 200);
					document.querySelector("div#image_container").appendChild(
							img);
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

  <script type="text/javascript">
			$(function() {
				$('#portfolio_bCat')
						.change(
								function() {
									var bCat = this.value;
									if (bCat == "디자인") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='로고, 브랜딩'>로고, 브랜딩</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='상세, 이벤트 페이지'>상세, 이벤트 페이지</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='인쇄, 홍보물'>인쇄, 홍보물</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='제품, 패키지'>제품, 패키지</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>로고, 브랜딩</span><ul class='list'><li data-value='로고, 브랜딩' class='option selected focus'>로고, 브랜딩</li><li data-value='상세, 이벤트 페이지' class='option'>상세, 이벤트 페이지</li><li data-value='인쇄, 홍보물' class='option'>인쇄, 홍보물</li><li data-value='제품, 패키지' class='option'>제품, 패키지</li></ul>");
									} else if (bCat == "IT, 프로그래밍") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='웹사이트 개발'>웹사이트 개발</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='앱 프로그래밍'>앱 프로그래밍</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='모바일 앱'>모바일 앱</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='프로그램 개발'>프로그램 개발</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>웹사이트 개발</span><ul class='list'><li data-value='웹사이트 개발' class='option selected focus'>웹사이트 개발</li><li data-value='앱 프로그래밍' class='option'>앱 프로그래밍</li><li data-value='모바일 앱' class='option'>모바일 앱</li><li data-value='프로그램 개발' class='option'>프로그램 개발</li></ul>");
									} else if (bCat == "영상, 사진") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='영상 촬영, 편집'>영상 촬영, 편집</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='유튜브 제작'>유튜브 제작</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='애니메이션'>애니메이션</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='사진 촬영'>사진 촬영</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>영상 촬영, 편집</span><ul class='list'><li data-value='영상 촬영, 편집' class='option selected focus'>영상 촬영, 편집</li><li data-value='유튜브 제작' class='option'>유튜브 제작</li><li data-value='애니메이션' class='option'>애니메이션</li><li data-value='사진 촬영' class='option'>사진 촬영</li></ul>");
									} else if (bCat == "마케팅") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='종합 광고 대행'>종합 광고 대행</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='블로그, 카페'>블로그, 카페</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='SNS 마케팅'>SNS 마케팅</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='쇼핑몰, 스토어'>쇼핑몰, 스토어</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>종합 광고 대행</span><ul class='list'><li data-value='종합 광고 대행' class='option selected focus'>종합 광고 대행</li><li data-value='블로그, 카페' class='option'>블로그, 카페</li><li data-value='SNS 마케팅' class='option'>SNS 마케팅</li><li data-value='쇼핑몰, 스토어' class='option'>쇼핑몰, 스토어</li></ul>");
									} else if (bCat == "취업") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='직무 멘토링'>직무 멘토링</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='자소서, 이력서(국내 기업)'>자소서, 이력서(국내 기업)</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='자소서, 이력서(외국 기업)'>자소서, 이력서(외국 기업)</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='자소서(입시, 기타)'>자소서(입시, 기타)</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>직무 멘토링</span><ul class='list'><li data-value='직무 멘토링' class='option selected focus'>직무 멘토링</li><li data-value='자소서, 이력서(국내 기업)' class='option'>자소서, 이력서(국내 기업)</li><li data-value='자소서, 이력서(외국 기업)' class='option'>자소서, 이력서(외국 기업)</li><li data-value='자소서(입시, 기타)' class='option'>자소서(입시, 기타)</li></ul>");
									} else if (bCat == "문서, 글쓰기") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='기업명,네이밍'>기업명,네이밍</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='제품 카피라이팅'>제품 카피라이팅</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='광고 카피라이팅'>광고 카피라이팅</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='마케팅 글작성'>마케팅 글작성</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>기업명,네이밍</span><ul class='list'><li data-value='기업명,네이밍' class='option selected focus'>기업명,네이밍</li><li data-value='제품 카피라이팅' class='option'>제품 카피라이팅</li><li data-value='광고 카피라이팅' class='option'>광고 카피라이팅</li><li data-value='마케팅 글작성' class='option'>마케팅 글작성</li></ul>");
									} else if (bCat == "주문제작") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='인쇄'>인쇄</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='간판'>간판</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='3D 프린팅'>3D 프린팅</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='기념품 제작'>기념품 제작</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>인쇄</span><ul class='list'><li data-value='인쇄' class='option selected focus'>인쇄</li><li data-value='간판' class='option'>간판</li><li data-value='3D 프린팅' class='option'>3D 프린팅</li><li data-value='기념품 제작' class='option'>기념품 제작</li></ul>");
									} else if (bCat == "기타") {
										$('#portfolio_sCat option').remove();
										$('#portfolio_sCat')
												.append(
														"<option value='통역'>통역</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='비즈니스 컨설팅'>비즈니스 컨설팅</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='레슨, 실무 교육'>레슨, 실무 교육</option>");
										$('#portfolio_sCat')
												.append(
														"<option value='운세, 상담'>운세, 상담</option>");
										$('#portfolio_sCat')
												.next()
												.html(
														"<span class='current'>통역</span><ul class='list'><li data-value='통역' class='option selected focus'>통역</li><li data-value='비즈니스 컨설팅' class='option'>비즈니스 컨설팅</li><li data-value='레슨, 실무 교육' class='option'>레슨, 실무 교육</li><li data-value='운세, 상담' class='option'>운세, 상담</li></ul>");
									}
								})
			})
		</script>
</body>
</html>
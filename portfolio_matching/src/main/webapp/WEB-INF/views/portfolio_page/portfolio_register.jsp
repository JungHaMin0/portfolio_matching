<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
      <div class="col-md-4 bg-gray" id="asdqwe">
        <div class="contact-us-content p-4">
          <h5>포트폴리오 등록</h5>
          <hr>
          <p class="pt-3" style="height: 680px;">1. 포트폴리오 기본 정보</p>
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
                  <select name="portfolio_category_main" id="portfolio_category_main" class="form-control w-100" onchange="catChange(this)">
                    <c:forEach items="${categoryMainList}" var="categoryMainList">
                      <option value="${categoryMainList.id}">${categoryMainList.name}</option>
                    </c:forEach>
                  </select>
                </div>

                <div class="col-lg-6 py-2">
                  <p class="pt-3">포트폴리오 상세 카테고리 *</p>
                  <select name="portfolio_category_sub" id="portfolio_category_sub" class="form-control w-100">
                    <c:forEach items="${categorySubListById}" var="categorySubListById">
                      <option value="${categorySubListById.id}" class="${categorySubListById.main_id}">${categorySubListById.name}</option>
                    </c:forEach>
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

                <br> <br> <br>
                <div class="col-lg-12 py-2">
                  <br> <br>
                  <hr>
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

  <script type="text/javascript">
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

			//글쓰기
			function fn_register() {
				var form = document.getElementById("writeForm");
				form.action = "<c:url value='/port_register.do'/>";
				form.submit();
			}

			function catChange(o) {
				var mainId = o.value;

				$.ajax({
					url : "findCategorySub.do",
					data : {
						"param" : mainId
					},
					success : function(res) {
						var subList = eval(res.result);
						var cnt = res.cnt;

						var str = "";
						var niceStr = ""
						for (var i = 0; i < cnt; i++) {
							var list = subList[i];
							str += '<option value="' + list.id + '">'
									+ list.name + '</option>';
						}

						$("#portfolio_category_sub").html(str);
						$("#portfolio_category_sub").niceSelect('update');
					}
				});
			}
		</script>

</body>
</html>
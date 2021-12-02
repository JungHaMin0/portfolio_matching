<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/style_css.jsp"%>

<style>
.category-list li:nth-of-type(1n+5) {
	display: none;
}
</style>
</head>
<!-------------------------       Hero area           ------------------------->
<body>
  <%@ include file="../../include/header.jsp"%>
  <section class="hero-area bg-1 text-center">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- Header Contetnt -->
          <div class="content-block">
            <h1>Buy &amp; Sell Near You</h1>
            <p>
              Join the millions who buy and sell from each other <br> everyday in local communities around the world
            </p>
            <div class="short-popular-category-list text-center">
              <h2>Popular Category</h2>
              <ul class="list-inline">
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-bed"></i> Hotel</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-grav"></i> Fitness</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-car"></i> Cars</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-cutlery"></i> Restaurants</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-coffee"></i> Cafe</a></li>
              </ul>
            </div>

          </div>
          <!-- Advance Search -->
          <div class="advance-search text-center">
            <div class="form-row">
              <div class="form-group col-md-3">
                <select id="portfolio_category_main" class="w-100 form-control my-2 my-lg-0" style="display: none;" onchange="catChange(this)">
                  <c:forEach items="${categoryMainList}" var="categoryMainList">
                    <c:if test="${categoryMainList.id eq scri.main_id}">
                      <option value="${categoryMainList.id}" selected>${categoryMainList.name}</option>
                    </c:if>
                    <c:if test="${categoryMainList.id ne scri.main_id}">
                      <option value="${categoryMainList.id}">${categoryMainList.name}</option>
                    </c:if>
                  </c:forEach>
                </select>
              </div>
              <div class="form-group col-md-3">
                <select id="portfolio_category_sub" class="w-100 form-control my-2 my-lg-0" style="display: none;">
                  <option value="0" class="0">전체</option>
                  <c:forEach items="${categorySubListById}" var="categorySubListById">
                    <c:if test="${categorySubListById.id eq scri.id}">
                      <option value="${categorySubListById.id}" class="${categorySubListById.main_id}" selected>${categorySubListById.name}</option>
                    </c:if>
                    <c:if test="${categorySubListById.id ne scri.id}">
                      <option value="${categorySubListById.id}" class="${categorySubListById.main_id}">${categorySubListById.name}</option>
                    </c:if>
                  </c:forEach>
                </select>
              </div>
              <div class="form-group col-md-4">
                <input type="text" id="keywordInput" name="keyword" value="${scri.keyword}" class="form-control my-2 my-lg-0" id="inputtext4" placeholder="검색할 키워드를 입력하세요.">
              </div>
              <div class="form-group col-md-2">
                <button type="button" id="searchBtn" class="btn btn-primary">검색하기</button>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>

  <!-------------------------       client slide         ------------------------->


  <!-------------------------       포트폴리오 목록                        ------------------------->

  <section class="popular-deals section bg-gray">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-title">
            <h2>실시간 트랜드</h2>
            <p>실시간으로 구매자들로부터 증명된, 우수한 판매량을 달성한 서비스를 알려드려요.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- offer 01 -->
        <div class="col-lg-12">
          <div class="trending-ads-slide">
            <!-- product card -->
            <c:forEach items="${trendPortfolio}" var="list">
              <div class="product-item m-3">
                <div class="card">
                  <div class="thumb-content text-center">
                    <a href="PortContent.do?portfolio_id=${list.portfolio_id}" tabindex="-1"> <img class="card-img-top img-fluid" src="data:image/jpeg;base64,<c:out value='${list.portfolio_Img}'/>" style="width: auto; height: 225px; display: block; margin: auto;">
                    </a>
                  </div>
                  <div class="card-body">
                    <h4 class="card-title"><a href="PortContent.do?portfolio_id=${list.portfolio_id}" tabindex="-1">${list.portfolio_title}</a></h4>
                    <ul class="list product-meta">
                      <li class="list-item"><a><i class="fa fa-user-o"></i> ${list.portfolio_userId}</a></li>
                      <li class="list-item"><a href="portlist.do?main_id=${mainList.id}&id=0" tabindex="-1"><i class="fa fa-folder-open-o"></i> ${list.portfolio_category_main.name} </a> > <a href="portlist.do?main_id=${list.portfolio_category_main.id}&id=${list.portfolio_category_sub.id}" tabindex="-1">${list.portfolio_category_sub.name}</a></li>
                      <li class="list-item"><a tabindex="-1"><i class="fa fa-calendar"></i> <fmt:formatDate pattern="yy-mm-dd" value="${list.portfolio_regDate}" /></a></li>
                    </ul>
                    <p class="card-text">
                      <c:choose>
                        <c:when test="${fn:length(list.portfolio_content) gt 30}">
                          ${fn:substring(list.portfolio_content, 0, 27)}...
                            </c:when>
                        <c:otherwise>
                          ${list.portfolio_content}
                        </c:otherwise>
                      </c:choose>
                    </p>
                    <div class="product-ratings">
                      <ul class="list-inline">
                        <c:forEach begin="1" end="5" varStatus="stat">
                          <c:choose>
                            <c:when test="${stat.current le list.portfolio_rating}">
                              <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                            </c:when>
                            <c:otherwise>
                              <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            </c:otherwise>
                          </c:choose>
                        </c:forEach>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </c:forEach>












          </div>
        </div>
      </div>



    </div>
  </section>

  <!-------------------------        카테고리 목록                  ------------------------->

  <section class=" section">
    <!-- Container Start -->
    <div class="container">
      <div class="row">
        <div class="col-12">
          <!-- Section title -->
          <div class="section-title">
            <h2>카테고리 미리보기</h2>
            <p>더 많은 카테고리가 궁금하시면 더 보기를 눌러보세요!</p>
          </div>
          <div class="row">
            <!-- Category list -->
            <c:forEach items="${categoryMainList}" var="mainList">
              <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                <div class="category-block">
                  <div class="header-category text-center">
                    <h4>${mainList.name}</h4>
                  </div>
                  <ul class="category-list">
                    <c:forEach items="${categorySubList}" var="subList" varStatus="cnt">
                      <c:if test="${mainList.id == subList.main_id}">
                        <li><a href="portlist.do?main_id=${mainList.id}&id=${subList.id}">${subList.name}</a></li>
                      </c:if>
                    </c:forEach>
                  </ul>
                  <ul class="category-list text-center">
                    <li><a href="portlist.do?main_id=${mainList.id}&id=0">더 보기</a></li>
                  </ul>
                </div>
              </div>
            </c:forEach>
            <!-- /Category List -->


          </div>
        </div>
      </div>
    </div>
    <!-- Container End -->
  </section>


  <!-------------------------        Call to Action        ------------------------->

  <section class="call-to-action overly bg-3 section-sm">
    <!-- Container Start -->
    <div class="container">
      <div class="row justify-content-md-center text-center">
        <div class="col-md-8">
          <div class="content-holder">
            <h2>포매에서 빠르고 안전한 아웃소싱을 경험해 보세요.</h2>
            <ul class="list-inline mt-30">
              <li class="list-inline-item"><a class="btn btn-main" href="#">무료로 포트폴리오 등록하기</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- Container End -->
  </section>
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
  <script>
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

						var str = "<option value='0' class='0'>전체</option>";
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

			$(function() {
				$('#searchBtn').click(
						function() {
							var selectMain = $(
									"#portfolio_category_main option:selected")
									.val();
							var selectSub = $(
									"#portfolio_category_sub option:selected")
									.val();
							self.location = "portlist.do?page=1&perPageNum=9"
									+ "&main_id="
									+ selectMain
									+ "&id="
									+ selectSub
									+ "&keyword="
									+ encodeURIComponent($('#keywordInput')
											.val());
						});
			});
		</script>


</body>
</html>
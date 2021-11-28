<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">
  <%@ include file="../../include/header.jsp"%>
  <section class="page-search">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- Advance Search -->
          <div class="advance-search">
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
  <!--===================================
=            Store Section            =
====================================-->
  <section class="section bg-gray">
    <!-- Container Start -->
    <div class="container">
      <div class="row">
        <!-- Left sidebar -->
        <div class="col-md-8">
          <div class="product-details">
            <h1 class="product-title">${portfolio.portfolio_title}</h1>
            <div class="product-meta">
              <ul class="list-inline">
                <li class="list-inline-item"><i class="fa fa-user-o"></i> <a>${portfolio.portfolio_userId}</a></li>
                <li class="list-inline-item"><i class="fa fa-folder-open-o"></i> <a href="portlist.do?main_id=${portfolio.portfolio_category_main.id}&id=0">${portfolio.portfolio_category_main.name}</a> ><a href="portlist.do?main_id=${portfolio.portfolio_category_main.id}&id=${portfolio.portfolio_category_sub.id}">${portfolio.portfolio_category_sub.name}</a></li>
                <li class="list-inline-item"><i class="fa fa-calendar"></i> <a><fmt:formatDate pattern="yyyy년 mm월 dd일" value="${portfolio.portfolio_regDate}" /></a></li>
              </ul>
            </div>

            <!-- product slider -->
            <div class="product-slider slick-initialized slick-slider slick-dotted">
              <div class="slick-list draggable">
                <img class="d-block img-fluid w-100" src="data:image/jpeg;base64,<c:out value='${portfolio.portfolio_Img }'/>" alt="img">
              </div>
            </div>

            <!-- product slider -->
            <div class="content mt-1 pt-1">
              <ul class="nav nav-pills  justify-content-center" id="pills-tab" role="tablist">
                <li class="nav-item"><a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">서비스 설명</a></li>
                <li class="nav-item"><a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">서비스 정보</a></li>
                <li class="nav-item"><a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">서비스 리뷰</a></li>
              </ul>
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                  <h3 class="tab-title">서비스 설명</h3>
                  <p>${portfolio.portfolio_content}</p>
                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                  <h3 class="tab-title">서비스 정보</h3>
                  <table class="table table-bordered product-table">
                    <tbody>
                      <tr>
                        <td>서비스 가격</td>
                        <td>${portfolio.portfolio_price}원</td>
                      </tr>
                      <tr>
                        <td>서비스 작업일</td>
                        <td>${portfolio.portfolio_term}일</td>
                      </tr>
                      <tr>
                        <td>서비스 평점</td>
                        <td>${portfolio.portfolio_rating}점</td>
                      </tr>
                      <tr>
                        <td>서비스 등록일</td>
                        <td><fmt:formatDate pattern="yyyy년 mm월 dd일" value="${portfolio.portfolio_regDate}" /></td>
                      </tr>
                      <tr>
                        <td>카테고리(대)</td>
                        <td>${portfolio.portfolio_category_main.name}</td>
                      </tr>
                      <tr>
                        <td>카테고리(소)</td>
                        <td>${portfolio.portfolio_category_sub.name}</td>
                      </tr>
                      <tr>
                        <td>판매자</td>
                        <td>${seller.user_id}</td>
                      </tr>
                      <tr>
                        <td>판매자 연락처</td>
                        <td>${seller.user_phone}</td>
                      </tr>
                      <tr>
                        <td>판매자 이메일</td>
                        <td>${seller.user_email}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                  <h3 class="tab-title">서비스 리뷰</h3>
                  <div class="product-review">
                    <div class="media">
                      <!-- Avater -->
                      <div class="media-body">
                        <!-- Ratings -->
                        <div class="ratings">
                          <ul class="list-inline">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                          </ul>
                        </div>
                        <div class="name">
                          <h5>Jessica Brown</h5>
                        </div>
                        <div class="date">
                          <p>Mar 20, 2018</p>
                        </div>
                        <div class="review-comment">
                          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremqe laudant tota rem ape riamipsa eaque.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="sidebar">
            <div class="widget price text-center">
              <p>${portfolio.portfolio_price}원</p>
              <c:choose>
                <c:when test="${empty member}">
                  <a href="" class="btn btn-transparent-white mt-4" onclick="fn_alert()">구매하기</a>
                  <br>
                </c:when>
                <c:otherwise>
                  <a href="detailport.do?portfolio_id=${portfolio.portfolio_id}" class="btn btn-transparent-white mt-4">구매하기</a>
                  <br>
                </c:otherwise>
              </c:choose>
            </div>
            <!-- User Profile widget -->
            <div class="widget user text-center">
              <h4><a>${seller.user_id}</a></h4>
              <p class="member-time">활동 시작일 Jun 27, 2017</p>
              <ul class="list-inline mt-20">
                <li class="list-item"><c:choose>
                    <c:when test="${empty member}">
                      <a href="" class="btn btn-contact d-inline-block  btn-primary px-lg-5 my-1 px-md-3" onclick="fn_alert()">문의하기</a>
                      <br>
                    </c:when>
                    <c:otherwise>
                      <a href="inquiryWriteForm.do?portfolio_title=${portfolio.portfolio_title}&portfolio_id=${portfolio.portfolio_id}" class="btn btn-contact d-inline-block  btn-primary px-lg-5 my-1 px-md-3" onclick="window.open(this.href, '', 'width=800, height=800'); return false">문의하기</a>
                      <br>
                    </c:otherwise>
                  </c:choose></li>
              </ul>
            </div>
            <!-- Rate Widget -->
            <div class="widget rate">
              <!-- Heading -->
              <h5 class="text-center">서비스 평점</h5>
              <p class="widget-header text-center">
                실제 포매를 통해 구매한 <br> 이용자들의 평점입니다.
              </p>
              <!-- Rate -->
              <div class="product-ratings text-center">
                <ul class="list-inline">
                  <c:forEach begin="1" end="5" varStatus="stat">
                    <c:choose>
                      <c:when test="${stat.current le portfolio.portfolio_rating}">
                        <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                      </c:when>
                      <c:otherwise>
                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                      </c:otherwise>
                    </c:choose>
                  </c:forEach>
                </ul>
              </div>
            </div>
            <!-- Safety tips widget -->
            <div class="widget disclaimer">
              <h5 class="widget-header text-center"><i class="fa fa-user"></i> 안심하세요 !</h5>
              <ul class="text-center">
                <li>서비스 제공이 완료된 이후,</li>
                <li>전문가에게 결제 대금이 전달됩니다.</li>
              </ul>
            </div>
            <!-- Coupon Widget -->
            <div class="widget coupon text-center">
              <!-- Coupon description -->
              <p>서비스가 마음에 드신다면 스크랩해보세요 !</p>
              <!-- Submii button -->
              <c:choose>
                <c:when test="${empty member}">
                  <a href="" class="btn btn-transparent-white" onclick="fn_alert()">스크랩</a>
                  <br>
                </c:when>
                <c:otherwise>
                  <a href="#" class="btn btn-transparent-white" onclick="scrap(${portfolio.portfolio_id}); return false;">스크랩</a>
                  <br>
                </c:otherwise>
              </c:choose>
            </div>

          </div>
        </div>

      </div>
    </div>
    <!-- Container End -->
  </section>


  <!-- JAVASCRIPTS -->
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>

  <script>
			function fn_list() {
				var form = document.getElementById("viewForm");
				form.action = "<c:url value='/portlist.do'/>";
				form.submit();
			}

			function fn_content(portfolio_id) {
				var form = document.getElementById("viewForm");
				var url = "<c:url value='/pmInterest.do'/>";
				url = url + "?portfolio_id=" + portfolio_id;

				form.action = url;
				form.submit();
			}

			function fn_alert() {
				alert('로그인 후 이용 가능합니다.');
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
			
			function scrap(portfolio_id) {
				$.ajax({
					url: "Scrap.do",
					data: {"portfolio_id" : portfolio_id},
					success: function(res) {
						if(res == 1) {
							alert("스크랩 하셨습니다. \n찜 목록은 마이페이지에서 확인 가능합니다.");
						} else if(res == 2) {
							alert("이미 스크랩 하셨습니다!")
						} else {
							alert("스크랩 진행 중 오류가 발생하였습니다. /n관리자에게 문의하세요.")
						}
					}
				});
			}
			
			$(function(){
		          $('#searchBtn').click(function() {
		        	  var selectMain = $("#portfolio_category_main option:selected").val();
		        	  var selectSub = $("#portfolio_category_sub option:selected").val();
		            self.location = "portlist.do?page=1&perPageNum=9" + "&main_id=" + selectMain + "&id=" + selectSub + "&keyword=" + encodeURIComponent($('#keywordInput').val());
		          });
		        });
		</script>

</body>
</html>
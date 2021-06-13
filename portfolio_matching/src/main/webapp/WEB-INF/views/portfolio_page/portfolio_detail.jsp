<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body>
  <%@ include file="../../include/header.jsp"%>
  <section class="page-search">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- Advance Search -->
          <div class="advance-search">
            <form>
              <div class="form-row">
                <div class="form-group col-md-4">
                  <input type="text" class="form-control my-2 my-lg-0" id="inputtext4" placeholder="What are you looking for">
                </div>
                <div class="form-group col-md-3">
                  <input type="text" class="form-control my-2 my-lg-0" id="inputCategory4" placeholder="Category">
                </div>
                <div class="form-group col-md-3">
                  <input type="text" class="form-control my-2 my-lg-0" id="inputLocation4" placeholder="Location">
                </div>
                <div class="form-group col-md-2">
                  <button type="submit" class="btn btn-primary">Search Now</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--===================================
=            Store Section            =
====================================-->
  <section class="section">
    <!-- Container Start -->
    <div class="container">
      <form id="viewForm" name="viewForm" method="post">
        <div class="row">
          <input type='hidden' id='portfolio_id' name='portfolio_id' value='${result.portfolio_id}' />
          <!-- Left sidebar -->
          <div class="col-md-8">
            <div class="product-details">
              <h1 class="product-title"><c:out value="${result.portfolio_title}" /></h1>
              <div class="product-meta">
                <ul class="list-inline">
                  <li class="list-inline-item"><i class="fa fa-user-o"></i> By | ${result.portfolio_userId}</a></li>
                  <li class="list-inline-item"><i class="fa fa-folder-open-o"></i>카테고리 | ${result.portfolio_sCat}</a></li>
                  <li class="list-inline-item"><i class="fa fa-calendar-o"></i> 기간 | <c:out value="${result.portfolio_term }일" /></a></li>
                </ul>
              </div>
              <!-- product slider -->
              <div class="product-slider">
                <div class="product-slider-item my-4" data-image="./resources/images/item_image1.PNG">
                  <c:if test="${result.portfolio_Img != null && result.portfolio_Img != ''}">
                    <img class="img-fluid w-100" src="data:image/jpeg;base64,<c:out value='${result.portfolio_Img }'/>" />
                  </c:if>
                </div>
              </div>

              <!-- 하단 탭 부분 -->
              <div class="content mt-5 pt-5">
                <ul class="nav nav-pills  justify-content-center" id="pills-tab" role="tablist">
                  <li class="nav-item"><a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">상세설명</a></li>
                  <li class="nav-item"><a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">가격정보</a></li>
                  <li class="nav-item"><a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">서비스 평가</a></li>
                </ul>


                <div class="tab-content" id="pills-tabContent">
                  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                    <h3 class="tab-title">포트폴리오 설명</h3>
                    <p>
                      <c:out value="${result.portfolio_content }" />
                    </p>
                  </div>
                  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                    <h3 class="tab-title">포트폴리오 정보</h3>
                    <table class="table table-bordered product-table">
                      <tbody>
                        <tr>
                          <td>가격</td>
                          <td><c:out value="${result.portfolio_price }" /></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>


                  <!--  리뷰(댓글)  -->
                  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                    <h3 class="tab-title">서비스 평가</h3>
                    <div class="product-review">
                      <div class="media">
                        <c:forEach items="${review}" var="review">
                          <div class="media-body">
                            <!-- Ratings -->
                            <div class="product-ratings">
                              <ul class="list-inline">
                                <c:forEach var="i" begin="0" end="${review.review_rating-1}">
                                  <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                </c:forEach>
                              </ul>
                            </div>
                            <div class="name">
                              <h5>${review.review_userId}</h5>
                            </div>
                            <div class="date">
                              <p>${review.regDate}</p>
                            </div>
                            <div class="review-comment">
                              <p>${review.review_content}</p>
                            </div>
                          </div>
                        </c:forEach>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class=" p-2">
              <a class="btn btn-main-sm" href="pmScarp.do?num=${result.portfolio_id}">스크랩</a> <i class="fa fa-share-alt"></i>
            </div>

            <div class="widget user text-center">
              <a href=""><c:out value="${result.portfolio_price }" /></a>
              <p>STANDARD(VAT포함가)</p>

              <ul class="list-inline mt-20">
                <li class="list-inline-item"><a href="detailport.do?portfolio_id=${result.portfolio_id}" class="btn btn-offer d-inline-block btn-primary ml-n1 my-1 px-lg-4 px-md-3">구매하기</a></li>
              </ul>
            </div>

            <!--  별점    -->
            <div class="widget rate text-center">
              <h5 class="widget-header text-center">총 평점 <br></h5> <i class="fa fa-star"></i> ${result.portfolio_rating}
            </div>

            <div class="widget coupon text-center">
              <p>로그인 후 문의하실 수 있습니다.</p>
              <a href="" class="btn btn-transparent-white">전문가에게 문의 남기기</a>
            </div>

            <a href='#' onClick='fn_list()'>목록</a>
          </div>
        </div>
      </form>
    </div>
  </section>



  <script>
			function fn_list() {
				var form = document.getElementById("viewForm");
				form.action = "<c:url value='/portlist.do'/>";
				form.submit();
			}
		</script>

  <script>
			function fn_content(portfolio_id) {
				var form = document.getElementById("viewForm");
				var url = "<c:url value='/pmInterest.do'/>";
				url = url + "?portfolio_id=" + portfolio_id;

				form.action = url;
				form.submit();
			}
		</script>


  <!-- JAVASCRIPTS -->
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>


</body>
</html>
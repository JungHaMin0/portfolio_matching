<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>


<!DOCTYPE html>
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
<section class="section bg-gray">
	<!-- Container Start -->
	<div class="container">
		<form id="viewForm" name="viewForm" method="post">
			<div class="row">
				<input type='hidden' id='portfolio_id' name='portfolio_id'
					value='${result.portfolio_id }' />
				<!-- Left sidebar -->
				<div class="col-md-8">
					<div class="product-details">
						<h1 class="product-title">
							<c:out value="${result.portfolio_title }" />
						</h1>
						<div class="product-meta">
							<ul class="list-inline">
								<li class="list-inline-item"><i class="fa fa-user-o"></i>
									By <a href=""></a></li>
								<li class="list-inline-item"><i class="fa fa-folder-open-o"></i>카테고리<a
									href="">WEB</a></li>
								<li class="list-inline-item"><i class="fa fa-calendar-o"></i>
									기간<a href=""><c:out value="${result.portfolio_term }" /></a></li>
							</ul>
						</div>

						<!-- product slider -->
						<div class="product-slider">
							<div class="product-slider-item my-4"
								data-image="./resources/images/item_image1.PNG">
								<c:if
									test="${result.portfolio_Img != null && result.portfolio_Img != ''}">
									<img class="img-fluid w-100"
										src="data:image/jpeg;base64,<c:out value='${result.portfolio_Img }'/>" />
								</c:if>
							</div>

							<div class="product-slider-item my-4"
								data-image="./resources/images/item_image1.PNG">
								<img class="d-block img-fluid w-100"
									src="./resources/images/item_image1.PNG" alt="Second slide">
							</div>
							<div class="product-slider-item my-4"
								data-image="./resources/images/item_image1.PNG">
								<img class="d-block img-fluid w-100"
									src="./resources/images/item_image1.PNG" alt="Third slide">
							</div>
							<div class="product-slider-item my-4"
								data-image="./resources/images/item_image1.PNG">
								<img class="d-block img-fluid w-100"
									src="./resources/images/item_image1.PNG" alt="Third slide">
							</div>
							<div class="product-slider-item my-4"
								data-image="./resources/images/item_image1.PNG">
								<img class="d-block img-fluid w-100"
									src="./resources/images/item_image1.PNG" alt="Third slide">
							</div>
						</div>


						<!-- 하단 탭 부분 -->
						<div class="content mt-5 pt-5">
							<ul class="nav nav-pills  justify-content-center" id="pills-tab"
								role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="pills-home-tab" data-toggle="pill" href="#pills-home"
									role="tab" aria-controls="pills-home" aria-selected="true">상세설명</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
									role="tab" aria-controls="pills-profile" aria-selected="false">가격정보</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									id="pills-contact-tab" data-toggle="pill" href="#pills-contact"
									role="tab" aria-controls="pills-contact" aria-selected="false">서비스
										평가</a></li>
							</ul>


							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade show active" id="pills-home"
									role="tabpanel" aria-labelledby="pills-home-tab">
									<h3 class="tab-title">포트폴리오 설명</h3>
									<p>
										<c:out value="${result.portfolio_content }" />
									</p>
								</div>
								<div class="tab-pane fade" id="pills-profile" role="tabpanel"
									aria-labelledby="pills-profile-tab">
									<h3 class="tab-title">Product Specifications</h3>
									<table class="table table-bordered product-table">
										<tbody>
											<tr>
												<td>가격</td>
												<td><c:out value="${result.portfolio_price }" /></td>
											</tr>
											<tr>
												<td>패키지 설명</td>
												<td>반응형 UI, 아이콘, 푸시알림 등등</td>
											</tr>
										</tbody>
									</table>
								</div>


								<!--  리뷰(댓글)  -->
								<div class="tab-pane fade" id="pills-contact" role="tabpanel"
									aria-labelledby="pills-contact-tab">
									<h3 class="tab-title">서비스 평가</h3>
									<div class="product-review">
										<div class="media">
											<!-- Avater -->
											<!-- <img src="images/user/user-thumb.jpg" alt="avater"> -->
											<div class="media-body">
												<!-- Ratings -->
												<div class="product-ratings">
													<ul class="list-inline">
														<li class="list-inline-item selected"><i
															class="fa fa-star"></i></li>
														<li class="list-inline-item selected"><i
															class="fa fa-star"></i></li>
														<li class="list-inline-item selected"><i
															class="fa fa-star"></i></li>
														<li class="list-inline-item selected"><i
															class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
													</ul>
												</div>
												<div class="name">
													<h5>쩡**</h5>
												</div>
												<div class="date">
													<p>2021.04.29</p>
												</div>
												<div class="review-comment">
													<p>빠른 응대와 친절한 설명 감사합니다.</p>
												</div>
											</div>
										</div>
										<div class="review-submission">
											<h3 class="tab-title">리뷰 작성</h3>
											<!-- Rate -->
											<div class="rate">
												<div class="starrr"></div>
											</div>
											<div class="review-submit">
												<form action="#" class="row">
													<div class="col-lg-6">
														<input type="text" name="name" id="name"
															class="form-control" placeholder="Name">
													</div>
													<div class="col-lg-6">
														<input type="email" name="email" id="email"
															class="form-control" placeholder="Email">
													</div>
													<div class="col-12">
														<textarea name="review" id="review" rows="10"
															class="form-control" placeholder="Message"></textarea>
													</div>
													<div class="col-12">
														<button type="submit" class="btn btn-main">등록</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>



				<div class="col-md-4">
					<div class=" p-2">
						<button type="button" class="btn btn-main-sm" href='#'>스크랩</button>
						<i class="fa fa-share-alt"></i>
					</div>

					<div class="widget disclaimer">
						<h5 class="widget-header">최적화된 웹을 만들어드리겠습니다.</h5>
						<ul class="list-inline mt-20">
							<li>✔ 설명</li>
							<li>✔ 설명</li>
							<li>✔ 설명</li>
							<li>✔ 설명</li>
							<li>✔ 설명</li>
							<li>✔ 설명</li>
						</ul>
					</div>


					<div class="widget user text-center">
						<a href=""><c:out value="${result.portfolio_price }" /></a>
						<p>STANDARD(VAT포함가)</p>

						<ul class="list-inline mt-20">
							<li class="list-inline-item"><a href="portfolio_pur.do"
								class="btn btn-offer d-inline-block btn-primary ml-n1 my-1 px-lg-4 px-md-3">구매하기</a></li>
						</ul>
					</div>

					<!--  별점    -->
					<div class="widget rate">
						<h5 class="widget-header text-center">
							총 평점 <br> 5.0
						</h5>
						<div class="starrr"></div>
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
function fn_list(){
	var form = document.getElementById("viewForm");
    form.action = "<c:url value='/category.do'/>";
    form.submit();
}
</script>


<!-- JAVASCRIPTS -->
<%@ include file="../../include/footer.jsp"%>
<%@ include file="../../include/style_js.jsp"%>


</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
						<form>
							<div class="form-row">
								<div class="form-group col-md-4">
									<input type="text" class="form-control my-2 my-lg-0" id="inputtext4"
										placeholder="주제">
								</div>
								<div class="form-group col-md-3">
									<input type="text" class="form-control my-2 my-lg-0" id="inputCategory4"
										placeholder="카테고리">
								</div>
								<div class="form-group col-md-3">
									<input type="text" class="form-control my-2 my-lg-0" id="inputLocation4"
										placeholder="팀 규모">
								</div>
								<div class="form-group col-md-2">

									<button type="submit" class="btn btn-primary">검색하기</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="section-sm">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="search-result bg-gray">
						<h2>현재 누른 카테고리</h2>
						<p>세부카테고리</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="category-sidebar">
						<div class="widget category-list">
							<h4 class="widget-header">전체 카테고리</h4>
							<ul class="category-list">
								<li><a href="category.html">전체 <span>200</span></a></li>
								<li><a href="category.html">웹사이트 개발 <span>100</span></a></li>
								<li><a href="category.html">모바일 앱 <span>50</span></a></li>
								<li><a href="category.html">디자인 <span>30</span></a></li>
								<li><a href="category.html">사진 <span>20</span></a></li>
							</ul>
						</div>



						<!-- <div class="widget filter">
	<h4 class="widget-header">Show Produts</h4>
	<select>
		<option>Popularity</option>
		<option value="1">Top rated</option>
		<option value="2">Lowest Price</option>
		<option value="4">Highest Price</option>
	</select>
</div> -->

						<!-- <div class="widget price-range w-100">
	<h4 class="widget-header">Price Range</h4>
	<div class="block">
						<input class="range-track w-100" type="text" data-slider-min="0" data-slider-max="10000000" data-slider-step="5"
						data-slider-value="[0,10000000]">
				<div class="d-flex justify-content-between mt-2">
						<span class="value">0원 - 10,000,000원</span>
				</div>
	</div>
</div> -->

						<div class="widget product-shorting">
							<h4 class="widget-header">팀 규모</h4>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									1인
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									2-4인
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									5-9인
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									10인 이상
								</label>
							</div>
						</div>

					</div>
				</div>
				<div class="col-md-9">
					<div class="category-search-filter">
						<div class="row">
							<div class="col-md-6">
								<strong>필터</strong>
								<select>
									<option>가장 인기 있는</option>
									<option value="1">가장 가격 낮은</option>
									<option value="2">가장 많이 참여한</option>
								</select>
							</div>
							<!-- <div class="col-md-6">
							<div class="view">
								<strong>Views</strong>
								<ul class="list-inline view-switcher">
									<li class="list-inline-item">
										<a href="#" onclick="event.preventDefault();" class="text-info"><i class="fa fa-th-large"></i></a>
									</li>
									<li class="list-inline-item">
										<a href="ad-list-view.html"><i class="fa fa-reorder"></i></a>
									</li>
								</ul>
							</div>
						</div> -->
						</div>
					</div>
					
					
					<div class="product-grid-list">
						<div class="row mt-30">
							<c:forEach items="${portlist}" var = "portlist">
							<div class="col-sm-12 col-lg-4 col-md-6">
								<!-- product card -->
								<div class="product-item bg-light">
								
									<div class="card">
										<div class="thumb-content">
											<!-- <div class="price">$200</div> -->
											<a href="portfolio_detail.do">
												<img class="card-img-top img-fluid" src="${portlist.portlist_url}">
											</a>
										</div>
										<div class="card-body">
											<h4 class="card-title"><a href="single.html"><c:out value="${portlist.portlist_title}"/></a></h4>
											<ul class="list-inline product-meta">
												<li class="list-inline-item">
													<a href="single.html"><i class="fa fa-folder-open-o"></i><c:out value="${portlist.portlist_category}"/></a>
												</li>
												<li class="list-inline-item">
													<a href="#"><i class="fa fa-calendar"></i><c:out value="${portlist.portlist_day}"/></a>
												</li>
											</ul>
											<p class="card-text"><c:out value="${portlist.portlist_content}"/></p>
											<div class="product-ratings">
												<ul class="list-inline">
													<li class="list-inline-item selected"><i class="fa fa-star"></i><c:out value="${portlist.portlist_rating}" /></li>
												</ul>
											</div>
										</div>
									</div>
									</div>
								</div>
								</c:forEach>
							</div>
					
					<div class="pagination justify-content-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
									</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item active"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
										<span class="sr-only">Next</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			
		</div>
	</section>



<script>

//content 상세보기
function fn_view(portfolio_id){
  
  var form = document.getElementById("viewForm");
  var url = "<c:url value='/PortContent.do'/>";
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
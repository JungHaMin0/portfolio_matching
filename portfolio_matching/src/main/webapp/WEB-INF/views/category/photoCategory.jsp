<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>
<!DOCTYPE html>
<html>


<body class="body-wrapper">

	<section class="page-search">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Advance Search -->
					<div class="advance-search">
						<form>
							<div class="form-row" id="form-search">
								<div class="form-group col-md-4">
									<input type="text" class="form-control my-2 my-lg-0" id="inputtext4"
										placeholder="search">
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
						<h2>Photo</h2>
						<p>--</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="category-sidebar">
						<div class="widget category-list">
							<h4 class="widget-header">전체 카테고리</h4>
							<ul class="category-list">
								<li><a href="portlist.do">전체 <span>200</span></a></li>
								<li><a href="webCategory.do" class="webcg_active">웹사이트 개발 <span>100</span></a></li>
								<li><a href="appCategory.do">모바일 앱 <span>50</span></a></li>
								<li><a href="designCategory.do">디자인 <span>30</span></a></li>
								<li><a href="category.html">사진 <span>20</span></a></li>
							</ul>
						</div>
					
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
									<option value="1">별점순</option>
									<option value="2">높은 가격순</option>
									<option value="3">낮은 가격순</option>
								</select>
							</div>
						</div>
					</div>
					<div class="product-grid-list">
						<div class="row mt-30">
							<c:forEach items="${photocg}" var="photocg">
							<div class="col-sm-12 col-lg-4 col-md-6">
								<!-- product card -->
								<div class="product-item bg-light">
								
									<div class="card">
										<div class="thumb-content">
											<!-- <div class="price">$200</div> -->
											<a href="portfolio_detail.do">
												<img class="card-img-top img-fluid" src="${photocg.portlist_url}">
											</a>
										</div>
										<div class="card-body">
											<h4 class="card-title"><a href="single.html"><c:out value="${photocg.portlist_title}"/></a></h4>
											<ul class="list-inline product-meta">
												<li class="list-inline-item">
													<a href="single.html"><i class="fa fa-folder-open-o"></i><c:out value="${photocg.portlist_category}"/></a>
												</li>
												<li class="list-inline-item">
													<a href="#"><i class="fa fa-calendar"></i><c:out value="${photocg.portlist_day}"/></a>
												</li>
											</ul>
											<p class="card-text"><c:out value="${photocg.portlist_content}"/></p>
											<div class="product-ratings">
												<ul class="list-inline">
													<li class="list-inline-item selected"><i class="fa fa-star"></i><c:out value="${photocg.portlist_rating}" /></li>
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
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
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
		</div>
	</section>

<!-- JAVASCRIPTS -->
<%@ include file="../../include/footer.jsp"%>
<%@ include file="../../include/style_js.jsp"%>


</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>

	<!-- SITE TITTLE -->
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>포매</title>

	<!-- FAVICON -->
	<link href="img/favicon.png" rel="shortcut icon">
	<!-- PLUGINS CSS STYLE -->
	<!-- <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap-slider.css">
	<!-- Font Awesome -->
	<link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- Owl Carousel -->
	<link href="resources/plugins/slick-carousel/slick/slick.css" rel="stylesheet">
	<link href="resources/plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
	<!-- Fancy Box -->
	<link href="resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href="resources/plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href="resources/css/style.css" rel="stylesheet">


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="body-wrapper">

	<!-- <section>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-expand-lg navbar-light navigation">
						<a class="navbar-brand" href="index.html">
							<img src="resources/images/logo.png" alt="">
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto main-nav ">
								<li class="nav-item active">
									<a class="nav-link" href="index.html">Home</a>
								</li>
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="">Dashboard<span><i
												class="fa fa-angle-down"></i></span>
									</a>

									Dropdown list
									<div class="dropdown-menu">
										<a class="dropdown-item" href="dashboard.html">Dashboard</a>
										<a class="dropdown-item" href="dashboard-my-ads.html">Dashboard My Ads</a>
										<a class="dropdown-item" href="dashboard-favourite-ads.html">Dashboard Favourite
											Ads</a>
										<a class="dropdown-item" href="dashboard-archived-ads.html">Dashboard Archived
											Ads</a>
										<a class="dropdown-item" href="dashboard-pending-ads.html">Dashboard Pending
											Ads</a>
									</div>
								</li>
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">
										Pages <span><i class="fa fa-angle-down"></i></span>
									</a>
									Dropdown list
									<div class="dropdown-menu">
										<a class="dropdown-item" href="about-us.html">About Us</a>
										<a class="dropdown-item" href="contact-us.html">Contact Us</a>
										<a class="dropdown-item" href="user-profile.html">User Profile</a>
										<a class="dropdown-item" href="404.html">404 Page</a>
										<a class="dropdown-item" href="package.html">Package</a>
										<a class="dropdown-item" href="single.html">Single Page</a>
										<a class="dropdown-item" href="store.html">Store Single</a>
										<a class="dropdown-item" href="single-blog.html">Single Post</a>
										<a class="dropdown-item" href="blog.html">Blog</a>

									</div>
								</li>
								<li class="nav-item dropdown dropdown-slide">
									<a class="nav-link dropdown-toggle" href="" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">
										Listing <span><i class="fa fa-angle-down"></i></span>
									</a>
									Dropdown list
									<div class="dropdown-menu">
										<a class="dropdown-item" href="category.html">Ad-Gird View</a>
										<a class="dropdown-item" href="ad-listing-list.html">Ad-List View</a>
									</div>
								</li>
							</ul>
							<ul class="navbar-nav ml-auto mt-10">
								<li class="nav-item">
									<a class="nav-link login-button" href="login.html">Login</a>
								</li>
								<li class="nav-item">
									<a class="nav-link text-white add-button" href="ad-listing.html"><i
											class="fa fa-plus-circle"></i> Add Listing</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</section> -->
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
							<div class="col-sm-12 col-lg-4 col-md-6">
								<!-- product card -->
								<div class="product-item bg-light">
									<div class="card">
										<div class="thumb-content">
											<!-- <div class="price">$200</div> -->
											<a href="portfolio_detail.do">
												<img class="card-img-top img-fluid"
													src="resources/images/portImage/item_image1.PNG" alt="Card image cap">
											</a>
										</div>
										<div class="card-body">
											<h4 class="card-title"><a href="single.html">포트폴리오 이름</a></h4>
											<ul class="list-inline product-meta">
												<li class="list-inline-item">
													<a href="single.html"><i class="fa fa-folder-open-o"></i>WEB</a>
												</li>
												<li class="list-inline-item">
													<a href="#"><i class="fa fa-calendar"></i>30days</a>
												</li>
											</ul>
											<p class="card-text">반응형, 고급형 웹 홈페이지를 만들 개발자를 구합니다.</p>
											<div class="product-ratings">
												<ul class="list-inline">
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>



							</div>
							<div class="col-sm-12 col-lg-4 col-md-6">
								<!-- product card -->
								<div class="product-item bg-light">
									<div class="card">
										<div class="thumb-content">
											<!-- <div class="price">$200</div> -->
											<a href="single.html">
												<img class="card-img-top img-fluid"
													src="resources/images/portImage/item_image2.PNG" alt="Card image cap">
											</a>
										</div>
										<div class="card-body">
											<h4 class="card-title"><a href="single.html">포트폴리오 이름2</a></h4>
											<ul class="list-inline product-meta">
												<li class="list-inline-item">
													<a href="single.html"><i class="fa fa-folder-open-o"></i>App</a>
												</li>
												<li class="list-inline-item">
													<a href="#"><i class="fa fa-calendar"></i>30days</a>
												</li>
											</ul>
											<p class="card-text">반응형, 고급형 웹 홈페이지를 만들 개발자를 구합니다.</p>
											<div class="product-ratings">
												<ul class="list-inline">
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>



							</div>
							<div class="col-sm-12 col-lg-4 col-md-6">
								<!-- product card -->
								<div class="product-item bg-light">
									<div class="card">
										<div class="thumb-content">
											<!-- <div class="price">$200</div> -->
											<a href="single.html">
												<img class="card-img-top img-fluid"
													src="resources/images/portImage/item_image3.PNG" alt="Card image cap">
											</a>
										</div>
										<div class="card-body">
											<h4 class="card-title"><a href="single.html">포트폴리오 이름3</a></h4>
											<ul class="list-inline product-meta">
												<li class="list-inline-item">
													<a href="single.html"><i
															class="fa fa-folder-open-o"></i>Designer</a>
												</li>
												<li class="list-inline-item">
													<a href="#"><i class="fa fa-calendar"></i>30days</a>
												</li>
											</ul>
											<p class="card-text">반응형, 고급형 웹 홈페이지를 만들 개발자를 구합니다.</p>
											<div class="product-ratings">
												<ul class="list-inline">
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i>
													</li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
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
	<!--============================
=            Footer            =
=============================-->

	<footer class="footer section section-sm">
		<!-- Container Start -->
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-7 offset-md-1 offset-lg-0">
					<!-- About -->
					<div class="block about">
						<!-- footer logo -->
						<img src="images/logo-footer.png" alt="">
						<!-- description -->
						<p class="alt-color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
							tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.</p>
					</div>
				</div>
				<!-- Link list -->
				<div class="col-lg-2 offset-lg-1 col-md-3">
					<div class="block">
						<h4>Site Pages</h4>
						<ul>
							<li><a href="#">Boston</a></li>
							<li><a href="#">How It works</a></li>
							<li><a href="#">Deals & Coupons</a></li>
							<li><a href="#">Articls & Tips</a></li>
							<li><a href="terms-condition.html">Terms & Conditions</a></li>
						</ul>
					</div>
				</div>
				<!-- Link list -->
				<div class="col-lg-2 col-md-3 offset-md-1 offset-lg-0">
					<div class="block">
						<h4>Admin Pages</h4>
						<ul>
							<li><a href="category.html">Category</a></li>
							<li><a href="single.html">Single Page</a></li>
							<li><a href="store.html">Store Single</a></li>
							<li><a href="single-blog.html">Single Post</a>
							</li>
							<li><a href="blog.html">Blog</a></li>



						</ul>
					</div>
				</div>
				<!-- Promotion -->
				<div class="col-lg-4 col-md-7">
					<!-- App promotion -->
					<div class="block-2 app-promotion">
						<div class="mobile d-flex">
							<a href="">
								<!-- Icon -->
								<img src="images/footer/phone-icon.png" alt="mobile-icon">
							</a>
							<p>Get the Dealsy Mobile App and Save more</p>
						</div>
						<div class="download-btn d-flex my-3">
							<a href="#"><img src="images/apps/google-play-store.png" class="img-fluid" alt=""></a>
							<a href="#" class=" ml-3"><img src="images/apps/apple-app-store.png" class="img-fluid"
									alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Container End -->
	</footer>
	<!-- Footer Bottom -->
	<footer class="footer-bottom">
		<!-- Container Start -->
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-12">
					<!-- Copyright -->
					<div class="copyright">
						<p>Copyright © <script>
								var CurrentYear = new Date().getFullYear()
								document.write(CurrentYear)
							</script>. All Rights Reserved, theme by <a class="text-primary"
								href="https://themefisher.com" target="_blank">themefisher.com</a></p>
					</div>
				</div>
				<div class="col-sm-6 col-12">
					<!-- Social Icons -->
					<ul class="social-media-icons text-right">
						<li><a class="fa fa-facebook" href="https://www.facebook.com/themefisher" target="_blank"></a>
						</li>
						<li><a class="fa fa-twitter" href="https://www.twitter.com/themefisher" target="_blank"></a>
						</li>
						<li><a class="fa fa-pinterest-p" href="https://www.pinterest.com/themefisher"
								target="_blank"></a></li>
						<li><a class="fa fa-vimeo" href=""></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Container End -->
		<!-- To Top -->
		<div class="top-to">
			<a id="top" class="" href="#"><i class="fa fa-angle-up"></i></a>
		</div>
	</footer>

	<!-- JAVASCRIPTS -->
	<script src="resources/plugins/jQuery/jquery.min.js"></script>
	<script src="resources/plugins/bootstrap/js/popper.min.js"></script>
	<script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/plugins/bootstrap/js/bootstrap-slider.js"></script>
	<!-- tether js -->
	<script src="resources/plugins/tether/js/tether.min.js"></script>
	<script src="resources/plugins/raty/jquery.raty-fa.js"></script>
	<script src="resources/plugins/slick-carousel/slick/slick.min.js"></script>
	<script src="resources/plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
	<script src="resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
	<script src="resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
	<!-- google map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places">
	</script>
	<script src="resources/plugins/google-map/gmap.js"></script>
	<script src="resources/js/script.js"></script>

</body>

</html>
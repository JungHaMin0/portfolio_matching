<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>

</head>

<body class="body-wrapper">

	<!--==================================
=            User Profile            =
===================================-->
	<section class="dashboard section">
		<!-- Container Start -->
		<div class="container">
			<!-- Row Start -->
			<div class="row">
				<div class="col-md-10 offset-md-1 col-lg-4 offset-lg-0">
					<div class="sidebar">
						<!-- User Widget -->
						<div class="widget user-dashboard-profile">
							<!-- User Image -->
							<div class="profile-thumb">
								<img src="images/user/user-thumb.jpg" alt="" class="rounded-circle">
							</div>
							<!-- User Name -->
							<h5 class="text-center">정하민</h5>
							<p>Joined February 06, 2017</p>
							<a href="user-profile.html" class="btn btn-main-sm">회원 정보 수정</a>
						</div>
						<!-- Dashboard Links -->
						<div class="widget user-dashboard-menu">
							<hr />
							<strong>구매 관리</strong>
							<hr />
							<ul>
								<li class="active"><a href="dashboard-my-ads.html"><i class="fa fa-bookmark-o"></i> 관심 상품</a></li>
								<li><a href="dashboard-favourite-ads.html"><i class="fa fa-credit-card"></i> 결제 내역</a></li>
								<li><a href="dashboard-archived-ads.html"><i class="fa fa-thumbs-o-up"></i> 서비스 평가</a></li>
								<li><a href="dashboard-pending-ads.html"><i class="fa fa-commenting-o"></i> 문의 내역</a></li>
							</ul>

							<hr />
							<strong>판매 관리</strong>
							<hr />
							<ul>
								<li><a href="dashboard-my-ads.html"><i class="fa fa-hourglass-half"></i> 판매 중</a></li>
								<li><a href="dashboard-favourite-ads.html"><i class="fa fa-hourglass-end"></i> 판매 완료</a></li>
								<li><a href="dashboard-archived-ads.html"><i class="fa fa-commenting"></i> 문의 내역</a></li>
								<li><a href="dashboard-pending-ads.html"><i class="fa fa-krw"></i> 수익 현황</a></li>
							</ul>

							<hr />
							<strong>내 정보 관리</strong>
							<hr />
							<ul>
								<li><a href="dashboard-my-ads.html"><i class="fa fa-user"></i> 회원정보수정</a></li>
								<li><a href="dashboard-favourite-ads.html"><i class="fa fa-remove"></i> 회원탈퇴</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
					<div class="row text-center">
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa-smile-o d-block"></i> <span class="counter my-2 d-block" data-count="20">0</span>
								<h5>관심 상품</h5>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa-user-o d-block"></i> <span class="counter my-2 d-block" data-count="32">0</span>
								<h5>결제 내역</h5>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa-bookmark-o d-block"></i> <span class="counter my-2 d-block" data-count="12">0</span>
								<h5>서비스 평가</h5>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 my-lg-0 my-3">
							<div class="counter-content text-center py-4 rounded">
								<i class="fa fa-smile-o d-block"></i> <span class="counter my-2 d-block" data-count="48">0</span>
								<h5>문의 내역</h5>
							</div>
						</div>
					</div>

					<div class="widget dashboard-container my-adslist">
						<h3 class="widget-header">My Ads</h3>
						
					</div>
				</div>
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
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
						<p class="alt-color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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
							<li><a href="single-blog.html">Single Post</a></li>
							<li><a href="blog.html">Blog</a></li>
						</ul>
					</div>
				</div>
				<!-- Promotion -->
				<div class="col-lg-4 col-md-7">
					<!-- App promotion -->
					<div class="block-2 app-promotion">
						<div class="mobile d-flex">
							<a href=""> <!-- Icon --> <img src="images/footer/phone-icon.png" alt="mobile-icon">
							</a>
							<p>Get the Dealsy Mobile App and Save more</p>
						</div>
						<div class="download-btn d-flex my-3">
							<a href="#"><img src="images/apps/google-play-store.png" class="img-fluid" alt=""></a> <a href="#" class=" ml-3"><img src="images/apps/apple-app-store.png" class="img-fluid" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Container End -->

		<%@ include file="../../include/footer.jsp"%>
		<%@ include file="../../include/style_js.jsp"%>
</body>

</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body class="body-wrapper">
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-expand-lg navbar-light navigation">

						<a class="navbar-brand" href="index.do"> 
						<img src="resources/images/logo.png" alt="logo" width="40" height="50">
							<h3>포매</h3>
						</a>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav ">
							<li class="nav-item active">
								<a class="nav-link" href="index.do">Home</a>
							</li>
							<li class="nav-item dropdown dropdown-slide">
								<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="">포트폴리오 목록<span><i class="fa fa-angle-down"></i></span>
								</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="portlist.do">IT프로그래밍</a>
									<a class="dropdown-item" href="dashboard-my-ads.html">디자인</a>
									<a class="dropdown-item" href="dashboard-favourite-ads.html">영상편집</a>
									<a class="dropdown-item" href="dashboard-archived-ads.html">마케팅</a>
									<a class="dropdown-item" href="dashboard-pending-ads.html">취업</a>
								</div>
							</li>
							<li class="nav-item active">
								<a class="nav-link" href="pmPurchase.do">MyPage</a>
							</li>
						</ul>
							<ul class="navbar-nav ml-auto mt-10">
								<li class="nav-item"><a class="nav-link login-button"
									href="login.do">로그인</a></li>
								<li class="nav-item"><a class="nav-link login-button"
									href="Join.do">회원가입</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</section>
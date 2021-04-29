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
				<%@ include file="nav.jsp"%>

				<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
					<div class="widget dashboard-container my-adslist">
						<h3><i class="fa fa-credit-card"></i> 결제 내역</h3>
						<br />
						<table class="table table-responsive product-dashboard-table">
							<thead>
								<tr>
									<th>이미지</th>
									<th>결제 상품</th>
									<th class="text-center">카테고리</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="product-thumb"><img width="80px" height="auto" src="resources/images/item_image1.PNG" alt="image description"></td>
									<td class="product-details">
										<h3 class="title">웹사이트 제작</h3><span><strong>가격</strong>490,000</span> <span><strong>구매일</strong><time>2021년 5월 25일</time></span><span><strong>판매자</strong>개인</span>
									</td>
									<td class="product-category"><span class="categories">웹사이트 개발</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="문의하기" class="view" href="category.html"> <i class="fa fa-commenting-o"></i>
												</a></li>
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="후기작성" class="edit" href=""> <i class="fa fa-thumbs-o-up"></i>
												</a></li>
											</ul>
										</div>
									</td>
								</tr>
								
								<tr>
									<td class="product-thumb"><img width="80px" height="auto" src="resources/images/item_image2.PNG" alt="image description"></td>
									<td class="product-details">
										<h3 class="title">반응형 웹 제작</h3><span><strong>가격</strong>490,000</span> <span><strong>구매일</strong><time>2021년 5월 23일</time></span><span><strong>판매자</strong>TOSS</span>
									</td>
									<td class="product-category"><span class="categories">웹사이트 개발</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="문의하기" class="view" href="category.html"> <i class="fa fa-commenting-o"></i>
												</a></li>
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="후기작성" class="edit" href=""> <i class="fa fa-thumbs-o-up"></i>
												</a></li>
											</ul>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Row End -->
		</div>
		<!-- Container End -->
	</section>

	<%@ include file="../../include/footer.jsp"%>
	<%@ include file="../../include/style_js.jsp"%>
</body>

</html>
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
						<h3>
							<i class="fa fa-bookmark-o"></i> 관심 상품
						</h3>
						<br />
						<table class="table table-responsive product-dashboard-table">
							<thead>
								<tr>
									<th>이미지</th>
									<th>상품</th>
									<th class="text-center">카테고리</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>

									<td class="product-thumb"><img width="80px" height="auto" src="resources/images/item_image1.PNG" alt="image description"></td>
									<td class="product-details">
										<h3 class="title">웹사이트 제작</h3> <span class="add-id"><strong>소개</strong>웹 사이트 제작</span> <span><strong>등록일</strong><time>2021년 4월 25일</time></span> <span><strong>판매자</strong>개인</span>
										<span class="location"><strong>가격</strong>490,000 원</span>
									</td>
									<td class="product-category"><span class="categories">웹사이트 개발</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="보기" class="view" href="category.html"> <i class="fa fa-eye"></i>
												</a></li>
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="삭제" class="delete" href=""> <i class="fa fa-trash"></i>
												</a></li>
											</ul>
										</div>
									</td>
								</tr>

								<tr>

									<td class="product-thumb"><img width="80px" height="auto" src="resources/images/item_image2.PNG" alt="image description"></td>
									<td class="product-details">
										<h3 class="title">웹페이지 반응형 웹</h3> <span class="add-id"><strong>소개</strong>반응형 웹 제작</span> <span><strong>등록일</strong><time>2021년 4월 25일</time></span>
										<span><strong>판매자</strong>TOSS</span> <span><strong>가격</strong>490,000 원</span>
									</td>
									<td class="product-category"><span class="categories">웹사이트 개발</span></td>
									<td class="action" data-title="Action">
										<div class="">
											<ul class="list-inline justify-content-center">
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="보기" class="view" href="category.html"> <i class="fa fa-eye"></i>
												</a></li>
												<li class="list-inline-item"><a data-toggle="tooltip" data-placement="top" title="삭제" class="delete" href=""> <i class="fa fa-trash"></i>
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
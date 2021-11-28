<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/adminstyle_css.jsp"%>
<title>관리자페이지</title>
</head>

<body id="page-top">

	<%@ include file="../../include/adminstyle_css.jsp"%>
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

					<div>
						<form id="review_detail" name="review_detail" method="post">
							<div class="container">
								<div class="row">
									 <h3 style="color:#f8f9fc;">상세보기</h3>
									<div class="col-lg-6">
										<div class="card">
											<div class="card-header">
												<strong>상세보기</strong><small></small>
											</div>
											<input type='hidden' id='review_id' name='review_id'
												value='${reviewlist.review_id }' /> 
												<input type='hidden'
												id='review_portfolio_id' name='review_portfolio_id'
												value='${reviewlist.review_portfolio_id }' />
											<div class="card-body card-block">

												<div class="row">
													<div class="col-6">
														<div class="form-group">
															<label for="company" class=" form-control-label">제목</label>
															<input type="text" id="review_title" class="form-control"
																value="${reviewlist.review_title}">
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="company" class=" form-control-label">글쓴이ID</label>
															<input type="text" id="review_userId" class="form-control"
																value="${reviewlist.review_userId}">
														</div>
													</div>


													<div class="col-12">
														<div class="form-group">
															<label for="vat" class=" form-control-label">내용</label> 
															<%-- <input type="text" id="review_content" class="form-control" value="${reviewlist.review_content}"> --%>
														<textarea class="border w-100 p-3 bg-gray" id="review_content" readonly>${reviewlist.review_content}</textarea>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-6">
														<div class="form-group">
															<label for="company" class=" form-control-label">별점</label>
															<input type="text" id="review_rating"
																class="form-control" value="${reviewlist.review_rating}">
														</div>
													</div>
													<div class="col-6">
														<div class="form-group">
															<label for="company" class=" form-control-label">날짜</label>
															<input type="text" id="review_regDate"
																class="form-control"
																value="${reviewlist.review_regDate }">
														</div>
													</div>
												</div>

												<div>
													<a href='#' onClick="window.close();">목록</a>
												</div>
												
												<%-- <c:forEach items="${ReviewPort}" var="ReviewPort"> --%>
												<div>
												  <a href="PortContent.do?portfolio_id=${reviewlist.review_portfolio_id}" target="_blank"> 원글가기</a>
												</div>
												<%-- </c:forEach> --%>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
			</div>
		</div>
	</div>


	<%@ include file="../../include/adminstyle_js.jsp"%>
</body>
<script>
	//목록
/* 	function fn_cancel() {
		var form = document.getElementById("review_detail.do'/>");
	    url = url + "?review_portfolio_id=" + review_portfolio_id;
	    
	    form.action = url;    
	    form.submit(); 
	} */
	
	

	 
	
</script>





</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function rating() {
		var rating = Number($(".fa-star").length);

		$("#review_rating").val(rating);
		
		$("#frm-Review").submit();
	}
	$(document).ready(function() {
		$("#review_rating").hide();
	})
</script>
</head>

<body class="body-wrapper">

  <!--==================================
=            User Profile            =
===================================-->
  <div class="col-md-12">
    <div class="widget rate mt-4">
      <!-- Heading -->
      <h5 class="widget-header text-center">이용하신 포트폴리오에 점수를 부여해주세요</h5>
      <!-- Rate -->
      <div class="starrr"></div>
      <form id="frm-Review" action="pmPurchaseReview.do" method="post">
        <input type="hidden" id="review_portfolio_id" name="review_portfolio_id" value="${portfolio_id}">
        <input type="hidden" id="review_userId" name="review_userId" value="${user_id}">
        <input type="number" id="review_rating" name="review_rating">
        <label>이용 후기 제목</label><input type="text" id="review_title" name="review_title" class="form-control" placeholder="제목을 입력하세요." /><br />
        <label>이용 후기 내용</label><textarea id="review_content" name="review_content" id="" class="border w-100 p-3" placeholder="내용을 입력해주세요."></textarea>
        <div class="btn-grounp text-right">
          <a class="btn btn-primary mt-2" onclick="rating();">리뷰 작성</a>
        </div>
      </form>
    </div>
  </div>

  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
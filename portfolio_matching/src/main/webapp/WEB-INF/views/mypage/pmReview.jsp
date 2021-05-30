<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">
  <div class="col-md-12">
    <div class="widget rate mt-4">
      <!-- Heading -->
      <h5 class="widget-header text-center">이용하신 포트폴리오에 점수를 부여해주세요</h5>
      <!-- Rate -->
      <div class="starrr"></div>
      <form role="form" id="frm-review" method="post">
        <input type="hidden" id="chk" name="chk" value="${chk}">
        <input type="hidden" id="review_portfolio_id" name="review_portfolio_id" value="${portfolio_id}">
        <input type="hidden" id="review_userId" name="review_userId" value="${user_id}">
        <input type="number" id="review_rating" name="review_rating">
        <label>이용 후기 제목</label><input type="text" id="review_title" name="review_title" class="form-control" placeholder="제목을 입력하세요." /><br />
        <label>이용 후기 내용</label>
        <textarea id="review_content" name="review_content" id="" class="border w-100 p-3" placeholder="내용을 입력해주세요."></textarea>
        <div class="btn-grounp text-right">
          <button id="btn-submit" class="btn btn-primary mt-2">리뷰 작성</button>
        </div>
      </form>
    </div>
  </div>

  <%@ include file="../../include/style_js.jsp"%>
  <script type="text/javascript">
    $("#review_rating").hide();
  	$(document).ready(function(){
  	  
      if($("#chk").val() == 0){
    	  alert('이미 후기를 작성하셨습니다.');
    	  close();
      }
  	});
  	
  	
  	$("#btn-submit").on('click', function() {
  		var rating = Number($(".fa-star").length);
		$("#review_rating").val(rating);
		
		if($("#review_title").val() == "") {
			alert('이용 후기 제목을 입력해주세요.');
			return false;
		} else if($("#review_content").val() == "") {
			alert('이용 후기 내용을 입력해주세요.');
			return false;
		} else if($("#review_rating").val() == 0){
			alert('이용하신 포트폴리오에 점수를 부여해주세요.');
			return false;
		} else {
			if(confirm('작성하신 내용으로 제출하시겠습니까?') == true) {
				$.ajax({
					type : 'POST',
					data : $("#frm-review").serialize(),
					datatype : 'json',
					url : 'pmPurchaseReview.do',
					success : function(result) {
						if(result == 1) {
							alert('이용 후기 작성이 완료되었습니다.');
							close();
						} else {
							alert('이용 후기 작성에 실패하였습니다, 관리자에게 문의해주세요.');
							close();
						}
					},
					error : function(error) {
						alert('ajax error : ' + error + ', 관리자에게 문의하세요.');
		              	close();
					}
				});
			} else {
				return;
			}
		}
  	});
  
  </script>
</body>

</html>
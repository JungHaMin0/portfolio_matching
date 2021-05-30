<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">

  <div class="col-md-12">
    <div class="widget dashboard-container">
      <h3 class="widget-header text-center">답변 하기</h3>

      <form id="frm-answer" role="form">
        <fieldset class="p-4">
          <div class="form-group">
            <div class="row">
              <div class="col-lg-6 pt-2">
                <label>문의 상품</label><input type="text" value="${portfolio_title}" class="form-control" readonly />
              </div>
              <div class="col-lg-3 pt-2">
                <label>거래 번호</label><input type="text" id="ans_deal_id" name="ans_deal_id" value="${smInquiryRead.inq_deal_id}" class="form-control" readonly />
              </div>
              <div class="col-lg-3 pt-2">
                <label>문의 번호</label><input type="text" id="ans_inq_id" name="ans_inq_id" value="${smInquiryRead.inq_id}" class="form-control" readonly />
              </div>
              <div class="col-lg-6 pt-2">
                <label>문의 작성자</label><input type="text" value="${smInquiryRead.inq_purUser}" class="form-control" readonly />
              </div>
              <div class="col-md-6 pt-2">
                <label>작성 날짜</label><input type="text" value="${smInquiryRead.inq_regDate}" class="form-control" readonly />
              </div>
              <div class="col-md-12 pt-2">
                <label>문의 제목</label><input type="text" value="${smInquiryRead.inq_title}" class="form-control" readonly />
              </div>
            </div>
          </div>
          <label>문의 내용</label>
          <textarea class="border w-100 p-3 bg-gray" readonly>${smInquiryRead.inq_content}</textarea>
          <br /> <br />
          <hr />

          <div class="form-group">
            <div class="row">
              <div class="col-md-12 pt-2">
                <label>답변 작성자</label><input type="text" id="ans_saleUser" name="ans_saleUser" value="${ans_saleUser}" class="form-control" readonly />
              </div>
            </div>
          </div>
          <label>답변 내용</label>
          <textarea id="ans_content" name="ans_content" class="border w-100 p-3" placeholder="답변 내용을 입력하세요."></textarea>
          <div class="btn-grounp">
            <button type="button" id="btn-submit" class="btn btn-primary mt-2 float-right">답변 하기</button>
          </div>
        </fieldset>
      </form>

    </div>
  </div>

  <%@ include file="../../include/style_js.jsp"%>
  <script type="text/javascript">
  $("#btn-submit").on('click', function() {
		if($("#ans_content").val() == "") {
			alert('답변 내용을 입력해주세요.');
			return false;
		} else {
			if (confirm('작성하신 내용으로 답변하시겠습니까?') == true) {
				$.ajax({
					type : 'POST',
					data : $('#frm-answer').serialize(),
					datatype : 'json',
					url : 'smAnswerWrite.do',
					success : function(result) {
						if(result == 1) {
							alert('답변이 완료되었습니다.');
							close();
						} else {
							alert('답변에 실패하였습니다, 관리자에게 문의해주세요.');
						}
					},
					error : function(error) {
						alert('ajax error : ' + error);
					}
				});

			} else {
				return false;
			}
		}
	});
  </script>
</body>
</html>
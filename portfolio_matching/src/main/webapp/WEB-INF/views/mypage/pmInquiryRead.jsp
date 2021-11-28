<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

      <form role="form" action="smAnswerWrite.do" method="post">
        <fieldset class="p-4">
          <div class="form-group">
            <div class="row">
              <div class="col-lg-6 pt-2">
                <label>문의 상품</label><input type="text" value="${portfolio_title}" class="form-control" readonly />
              </div>
              <div class="col-lg-3 pt-2">
                <c:choose>
                  <c:when test="${pmInquiryRead.inq_deal_id == 0}">
                    <label>거래 번호</label><input type="text" id="ans_deal_id" name="ans_deal_id" value="미구매자" class="form-control" readonly />
                  </c:when>
                  <c:otherwise>
                    <label>거래 번호</label><input type="text" id="ans_deal_id" name="ans_deal_id" value="${pmInquiryRead.inq_deal_id}" class="form-control" readonly />
                  </c:otherwise>                
                </c:choose>
              </div>
              <div class="col-lg-3 pt-2">
                <label>문의 번호</label><input type="text" id="ans_inq_id" name="ans_inq_id" value="${pmInquiryRead.inq_id}" class="form-control" readonly />
              </div>
              <div class="col-lg-6 pt-2">
                <label>문의 작성자</label><input type="text" value="${pmInquiryRead.inq_purUser}" class="form-control" readonly />
              </div>
              <div class="col-md-6 pt-2">
                <label>작성 날짜</label><input type="text" value="${pmInquiryRead.inq_regDate}" class="form-control" readonly />
              </div>
              <div class="col-md-12 pt-2">
                <label>문의 제목</label><input type="text" value="${pmInquiryRead.inq_title}" class="form-control" readonly />
              </div>
            </div>
          </div>
          <label>문의 내용</label>
          <textarea class="border w-100 p-3 bg-gray" id="dasd" readonly>${pmInquiryRead.inq_content}</textarea>
          <br /> <br />
          <hr />
          <c:choose>
            <c:when test="${pmAnswerRead == null}">
              <div class="text-center col-md-12 pt-2">
                <h3>답변이 없습니다.</h3>
              </div>
            </c:when>
            <c:otherwise>
              <div class="form-group">
                <div class="row">
                  <div class="col-md-12 pt-2">
                    <label>답변 작성자</label><input type="text" id="ans_saleUser" name="ans_saleUser" value="${pmAnswerRead.ans_saleUser}" class="form-control" readonly />
                  </div>
                </div>
              </div>
              <label>답변 내용</label>
              <textarea id="ans_content" name="ans_content" class="border w-100 p-3" readonly>${pmAnswerRead.ans_content}</textarea>
            </c:otherwise>
          </c:choose>
        </fieldset>
      </form>

    </div>
  </div>
  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
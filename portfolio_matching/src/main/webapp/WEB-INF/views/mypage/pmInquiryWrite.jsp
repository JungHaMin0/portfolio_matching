<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>

</head>

<body class="body-wrapper">

  <!--==================================
=            User Profile            =
===================================-->
  <div class="col-md-12">
    <div class="widget dashboard-container">
      <h3 class="widget-header text-center">문의 하기</h3>

      <form role="form" action="pmInquiryWrite.do" method="post">
        <fieldset class="p-4">
          <div class="form-group">
            <div class="row">
              <div class="col-lg-6 py-2">
                <label>문의 상품</label><input type="text" value="${portfolio_title}" class="form-control" readonly />
              </div>
              <div class="col-lg-3 pt-2">
                <label>거래 번호</label><input type="text" id="inq_deal_id" name="inq_deal_id" value="${inq_deal_id}" class="form-control" readonly />
              </div>
              <div class="col-lg-3 pt-2">
                <label>작성자</label><input type="text" id="inq_purUser" name="inq_purUser" value="${inq_purUser}" class="form-control" readonly />
              </div>
              <div class="col-md-12">
                <label>문의 제목</label><input type="text" id="inq_title" name="inq_title" class="form-control" placeholder="문의 제목을 입력하세요." />
              </div>
            </div>
          </div>
          <label>문의 내용</label><textarea id="inq_content" name="inq_content" placeholder="문의 내용을 입력하세요." class="border w-100 p-3"></textarea>
          <div class="btn-grounp">
            <button type="submit" class="btn btn-primary mt-2 float-right">문의하기</button>
          </div>
        </fieldset>
      </form>
      
    </div>
  </div>

  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
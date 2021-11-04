<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../../include/style_css.jsp"%>
</head>
<body>
  <%@ include file="../../include/header.jsp"%>
  <section class="section bg-gray">
    <div class="container">
      <div class="row">
        <div class="col-md-6 text-center mx-auto">
          <div class="404-content">
            <div class="widget user-dashboard-profile">
              <!-- User Image -->
              <div class="m-4">
                <img src="./resources/images/logo2.png" style="width: 200px;">
              </div>
              <!-- User Name -->
              <h5 class="text-center">구매가 정상적으로 처리되었습니다.</h5>
              <p>자세한 내용은 마이페이지에서 확인해주세요.</p>
              <a href="index.do" class="btn btn-main-sm">홈</a> <a href="pmPurchase.do" class="btn btn-main-sm">마이페이지</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>
</html>
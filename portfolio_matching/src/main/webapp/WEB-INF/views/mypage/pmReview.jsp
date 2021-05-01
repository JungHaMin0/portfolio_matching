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
    <div class="widget rate">
      <!-- Heading -->
      <h5 class="widget-header text-center">이용하신 포트폴리오에 점수를 부여해주세요
      </h5>
      <!-- Rate -->
      <div class="starrr"></div>
    </div>

    <textarea name="message" id="" placeholder="이용 후기를 입력해주세요." class="border w-100 p-3 mt-3 mt-lg-4"></textarea>
    <div class="btn-grounp">
      <button type="submit" class="btn btn-primary mt-2 float-right">SUBMIT</button>
    </div>
  </div>

  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
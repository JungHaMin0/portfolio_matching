<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="../../include/adminstyle_css.jsp"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>포트폴리오</title>

</head>

<body id="page-top">

  <%@ include file="../../include/adminstyle_css.jsp"%>
  
  <div class="card m-4">
    <div class="card-header">내용</div>
    <div class="card-body">
      ${portfolio.portfolio_content}
    </div>
  </div>

  <%@ include file="../../include/adminstyle_js.jsp"%>

</body>

</html>
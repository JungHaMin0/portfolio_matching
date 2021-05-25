<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>
<head>
</head>

<body class="body-wrapper">


  <section class="login py-5 border-top-1">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-8 align-item-center">
          <div class="border">
            <h3 class="bg-gray p-4">로그인</h3>
            <form action="login.do" method="post">
              <fieldset class="p-4">
                <input type="text" id="user_id" name="user_id" placeholder="아이디" class="border p-3 w-100 my-2">
                <input type="password" id="user_pw" name="user_pw" placeholder="비밀번호" class="border p-3 w-100 my-2">
                <button type="submit" class="d-block py-3 px-5 bg-primary text-white border-0 rounded font-weight-bold mt-3">로그인</button>
                <a class="mt-3 d-block  text-primary" href="#">비밀번호를 잊어버리셨나요?</a>
                <a class="mt-3 d-inline-block text-primary" href="register.html">회원가입</a>
              </fieldset>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>


  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
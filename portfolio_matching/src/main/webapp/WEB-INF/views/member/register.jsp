<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>
<head>
</head>

<body class="body-wrapper">
<script src="/resources/js/register.js"></script>
  <section class="login py-5 border-top-1">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-8 align-item-center">
          <div class="border border">
            <h3 class="bg-gray p-4">회원가입</h3>

            <form action="register.do" method="post">
              <fieldset class="p-4">
                <input type="text" placeholder="아이디" class="border p-3 w-100 my-2" id="user_id" name="user_id">
                <input type="password" placeholder="비밀번호" class="border p-3 w-100 my-2" id="user_pw" name="user_pw">
                <input type="password" placeholder="비밀번호 확인" class="border p-3 w-100 my-2" id="user_pw_confirm" name="user_pw_confirm">
                <input type="email" placeholder="이메일" class="border p-3 w-100 my-2" id="user_email" name="user_email">
                <input type="text" placeholder="이름" class="border p-3 w-100 my-2" id="user_name" name="user_name">
                <input type="text" placeholder="연락처" class="border p-3 w-100 my-2" id="user_phone" name="user_phone">
                <div class="loggedin-forgot d-inline-flex my-3">
                  <input type="checkbox" id="chk_terms" name="chk_terms" class="mt-1"> <label for="registering" class="px-2">이용 약관에 동의합니다. <a class="text-primary font-weight-bold" href="terms-condition.html">이용 약관</a></label>
                </div>
                <button type="submit" id="submit" class="d-block py-3 px-4 bg-primary text-white border-0 rounded font-weight-bold">회원가입</button>
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
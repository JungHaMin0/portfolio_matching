<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">
  <%@ include file="../../include/header.jsp"%>

  <section class="dashboard section">
    <div class="container">
      <div class="row">
        <%@ include file="nav.jsp"%>
        
        <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
          <div class="row">
            <div class="col-lg-6 col-md-6">
              <div class="widget personal-info">
                <h3 class="widget-header user">내 정보 수정</h3>
                <form action="userMod.do" method="post">
                  <div class="form-group">
                    <label for="user_id">아이디</label><input type="text" class="form-control" id="user_id" name="user_id" value="${member.user_id}" readonly="readonly">
                  </div>
                  <div class="form-group">
                    <label for="user_name">이름</label><input type="text" class="form-control" id="user_name" name="user_name" value="${member.user_name}">
                  </div>
                  <div class="form-group">
                    <label for="user_phone">연락처</label> <input type="text" class="form-control" id="user_phone" name="user_phone" value="${member.user_phone}">
                  </div>
                  <div class="form-group">
                    <label for="user_email">이메일</label> <input type="text" class="form-control" id="user_email" name="user_email" value="${member.user_email}">
                  </div>
                  <!-- File chooser -->
                  <div class="form-group choose-file d-inline-flex">
                    <i class="fa fa-user text-center px-3"></i> <input type="file" class="form-control-file mt-2 pt-1" id="input-file">
                  </div>
                  <button class="btn btn-transparent" id="userSubmit">수정</button>
                </form>
              </div>
            </div>
            <div class="col-lg-6 col-md-6">
              <div class="widget change-password">
                <h3 class="widget-header user">비밀번호 변경</h3>
                <form action="userPwMod.do" method="post">
                  <input type="hidden" id="user_id" name="user_id" value="${member.user_id}"/>
                  <input type="hidden" id="current_pw" name="current_pw" value="${member.user_pw}"/>
                  <div class="form-group">
                    <label for="current_confirm_pw">현재 비밀번호</label> <input type="password" class="form-control" id="current_confirm_pw" name="current_confirm_pw">
                  </div>
                  <div class="form-group">
                    <label for="user_pw">새 비밀번호</label> <input type="password" class="form-control" id="user_pw" name="user_pw">
                  </div>
                  <div class="form-group">
                    <label for="confirm-pw">새 비밀번호 확인</label> <input type="password" class="form-control" id="confirm_pw" name="confirm_pw">
                  </div>
                  <button class="btn btn-transparent" id="pwSubmit">변경</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
  <script src="./resources/js/userMod.js"></script>
</body>

</html>
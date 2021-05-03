<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>

</head>

<body class="body-wrapper">

  <!--==================================
=            User Profile            =
===================================-->
  <section class="dashboard section">
    <!-- Container Start -->
    <div class="container">
      <!-- Row Start -->
      <div class="row">
        <%@ include file="nav.jsp"%>
        <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
          <!-- Edit Personal Info -->
          <div class="row">
            <div class="col-lg-6 col-md-6">
              <div class="widget personal-info">
                <h3 class="widget-header user">내 정보 수정</h3>
                <form action="#">
                  <!-- First Name -->
                  <div class="form-group">
                    <label for="first-name">이름</label> <input type="text" class="form-control" id="first-name">
                  </div>
                  <!-- Last Name -->
                  <div class="form-group">
                    <label for="last-name">전화번호</label> <input type="text" class="form-control" id="last-name">
                  </div>
                  <!-- Comunity Name -->
                  <div class="form-group">
                    <label for="comunity-name">이메일</label> <input type="text" class="form-control" id="comunity-name">
                  </div>
                  <!-- File chooser -->
                  <div class="form-group choose-file d-inline-flex">
                    <i class="fa fa-user text-center px-3"></i> <input type="file" class="form-control-file mt-2 pt-1" id="input-file">
                  </div>
                  <!-- Submit button -->
                  <button class="btn btn-transparent">수정</button>
                </form>
              </div>
            </div>
            <div class="col-lg-6 col-md-6">
              <!-- Change Password -->
              <div class="widget change-password">
                <h3 class="widget-header user">비밀번호 변경</h3>
                <form action="#">
                  <!-- Current Password -->
                  <div class="form-group">
                    <label for="current-password">현재 비밀번호</label> <input type="password" class="form-control" id="current-password">
                  </div>
                  <!-- New Password -->
                  <div class="form-group">
                    <label for="new-password">새 비밀번호</label> <input type="password" class="form-control" id="new-password">
                  </div>
                  <!-- Confirm New Password -->
                  <div class="form-group">
                    <label for="confirm-password">새 비밀번호 확인</label> <input type="password" class="form-control" id="confirm-password">
                  </div>
                  <!-- Submit Button -->
                  <button class="btn btn-transparent">비밀번호 변경</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Row End -->
    </div>
    <!-- Container End -->
  </section>

  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <nav class="navbar navbar-expand-lg navbar-light navigation">

          <a class="navbar-brand" href="index.do"> <img src="resources/images/logo.png" alt="logo" width="40" height="50">
            <h3>포매</h3>
          </a>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav ml-auto main-nav ">
              <li class="nav-item active"><a class="nav-link" href="index.do">Home</a></li>

              <li class="nav-item active"><a class="nav-link dropdown-toggle" href="portlist.do">포트폴리오 </a></li>

                <li class="nav-item active"><a class="nav-link" href="PwriteForm.do">등록하기</a></li>

              <li class="nav-item active"><a class="nav-link" href="pmPurchase.do">MyPage</a></li>
            </ul>
            <ul class="navbar-nav ml-auto mt-10">
              <c:if test="${member == null}">
                <li class="nav-item"><a class="nav-link login-button" href="login.do">로그인</a></li>
                <li class="nav-item"><a class="nav-link login-button" href="register.do">회원가입</a></li>
              </c:if>
              <c:if test="${member != null}">
                <li class="nav-item"><a class="nav-link login-button" href="#">${member.user_id}</a></li>
                <li class="nav-item"><a class="nav-link login-button" href="logout.do">로그아웃</a></li>
              </c:if>
              <c:if test="${msg == false}">
                <script>
                  	alert("로그인 실패! 아이디와 비밀번호 확인해주세요.");
                  </script>
              </c:if>
            </ul>
          </div>
        </nav>
      </div>
    </div>
  </div>
</section>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>
<head>
</head>

<body>

  <div class="container">
    <div class="form-group" style="text-align: center;">
      <br> <br> <b><font size="6" color="gray">회원가입</font></b> <br> <br> <br>

      <form method="post" action="signUp.ing">
        <table class="table table-hover">
          <tr>
            <td id="title">아이디</td>
            <td><input type="text" class="form-control" name="m_id" maxlength="20"> <!--   <input type="button" value="중복확인"></td> -->
          </tr>

          <tr>
            <td id="title">비밀번호</td>
            <td><input type="password" name="m_pw" maxlength="15" class="form-control"></td>
          </tr>

          <tr>
            <td id="title">이름</td>
            <td><input type="text" name="m_name" maxlength="40" class="form-control"></td>
          </tr>
          <tr>
            <td id="title">이메일</td>
            <td><input type="email" name="m_email" maxlength="20" class="form-control">@ <select name="email_2">
                <option>naver.com</option>
                <option>daum.net</option>
                <option>gmail.com</option>
                <option>nate.com</option>
            </select></td>
          </tr>
          <tr>
            <td id="title">휴대전화</td>
            <td><input type="text" name="phone" class="form-control" /></td>
          </tr>

        </table>
        <br> <input type="submit" value="가입" class="btn btn-primary" /> <input type="button" value="취소" class="btn btn-primary" onClick="location.href='index.do'">
      </form>

    </div>
  </div>
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>
</html>
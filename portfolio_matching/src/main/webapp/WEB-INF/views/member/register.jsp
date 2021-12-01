<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/style_css.jsp"%>
<style>
#hdis {
    margin-top: 10px;
    margin-left: 10px;
    height: 50px;
    font-size: 10px;
    text-align: center;
    width: 150px;
    }
</style>
</head>
<body class="body-wrapper">
  <%@ include file="../../include/header.jsp"%>

  <section class="login py-5 border-top-1">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-8 align-item-center">
          <div class="border border">
            <h3 class="bg-gray p-4">회원가입</h3>

            <form id="regForm" action="register.do" method="post">
              <fieldset class="p-4">
               <div class="hre">
                <input type="text" placeholder="아이디" class="border p-3 w-100 my-2" id="user_id" name="user_id">
                <button type="button" id="idChk" class="idChk d-block py-3 px-4 bg-primary text-white border-0 rounded font-weight-bold" id="hdis" onclick="fn_idChk();" value="N">중복확인</button>
               </div>
                <input type="password" placeholder="비밀번호" class="border p-3 w-100 my-2" id="user_pw" name="user_pw">
                <input type="password" placeholder="비밀번호 확인" class="border p-3 w-100 my-2" id="user_pw_confirm" name="user_pw_confirm">
                <input type="email" placeholder="이메일" class="border p-3 w-100 my-2" id="user_email" name="user_email">
                <input type="text" placeholder="이름" class="border p-3 w-100 my-2" id="user_name" name="user_name">
                <input type="text" placeholder="연락처" class="border p-3 w-100 my-2" id="user_phone" name="user_phone">
                <div class="loggedin-forgot d-inline-flex my-3">
                  <input type="checkbox" id="chk_terms" name="chk_terms" class="mt-1"> <label for="registering" class="px-2"><span id="yee">이용 약관에 동의합니다.<a class="text-primary font-weight-bold" href="terms-condition.html">이용 약관</a></span> </label>
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
  <!-- <script src="./resources/js/register.js"></script> -->
  <script>
  	$(document).ready(function() {
		$("#submit").on("click", function() {
			if (confirm("입력된 정보로 가입하시겠습니까?") == true) {
				if ($("#user_id").val() == "") {
					alert("아이디를 입력해주세요.");
					$("#user_id").focus();
					return false;
				}
				if ($("#user_pw").val() == "") {
					alert("비밀번호를 입력해주세요.");
					$("#user_pw").focus();
					return false;
				}
				if ($("#user_name").val() == "") {
					alert("성명을 입력해주세요.");
					$("#user_name").focus();
					return false;
				}
				if ($("#user_pw").val() != $("#user_pw_confirm").val()) {
					alert("비밀번호가 일치하지 않습니다, 다시 확인해주세요.");
					$("#user_pw").focus();
					return false;
				}
				if ($("#chk_terms").prop("checked") == "false") {
					alert("이용 약관에 동의해주세오.");
					$("#chk_terms").focus();
					return false;
				}

				var idChkVal = $("#idChk").val();
				if (idChkVal == "N") {
					alert("중복확인 버튼을 눌러주세요.");
					return false;
				} else if (idChkVal == "Y") {
					$("#regForm").submit();
				}
				
				alert("가입이 완료되었습니다.");
			} else {
				return false;
			}
		});
	})
	function fn_idChk() {
		$.ajax({
			url: "idChk.do",
			type: "post",
			dataType: "json",
			data: { "user_id": $("#user_id").val() },
			success: function(data) {
				if (data == 1) {
					alert("중복된 아이디입니다.");
				} else if (data == 0) {
					$("#idChk").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		})
	}
  </script>
</body>

</html>
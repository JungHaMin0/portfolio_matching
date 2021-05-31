$(document).ready(function() {
	// 취소
	$(".cencle").on("click", function() {

		location.href = "/login";

	})

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
				alert("이용 약관에 동의해주십시오.");
				$("#chk_terms").focus();
				return false;
			}

			var idChkVal = $("#idChk").val();
			if (idChkVal == "N") {
				alert("중복확인 버튼을 눌러주세요.");
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
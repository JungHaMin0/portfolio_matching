$(document).ready(function() {
	// 취소
	$(".cencle").on("click", function() {

		location.href = "/login";

	})

	$("#submit").on("click", function() {
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
	});
})
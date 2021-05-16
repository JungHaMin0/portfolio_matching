$(document).ready(function() {
	$("#userSubmit").on("click", function() {
		if (confirm("정보를 수정하시겠습니까?") == true) {
			if ($("#user_name").val() == "") {
				alert("이름을 입력해주세요.");
				$("#user_name").focus();
				return false;
			}
			if ($("#user_phone").val() == "") {
				alert("연락처를 입력해주세요.");
				$("#user_phone").focus();
				return false;
			}
			if ($("#user_email").val() == "") {
				alert("이메일을 입력해주세요");
				$("#user_email").focus();
				return false;
			}
			alert("정보를 수정하였습니다. 다시 로그인해주세요.");
		} else {
			return;
		}
	});
	
	$("#pwSubmit").on("click", function() {
		if (confirm("비밀번호를 수정하시겠습니까?") == true) {
			if ($("#current_confirm_pw").val() == "") {
				alert("현재 비밀번호를 입력해주세요.");
				$("#current_pw").focus();
				return false;
			}
			if ($("#user_pw").val() == "") {
				alert("새 비밀번호를 입력해주세요.");
				$("#user_pw").focus();
				return false;
			}
			if ($("#current_confirm_pw").val() != $("#current_pw").val()) {
				alert("현재 비밀번호가 일치하지 않습니다.");
				$("#current_confirm_pw").val("");
				$("#current_confirm_pw").focus();
				return false;
			}
			if ($("#confirm_pw").val() != $("#user_pw").val()) {
				alert("입력하신 새 비밀번호와 새 비밀번호 확인이 일치하지 않습니다.");
				$("#confirm_pw").val("");
				$("#confirm_pw").focus();
				return false;
			}
			alert("비밀번호를 수정하였습니다. 다시 로그인해주세요.");
		} else {
			return;
		}
	});
})
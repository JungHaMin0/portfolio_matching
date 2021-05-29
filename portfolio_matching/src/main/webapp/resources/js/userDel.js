$(document).ready(function() {
	$("#delete").on("click", function() {
		if(confirm("정말 탈퇴하시겠습니까?") == true) {
			location.href = "userDelete.do";
		} else {
			return;
		}
	});
	
	$("#cancel").on("click", function() {
		location.href = "pmPurchase.do";
	});
})
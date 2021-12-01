<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section class="header">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <nav class="navbar navbar-expand-lg navbar-light navigation">

          <a class="navbar-brand" href="index.do"> <img src="resources/images/logo2.png" style="height: 38px;" alt="logo"></a>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav ml-auto main-nav ">
              <li class="nav-item active"><a class="nav-link" href="index.do">HOME</a></li>
              <li class="nav-item dropdown dropdown-slide"><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="">포트폴리오<span><!-- <i class="fa fa-angle-down"></i> --></span>
              </a> <!-- Dropdown list -->
                <div id="dropdown-category" class="dropdown-menu">
                  <ul class="main2">
                  </ul>
                </div></li>
              <c:if test="${member == null}">
                <li class="nav-item active"><a class="nav-link" href="" onclick="dd();">등록하기</a></li>

              </c:if>
              <c:if test="${member != null}">
                <li class="nav-item active"><a class="nav-link" href="PwriteForm.do">등록하기</a></li>
              </c:if>

            </ul>
            <ul class="navbar-nav ml-auto mt-10">
              <c:if test="${member == null}">
                <li class="nav-item"><a class="nav-link hsign" href="login.do">로그인</a></li>
                <li class="nav-item"><a class="nav-link login-button" href="register.do">무료 회원가입</a></li>
              </c:if>
              <c:if test="${member.user_ref == 0}">
                <li class="nav-item"><a class="nav-link hsign" href="pmPurchase.do">${member.user_id}<span>님 환영합니다</span></a></li> 
                <li class="nav-item"><a class="nav-link login-button" href="logout.do">로그아웃</a></li>
              </c:if>
              
              <c:if test="${member.user_ref == 1}">
                <li class="nav-item"><a class="nav-link hsign" href="aindex.do">관리자<span>님 환영합니다</span></a></li> 
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
<script src="./resources/plugins/jQuery/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$.ajax({
		url: "headerCategory.do",
		success: function(res) {
			var categoryList = eval(res.result);
			var categoryListCnt = res.cnt;
			var categorySubList = eval(res.resultSub);
			var categorySubListCnt = res.cntSub;
			
			var str = "";
			for(var i=0; i<categoryListCnt; i++) {
				var list = categoryList[i];
				str += '<li><a class="dropdown-item" href="portlist.do?main_id=' + list.id + '&id=0">' + list.name + '</a>'
						+ '<div class="main3"><ul>';
				for(var j=0; j<categorySubListCnt; j++) {
					var listSub = categorySubList[j];
					if(listSub.main_id == list.id) {
						str += '<li><a class="dropdown-item" href="portlist.do?main_id=' + listSub.main_id + '&id=' + listSub.id + '">' + listSub.name + '</a></li>'
					}
				}
				str += '</ul></div>'
			}
			$(".main2").html(str);
		}
	});
});
function dd(){
	alert("로그인후 이용해 주세요.");
}
</script>
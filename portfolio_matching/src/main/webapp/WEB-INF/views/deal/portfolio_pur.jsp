<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>
	function agreeCheck(frm) {
		if (frm.checkButton.disabled == true)
			frm.checkButton.disabled = false
		else
			frm.checkButton.disabled = true
	}
</script>
</head>

<body class="body-wrapper">
  <section class="section bg-gray">
    <!-- Container Start -->
    <div class="container">
      <form action="portfolio_payment.do" method="get" name="form">
        <input type="hidden" name="portfolio_id" value="${portfolio.portfolio_id}"> <input type="hidden" name="userId" value="${member.user_id}">

        <div class="row">

          <!-- Left sidebar -->
          <div class="col-md-8">
            <div class="product-details">
              <h1 class="product-title">결제하기</h1>
              <div class="widget dashboard-container my-adslist mt-3">
                <h3>주문 내역</h3>
                <table class="table table-responsive product-dashboard-table mt-3">
                  <thead>
                    <tr>
                      <th class="text-center">이미지</th>
                      <th>포트폴리오 정보</th>
                      <th class="text-center">&nbsp;&nbsp;작업&nbsp;&nbsp;기간&nbsp;</th>
                      <th class="text-right">가격</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="product-thumb"><img width="105px" height="auto" src="data:image/jpeg;base64,<c:out value='${portfolio.portfolio_Img }'/>" alt="image description"></td>
                      <td class="product-details">
                        <h3 class="title">${portfolio.portfolio_title}</h3> <span class="add-id"><strong>판매자</strong> ${seller.user_id}</span> <span><strong>카테고리(대)</strong> ${portfolio.portfolio_category_main.name}</span> <span class="status"><strong>카테고리(소)</strong>${portfolio.portfolio_category_sub.name}</span> <span class="location"><strong>등록일</strong> <fmt:formatDate pattern="yyyy년 mm월 dd일" value="${portfolio.portfolio_regDate}" /></span>
                      </td>
                      <td class="product-category"><span class="categories">${portfolio.portfolio_term} 일</span></td>
                      <td class="action text-right pr-2" data-title="Action"><span class="categories">${portfolio.portfolio_price} 원</span></td>
                    </tr>
                  </tbody>
                </table>

                <table class="mt-4" style="width: 100%">
                  <tr>
                    <td>
                      <h3 class="widget-header">판매자 정보</h3>
                      <ul class="">
                        <li><span class="add-id"><strong>판매자</strong>&nbsp;&nbsp;&nbsp; ${seller.user_id}</span></li>
                        <li><span class="add-id"><strong>연락처</strong>&nbsp;&nbsp;&nbsp; ${seller.user_phone}</span></li>
                        <li><span class="add-id"><strong>이메일</strong>&nbsp;&nbsp;&nbsp; ${seller.user_email}</span></li>
                      </ul>
                    </td>
                    <td>
                      <h3 class="widget-header">구매자 정보</h3>
                      <ul class="">
                        <li><span class="add-id"><strong>구매자</strong>&nbsp;&nbsp;&nbsp; ${member.user_id}</span></li>
                        <li><span class="add-id"><strong>연락처</strong>&nbsp;&nbsp;&nbsp; ${member.user_phone}</span></li>
                        <li><span class="add-id"><strong>이메일</strong>&nbsp;&nbsp;&nbsp; ${member.user_email}</span></li>
                      </ul>
                    </td>
                  </tr>
                </table>

              </div>



              <div class="content">
                <div class="tab-content">
                  <h3 class="tab-title">결제 방법</h3>
                  <div class="col-md-12">
                    <div>
                      <ul class="nav nav-pills  justify-content-center" id="pills-tab" role="tablist">
                        <li class="nav-item" style="border: 1px solid #5672F9;"><a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">카카오페이</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>

              <div class="content">
                <div class="tab-content">
                  <div class="col-md-12">
                    <ul class="list-inline">
                      <h3 class="font-weight-bold">주의사항</h3>
                      <li>전자상거래 등에서의 소비자보호법에 관한 법률에 의거하여 미성년자가 체결한 계약은 법정대리인이 동의하지 않은 경우 본인 또는 법정대리인이 취소할 수 있습니다.</li>
                      <li>포메에 등록된 포폴과 포폴의 내용은 판매자가 등록한 것으로 ㈜포매에서는 그 등록내역에 대하여 일체의 책임을 지지 않습니다.
                      <li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="sidebar" style="position: fixed; width: 350px;">
              <div class="widget user text-center">
                <h3>결제 금액</h3>
                <p class="member-time">
                  <fmt:formatNumber value="${portfolio.portfolio_price}" pattern="###,###,###" />
                </p>

                <div class="loggedin-forgot d-inline-flex my-3">
                  <input type="checkbox" id="agree" name="agree" class="mt-1" onClick="agreeCheck(this.form)"> <label for="registering" class="px-2">결제에 동의합니다.</label>
                </div>

                <ul class="list-inline mt-20">
                  <li class="list-inline-item"><input type="submit" id="btn1" name="checkButton" class="btn btn-contact d-inline-block  btn-primary px-lg-5 my-1 px-md-3" value="결제하기" disabled></li>
                </ul>
              </div>
            </div>
          </div>

        </div>
      </form>
    </div>
    <!-- Container End -->
  </section>
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>

</body>

</html>
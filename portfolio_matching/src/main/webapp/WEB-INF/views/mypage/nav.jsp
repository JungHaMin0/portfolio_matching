<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-md-10 offset-md-1 col-lg-4 offset-lg-0">
  <div class="sidebar">
    <!-- User Widget -->
    <div class="widget user-dashboard-profile">
      <!-- User Image -->
      <div class="profile-thumb">
        <img src="resources/images/logo.png" alt="" class="rounded-circle">
      </div>
      <!-- User Name -->
      <h5 class="text-center">${member.user_id}</h5>
    </div>
    <!-- Dashboard Links -->
    <div class="widget user-dashboard-menu">
      <hr />
      <strong>구매 관리</strong>
      <hr />
      <ul>
        <li><a href="pmPurchase.do"><i class="fa fa-credit-card"></i> 구매 내역</a></li>
        <li><a href="pmInterest.do"><i class="fa fa-bookmark-o"></i> 관심 상품</a></li>
        <li><a href="pmInquiry.do"><i class="fa fa-commenting-o"></i> 문의 내역</a></li>
      </ul>

      <hr />
      <strong>판매 관리</strong>
      <hr />
      <ul>
        <li><a href="smSale.do"><i class="fa fa-hourglass-half"></i> 판매 중</a></li>
        <li><a href="smProfit.do"><i class="fa fa-krw"></i> 수익 현황</a></li>
        <li><a href="smInquiry.do"><i class="fa fa-commenting"></i> 문의 내역</a></li>
      </ul>

      <hr />
      <strong>내 정보 관리</strong>
      <hr />
      <ul>
        <li><a href="userMod.do"><i class="fa fa-user"></i> 내 정보 수정</a></li>
        <li><a href="userDel.do"><i class="fa fa-remove"></i> 회원 탈퇴</a></li>
      </ul>
    </div>
  </div>
</div>
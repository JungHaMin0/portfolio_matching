<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-md-10 offset-md-1 col-lg-4 offset-lg-0">
	<div class="sidebar">
		<!-- User Widget -->
		<div class="widget user-dashboard-profile">
			<!-- User Image -->
			<div class="profile-thumb">
				<img src="images/user/user-thumb.jpg" alt="" class="rounded-circle">
			</div>
			<!-- User Name -->
			<h5 class="text-center">정하민</h5>
			<p>Joined February 06, 2017</p>
		</div>
		<!-- Dashboard Links -->
		<div class="widget user-dashboard-menu">
			<hr />
			<strong><a href="Pm.do">구매 관리</a></strong>
			<hr />
			<ul>
				<li><a href="PmInterest.do"><i class="fa fa-bookmark-o"></i> 관심 상품</a></li>
				<li><a href="PmPurStat.do"><i class="fa fa-credit-card"></i> 결제 내역</a></li>
				<li><a href="PmServEvl.do"><i class="fa fa-thumbs-o-up"></i> 서비스 평가</a></li>
				<li><a href="PmQuest.do"><i class="fa fa-commenting-o"></i> 문의 내역</a></li>
			</ul>

			<hr />
			<strong><a href="Sm.do">판매 관리</a></strong>
			<hr />
			<ul>
				<li><a href="SmSale.do"><i class="fa fa-hourglass-half"></i> 판매 중</a></li>
				<li><a href="SmComplete.do"><i class="fa fa-hourglass-end"></i> 판매 완료</a></li>
				<li><a href="SmQuest.do"><i class="fa fa-commenting"></i> 문의 내역</a></li>
				<li><a href="SmProfit.do"><i class="fa fa-krw"></i> 수익 현황</a></li>
			</ul>

			<hr />
			<strong>내 정보 관리</strong>
			<hr />
			<ul>
				<li><a href="userMod.do"><i class="fa fa-user"></i> 회원정보수정</a></li>
				<li><a href="userDel.do"><i class="fa fa-remove"></i> 회원탈퇴</a></li>
			</ul>
		</div>
	</div>
</div>
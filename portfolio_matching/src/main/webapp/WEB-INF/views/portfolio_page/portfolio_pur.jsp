<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
</head>

<body class="body-wrapper">
  <section class="section bg-gray">
    <!-- Container Start -->
    <div class="container">
      <div class="row">
        <!-- Left sidebar -->
        <div class="col-md-8">
          <div class="product-details">
            <h1 class="product-title">결제하기</h1>
            <div class="content">
              <div class="tab-content" id="pills-tabContent">
                <h3 class="tab-title">주문 내역</h3>

                <div class="col-md-12">
                  <div style="float: left; margin-right:20px;"><img width="120px" height="auto" src="resources/images/item_image1.PNG" alt="image description"></div>
                  <div style="float: left;"><h4>웹 사이트 제작</h4><p>웹 사이트 제작해드려요~~</p></div>
                  <div style="clear:both;"></div>
                </div>
                
                
                <div class="col-md-12">
                  
                  <ul class="list-inline mt-20">
                    <li>포트폴리오 설명</li>
                    <li>포트폴리오 설명</li>
                    <li>포트폴리오 설명</li>
                    <li>포트폴리오 설명</li>
                    <li>포트폴리오 설명</li>
                    <li>포트폴리오 설명</li>
                  </ul>
                </div>
                
                <hr />
                
                <div class="col-md-12">
                  <ul class="list-inline mt-20">
                    <li>✔ 옵션 설명</li>
                    <li>✔ 옵션 설명</li>
                    <li>✔ 옵션 설명</li>
                    <li>✔ 옵션 설명</li>
                    <li>✔ 옵션 설명</li>
                    <li>✔ 옵션 설명</li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="content">
              <div class="tab-content">
                <h3 class="tab-title">결제 방법</h3>
                <div class="col-md-12">
                  <div>
                    <ul class="nav nav-pills  justify-content-center" id="pills-tab" role="tablist">
                      <li class="nav-item" style="border: 1px solid #5672F9;"><a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">신용카드</a></li>
                      <li class="nav-item" style="border: 1px solid #5672F9;"><a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">무통장 입금</a></li>
                      <li class="nav-item" style="border: 1px solid #5672F9;"><a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">페이코(PAYCO)</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="content">
              <div class="tab-content">
                <div class="col-md-12">
                  <ul class="list-inline">
                    <li>유의사항 1</li>
                    <li>유의사항 2</li>
                    <li>유의사항 3</li>
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
              <p class="member-time">440,000 원</p>
              
              <div class="loggedin-forgot d-inline-flex my-3">
                  <input type="checkbox" id="chk_terms" name="chk_terms" class="mt-1"> <label for="registering" class="px-2">결제에 동의합니다.</label>
                </div>
              
              <ul class="list-inline mt-20">
                <li class="list-inline-item"><a href="portfolio_payment.do" class="btn btn-contact d-inline-block  btn-primary px-lg-5 my-1 px-md-3">결제하기</a></li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>
    <!-- Container End -->
  </section>
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>

</body>

</html>
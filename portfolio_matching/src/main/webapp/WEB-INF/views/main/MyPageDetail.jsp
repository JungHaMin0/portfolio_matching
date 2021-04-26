<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- FAVICON -->
  <link href="./resources/images/favicon.png" rel="shortcut icon">
  <!-- PLUGINS CSS STYLE -->
  <!-- <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="./resources/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="./resources/plugins/bootstrap/css/bootstrap-slider.css">
  <!-- Font Awesome -->
  <link href="./resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Owl Carousel -->
  <link href="./resources/plugins/slick-carousel/slick/slick.css" rel="stylesheet">
  <link href="./resources/plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
  <!-- Fancy Box -->
  <link href="./resources/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="./resources/plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
  <!-- CUSTOM CSS -->
  <link href="./resources/css/style.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  
  <![endif]-->
 <style>
     table table-hover {
        border-collapse: collapse;
        padding-left:250;
        width: 600px;
        top:100px;
          float: left;
      }
      th, td {
         float: left;
        padding: 10px;
        text-align: center;
      }
  #one {
position: relative;
top:45px;
left:380px;
  }
  
#text1 {
position: relative;
top:55px;
left:375px;
}

#tab {
position: relative;
top:263px;
left:375px;
}

    </style>
</head>
<body>

<section>
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <nav class="navbar navbar-expand-lg navbar-light navigation">
                  <a class="navbar-brand" href="index.do"> <img
                     src="resources/images/logo.png" alt="logo" width="40" height="50">
                     <h3>포매</h3>
                  </a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <button class="navbar-toggler" type="button"
                     data-toggle="collapse" data-target="#navbarSupportedContent"
                     aria-controls="navbarSupportedContent" aria-expanded="false"
                     aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <div class="widget search p-0 col-md-8">
                  <div class="input-group">
                      <input type="text" class="form-control" id="expire" placeholder="Search...">
                      <span class="input-group-addon"><i class="fa fa-search"></i></span>
                   </div>

                  
                     
               </div>
                     <ul class="navbar-nav ml-auto mt-10">
                        <li class="nav-item">
                        <a class="nav-link login-button" href="login.do">로그인</a></li>
                         <li class="nav-item">
                         <a class="nav-link login-button"
                           href="Join.do">회원가입</a></li>
                           
                     </ul>
                  </div>
               </nav>
            </div>
         </div>
      </div>
   </section>
   

<div id=one>
<button type="button" class="btn btn-primary btn-circle btn-lg">7</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-success btn-circle btn-lg">22</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-circle btn-lg">25</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-danger btn-circle btn-lg">17</button>
 </div>
 
<div id=text1>
관심상품 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
결제 내역 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
서비스 평가 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
문의내역
</div>

<div id = tab>
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#qwe">구매 중 상품</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#asd">구매 완료 상품</a>
  </li>
 
</ul>
<div class="tab-content">
  <div class="tab-pane fade show active" id="구매 중 상품">
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id ornare libero. Vivamus iaculis, justo vel mattis pharetra, nisi ligula varius nisl, sit amet mollis tortor ligula vitae nisi.</p>
  </div>
  <div class="tab-pane fade" id="구매 완료 상품">
    <p>Nunc vitae turpis id nibh sodales commodo et non augue. Proin fringilla ex nunc. Integer tincidunt risus ut facilisis tristique.</p>
  </div>
 
</div>
</div>


<table class="table">

  <thead>
    <tr>
      <th scope="col">마이페이지</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">구매 관리</th>
      <tr>
      <td>관심 상품</td>
        <tr>
      <td>결제 내역</td>
        <tr>
      <td>서비스 평가</td>
        <tr>
      <td>문의 내역</td>
    </tr>
    <tr>
      <th scope="row">판매 관리</th>
        <tr>
      <td>판매 중</td>
           <tr>
      <td>판매 완료</td>
           <tr>
      <td>수익 현황</td>
           <tr>
      <td>문의 내역</td>
    </tr>
    <tr>
      <th scope="row">회원 정보</th>
           <tr>
      <td>회원정보 수정</td>
           <tr>
      <td>회원 탈퇴</td>
    </tr>
  </tbody>
</table>


<footer class="footer section section-sm">
  <!-- Container Start -->
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-7 offset-md-1 offset-lg-0">
        <!-- About -->
        <div class="block about">
          <!-- footer logo -->
          <!-- description -->
          <p class="alt-color">
       우리는 아웃소싱 시장의 거래 방식을 
          혁신하고 있습니다.<br>
          회원/회사와 기업을 연결하여 <br>
          기업의 디지털 기술을 활용한 비즈니스 혁신을 돕고 있습니다.
</p>
        </div>
      </div>
      <!-- Link list -->
      <div class="col-lg-2 offset-lg-1 col-md-3">
        <div class="block">
          <h4>포매</h4>
          <ul>
            <li><a href="port.do">포매소개</a></li>
            <li><a href="#">이용약관</a></li>
            <li><a href="#">개인정보 처리방침</a></li>
      
          </ul>
        </div>
      </div>
      <!-- Link list -->
      <div class="col-lg-2 col-md-3 offset-md-1 offset-lg-0">
        <div class="block">
          <h4>서비스 안내</h4>
          <ul>
            <li><a href="#">서비스 안내</a></li>
            
            <li><a href="#">FAQ</a></li>
          </ul>
        </div>
      </div>
      
    <!-- Promotion -->
    
  <div class="col-lg-4 col-md-7">
      <div class="block">
          <h4>사업자 정보</h4>
          <ul>
            <li>상호:(주)포매 | 대표: 정다윤</li>
            <li>사업자등록번호: 000-001-00002</li>
            <li>주소:서울특별시 영등포구 여의도동 63로 50</li>
            <li>서비스 이용문의 :1234-5678</li>
            <li>이메일 : help@PORT.com</li>
          </ul>
        </div>
      </div>

      
    </div>
  </div>
  <!-- Container End -->
</footer>

<footer class="footer-bottom">
  <!-- Container Start -->
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-12">
        <!-- Copyright -->
        <div class="copyright">
          <p>Copyright © <script>
              var CurrentYear = new Date().getFullYear()
              document.write(CurrentYear)
            </script>portfolio_matching. All Rights Reserved</p>
        </div>
      </div>
      <div class="col-sm-6 col-12">
        <!-- Social Icons -->
        <ul class="social-media-icons text-right">
          <li><a class="fa fa-facebook" href="https://www.facebook.com" target="_blank"></a></li>
          <li><a class="fa fa-twitter" href="https://www.twitter.com" target="_blank"></a></li>
          <li><a class="fa fa-pinterest-p" href="https://www.pinterest.com" target="_blank"></a></li>
        
        </ul>
      </div>
    </div>
  </div>
  <!-- Container End -->
  <!-- To Top -->
 
</footer>

<!-- JAVASCRIPTS -->
<script src="./resources/plugins/jQuery/jquery.min.js"></script>
<script src="./resources/plugins/bootstrap/js/popper.min.js"></script>
<script src="./resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/plugins/bootstrap/js/bootstrap-slider.js"></script>
  <!-- tether js -->
<script src="./resources/plugins/tether/js/tether.min.js"></script>
<script src="./resources/plugins/raty/jquery.raty-fa.js"></script>
<script src="./resources/plugins/slick-carousel/slick/slick.min.js"></script>
<script src="./resources/plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
<script src="./resources/plugins/fancybox/jquery.fancybox.pack.js"></script>
<script src="./resources/plugins/smoothscroll/SmoothScroll.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="./resources/plugins/google-map/gmap.js"></script>
<script src="./resources/js/script.js"></script>

</body>
</html>
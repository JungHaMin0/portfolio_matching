<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>

<!-- ///////////////////////////////------부트스트랩 링크------///////////////////////////////-->
<link
   href="https://fonts.googleapis.com/css?family=Roboto:300,400,700,900"
   rel="stylesheet">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/fonts/icomoon/style.css'/>">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/bootstrap-datepicker.css'/>">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/jquery.fancybox.min.css'/>">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/owl.carousel.min.css'/>">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/owl.theme.default.min.css'/>">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/fonts/flaticon/font/flaticon.css'/>">
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/aos.css'/>">

<!-- MAIN CSS -->
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/style.css'/>">

<!-- Main CSS -->
<link rel="stylesheet"
   href="<c:url value='/resources/bootstrap/css/app.css'/>">
<link
   href="https://fonts.googleapis.com/css?family=Nunito:300,400,500,600,700,800,900&amp;display=swap"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome-font-awesome.min.css">
   
     <!-- FAVICON -->
  <link href="./resources/img/favicon.jpg" rel="shortcut icon">
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
<!-- i class -->
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
   

<!-- ///////////////////////////////------부트스트랩 링크 END------///////////////////////////////-->

<!-- CSS only -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
   integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
   crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
   integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
   integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
   crossorigin="anonymous"></script>
</head>
<body>

   <div class="container">
      <div class="form-group" style="text-align: center;">
         <br> <br> <b><font size="6" color="gray">회원가입</font></b> <br>
         <br> <br>

         <form method="post" action="signUp.ing">
            <table class="table table-hover">
               <tr>
                  <td id="title">아이디</td>
                  <td><input type="text" class="form-control" name="m_id"
                     maxlength="20"> 
                   <!--   <input type="button" value="중복확인"></td> -->
               </tr>

               <tr>
                  <td id="title">비밀번호</td>
                  <td><input type="password" name="m_pw" maxlength="15"
                     class="form-control"></td>
               </tr>

               <tr>
                  <td id="title">이름</td>
                  <td><input type="text" name="m_name" maxlength="40"
                     class="form-control"></td>
               </tr>
           <tr>
                <!--   <td id="title">이메일</td>
                  <td><input type="email" name="m_email" maxlength="20"
                     class="form-control">@ <select name="email_2">
                        <option>naver.com</option>
                        <option>daum.net</option>
                        <option>gmail.com</option>
                        <option>nate.com</option>
                  </select></td>
               </tr> -->

              <!--  <tr>
                  <td id="title">휴대전화</td>
                  <td><input type="text" name="phone" class="form-control" /></td>
               </tr> -->

            </table>
            <br> <input type="submit" value="가입" class="btn btn-primary"/>
              <input type="button" value="취소" class="btn btn-primary"  onClick="location.href='index.do'">
         </form>
        
      </div>


 

   </div>


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
            <li>주소:서울특별시 영등포구 여의도동 63로 50 </li>
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

   <!-- *****************************   자바 스크립트 섹션     ***********************-->
   
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
   <script
      src="<c:url value='/resources/bootstrap/js/jquery-3.3.1.min.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/jquery-migrate-3.0.0.js'/>"></script>
   <script src="<c:url value='/resources/bootstrap/js/popper.min.js'/>"></script>
   <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/owl.carousel.min.js'/>"></script>
   <script src="<c:url value='/resources/bootstrap/js/jquery.sticky.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/jquery.waypoints.min.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/jquery.animateNumber.min.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/jquery.fancybox.min.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/jquery.stellar.min.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/jquery.easing.1.3.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/bootstrap-datepicker.min.js'/>"></script>
   <script
      src="<c:url value='/resources/bootstrap/js/isotope.pkgd.min.js'/>"></script>
   <script src="<c:url value='/resources/bootstrap/js/aos.js'/>"></script>


   <script src="<c:url value='/resources/bootstrap/js/typed.js'/>"></script>

   <script src="<c:url value='/resources/bootstrap/js/main.js'/>"></script>
</body>
</html>
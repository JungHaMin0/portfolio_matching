<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>포매</title>
  
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

</head>

<body class="body-wrapper">


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
<!--===============================
=            Hero Area            =
================================-->

<section class="hero-area bg-1 text-center overly">
   <!-- Container Start -->
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <!-- Header Contetnt -->
            <div class="content-block">
               <h1>무료로 포트폴리오를 등록하세요 </h1>
               <p>포매만이 가능한 안전한 자산 관리 시스템으로 안전하게
                  포트폴리오를 등록하고 판매해보세요!
               </p>
               <div class="short-popular-category-list text-center">
                  <h2>Popular Category</h2>
                  <ul class="list-inline">
                     <li class="list-inline-item">
                        <a href="category.html"><i class="fa fa-bed"></i> Web</a></li>
                     <li class="list-inline-item">
                        <a href="category.html"><i class="fa fa-grav"></i> App</a>
                     </li>
                     <li class="list-inline-item">
                        <a href="category.html"><i class="fa fa-car"></i> Design</a>
                     </li>
                     <li class="list-inline-item">
                        <a href="category.html"><i class="fa fa-cutlery"></i> photo</a>
                     </li>
                     <li class="list-inline-item">
                        <a href="category.html"><i class="fa fa-coffee"></i> moovie</a>
                     </li>
                  </ul>
               </div>
               
            </div>
            <!-- Advance Search -->
            <div class="advance-search">
                  <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12 align-content-center">
                              <form>
                                 <div class="form-row">
                                    <div class="form-group col-md-4">
                                       <input type="text" class="form-control my-2 my-lg-1" id="inputtext4" placeholder="What are you looking for">
                                    </div>
                                    <div class="form-group col-md-3">
                                       <select class="w-100 form-control mt-lg-1 mt-md-2">
                                          <option>Category</option>
                                          <option value="1">Top rated</option>
                                          <option value="2">Lowest Price</option>
                                          <option value="4">Highest Price</option>
                                       </select>
                                    </div>
                                    <div class="form-group col-md-3">
                                       <input type="text" class="form-control my-2 my-lg-1" id="inputLocation4" placeholder="Location">
                                    </div>
                                    <div class="form-group col-md-2 align-self-center">
                                       <button type="submit" class="btn btn-primary">Search Now</button>
                                    </div>
                                 </div>
                              </form>
                           </div>
                        </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>
   <!-- Container End -->
</section>

<!--===================================
=            Client Slider            =
====================================-->


<!--===========================================
=           포트폴리오 목록        =
============================================-->

<section class="popular-deals section bg-gray">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="section-title">
               <h1>추천 포트폴리오</h1>   
            </div>
         </div>
      </div>
      <div class="row">
         <!-- offer 01 -->
         <div class="col-lg-12">
            <div class="trending-ads-slide">
               <div class="col-sm-12 col-lg-4">
                  <!-- product card -->
<div class="product-item bg-light">
   <div class="card">
      <div class="thumb-content">
         <!-- <div class="price">$200</div> -->
         <a href="portlist.do">
            <img class="card-img-top img-fluid" src="resources/Picture/app.PNG" alt="Card image cap" width="600px" height="400px">
         </a>
      </div>
      <div class="card-body">
          <h4 class="card-title"><a href="portlist.do">모바일 앱 제작</a></h4>
          <ul class="list-inline product-meta">
             <li class="list-inline-item">
                <a href="#"><i class="fa fa-folder-open-o"></i>모바일 앱</a>
             </li>
             <li class="list-inline-item">
                <a href="#"><i class="fa fa-calendar"></i>2월7일</a>
             </li>
          </ul>
          <p class="card-text">최적화된 모바일 앱을 개발해 드립니다.</p>
          <div class="product-ratings">
             <ul class="list-inline">
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                
             </ul>
          </div>
      </div>
   </div>
</div>



               </div>
               <div class="col-sm-12 col-lg-4">
                  <!-- product card -->
<div class="product-item bg-light">
   <div class="card">
      <div class="thumb-content">
         <!-- <div class="price">$200</div> -->
         <a href="portlist.do">
            <img class="card-img-top img-fluid" src="resources/Picture/site.PNG" alt="Card image cap" width="600px" height="400px">
         </a>
      </div>
      <div class="card-body">
          <h4 class="card-title"><a href="portlist.do">커뮤니티 사이트</a></h4>
          <ul class="list-inline product-meta">
             <li class="list-inline-item">
                <a href="#"><i class="fa fa-folder-open-o"></i>웹사이트 개발</a>
             </li>
             <li class="list-inline-item">
                <a href="#"><i class="fa fa-calendar"></i>4월15일</a>
             </li>
          </ul>
          <p class="card-text">사이트제작 나만의 플랫폼 만들어드립니다. </p>
          <div class="product-ratings">
             <ul class="list-inline">
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item"><i class="fa fa-star"></i></li>
             </ul>
          </div>
      </div>
   </div>
</div>



               </div>
               <div class="col-sm-12 col-lg-4">
                  <!-- product card -->
<div class="product-item bg-light">
   <div class="card">
      <div class="thumb-content">
         <!-- <div class="price">$200</div> -->
         <a href="portlist.do">
            <img class="card-img-top img-fluid" src="resources/Picture/home.PNG" alt="Card image cap" width="600px" height="400px">
         </a>
      </div>
      <div class="card-body">
          <h4 class="card-title"><a href="portlist.do">반응형 홈페이지 제작</a></h4>
          <ul class="list-inline product-meta">
             <li class="list-inline-item">
                <a href="single.html"><i class="fa fa-folder-open-o"></i>웹사이트 개발</a>
             </li>
             <li class="list-inline-item">
                <a href="#"><i class="fa fa-calendar"></i>4월5일</a>
             </li>
          </ul>
          <p class="card-text">거품없는 가격으로 홈페이지 제작해 드립니다.</p>
          <div class="product-ratings">
             <ul class="list-inline">
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                
             </ul>
          </div>
      </div>
   </div>
</div>



               </div>
               <div class="col-sm-12 col-lg-4">
                  <!-- product card -->
<div class="product-item bg-light">
   <div class="card">
      <div class="thumb-content">
         <!-- <div class="price">$200</div> -->
         <a href="portlist.do">
            <img class="card-img-top img-fluid" src="resources/Picture/logo.PNG" alt="Card image cap" width="600px" height="400px">
         </a>
      </div>
      <div class="card-body">
          <h4 class="card-title"><a href="portlist.do">로고디자인</a></h4>
          <ul class="list-inline product-meta">
             <li class="list-inline-item">
                <a href="#"><i class="fa fa-folder-open-o"></i>로고·브랜딩</a>
             </li>
             <li class="list-inline-item">
                <a href="#"><i class="fa fa-calendar"></i>3월31일</a>
             </li>
          </ul>
          <p class="card-text">생각을 뛰어넘는 로고를 만들어 드립니다.</p>
          <div class="product-ratings">
             <ul class="list-inline">
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                <li class="list-inline-item"><i class="fa fa-star"></i></li>
             </ul>
          </div>
      </div>
   </div>
</div>



               </div>
            </div>
         </div>
         
         
      </div>
   </div>
</section>



<!--==========================================
=           카테고리 목록       =
===========================================-->

<section class=" section">
   <!-- Container Start -->
   <div class="container">
      <div class="row">
         <div class="col-12">
            <!-- Section title -->
            <div class="section-title">
               <h2>전체 카테고리</h2>
            </div>
            <div class="row">
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     <div class="header">
                      <i class="fa fa-paint-brush icon-bg-1" aria-hidden="true"></i>
                        <h4>디자인</h4>
                     </div>
                     <ul class="category-list" >
                           <li><a href="#">로고·브랜딩<span>0</span></a></li>
                        <li><a href="#">상세·이벤트 페이지<span>0</span></a></li>
                        <li><a href="#">인쇄·홍보물 <span>0</span></a></li>
                        <li><a href="#">제품·패키지<span>0</span></a></li>
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     <div class="header">
                        <i class="fa fa-laptop icon-bg-2"></i> 
                        <h4>IT·프로그래밍</h4>
                     </div>
                     <ul class="category-list" >
                        <li><a href="#">웹사이트 개발<span>0</span></a></li>
                        <li><a href="#">쇼핑몰·커머스<span>0</span></a></li>
                        <li><a href="#">모바일 앱<span>0</span></a></li>
                        <li><a href="#">프로그램 개발<span>0</span></a></li>
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     <div class="header">
                        <i class="fa fa-camera icon-bg-3" aria-hidden="true"></i>
                        <h4>영상·사진</h4>
                     </div>
                     <ul class="category-list" >
                        <li><a href="#">영상찰영·편집<span>0</span></a></li>
                        <li><a href="#">유튜브 제작 <span>0</span></a></li>
                        <li><a href="#">애니메이션 <span>0</span></a></li>
                        <li><a href="#">사진촬영<span>0</span></a></li>
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     <div class="header">
                        <i class="fa fa-shopping-basket icon-bg-4"></i> <!-- 아이콘 -->
                        <h4>마케팅</h4>
                     </div>
                     <ul class="category-list" >
                        <li><a href="#">종합광고대행 <span>0</span></a></li>
                        <li><a href="#">블로그·카페<span>0</span></a></li>
                        <li><a href="#">SNS 마케팅<span>0</span></a></li>
                        <li><a href="#">쇼핑몰·스토어<span>0</span></a></li>
                     
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     <div class="header">
                     <i class="fa fa-building icon-bg-5"" aria-hidden="true"></i> 
                        <h4>취업</h4>
                     </div>
                     <ul class="category-list" >
                        <li><a href="#">직무 멘토링 <span>0</span></a></li>
                        <li><a href="#">자소서·이력서(국내기업)<span>0</span></a></li>
                        <li><a href="#">자소서·이력서(외국기업)<span>0</span></a></li>
                        <li><a href="#">자소서(입시·기타)<span>0</span></a></li>
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     <div class="header">
                        <i class="fa fa-pencil icon-bg-6"></i> 
                        <h4>문서·글쓰기</h4>
                     </div>
                     <ul class="category-list" >
                        <li><a href="#">기업명·네이밍 <span>0</span></a></li>
                        <li><a href="#">제품 카피라이팅<span>0</span></a></li>
                        <li><a href="#">광고 카피라이팅 <span>0</span></a></li>
                        <li><a href="#">마케팅 글작성<span>0</span></a></li>
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     <div class="header">
                        <i class="fa fa-archive icon-bg-7"></i> 
                        <h4>주문제작</h4>
                     </div>
                     <ul class="category-list" >
                        <li><a href="#">인쇄 <span>0</span></a></li>
                        <li><a href="#">간판 <span>0</span></a></li>
                        <li><a href="#">3D프린팅 <span>0</span></a></li>
                        <li><a href="#">기념품 제작<span>0</span></a></li>
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               <!-- Category list -->
               <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                  <div class="category-block">
                     
                     <div class="header">
                        <i class="fa fa-bars icon-bg-8"></i> 
                        <h4>기타</h4>
                     </div>
                     <ul class="category-list" >
                        <li><a href="#">통역<span>0</span></a></li>
                        <li><a href="#">비즈니스컨설팅 <span>0</span></a></li>
                        <li><a href="#">레슨·실무교육 <span>0</span></a></li>
                        <li><a href="#">운세·상담 <span>0</span></a></li>
                     </ul>
                  </div>
               </div> <!-- /Category List -->
               
               
            </div>
         </div>
      </div>
   </div>
   <!-- Container End -->
</section>


<!--====================================
=            Call to Action            =
=====================================-->

<section class="call-to-action overly bg-3 section-sm">
   <!-- Container Start -->
   <div class="container">
      <div class="row justify-content-md-center text-center">
         <div class="col-md-8">
            <div class="content-holder">
               <h2>포매에서 빠르고 안전한 아웃소싱을 경험해 보세요.</h2>
               <ul class="list-inline mt-30">
                  <li class="list-inline-item"><a class="btn btn-main" href="#">무료로 포트폴리오 등록하기</a></li>
                
               </ul>
            </div>
         </div>
      </div>
   </div>
   <!-- Container End -->
</section>

<!--============================
=            Footer            =
=============================-->

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
<!-- Footer Bottom -->
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
  <div class="top-to">
    <a id="top" class="" href="index.do"><i class="fa fa-angle-up"></i></a>
  </div>
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



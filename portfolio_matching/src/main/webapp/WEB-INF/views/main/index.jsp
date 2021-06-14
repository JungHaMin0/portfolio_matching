<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/style_css.jsp"%>
</head>
<!-------------------------       Hero area           ------------------------->
<body>
<%@ include file="../../include/header.jsp"%>

<section class="hero-area bg-1 text-center overly">
	<img src="resources/images/port_banner.png" class="asdasd">
</section>

<!-------------------------       client slide         ------------------------->


<!-------------------------       포트폴리오 목록                        ------------------------->
<section class="popular-deals section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">
          <h1>최신 포트폴리오</h1>
        </div>
      </div>
    </div>
    <div class="row">
      <!-- offer 01 -->
      <div class="col-lg-12">
        <div class="trending-ads-slide">
          <div class="col-sm-12 col-lg-4">
            <!-- product card -->
          <c:forEach items="${portlist}" var = "portlist">
            <div class="product-item bg-light">
              <div class="card">
                <div class="thumb-content">
                 
                  <a href="portlist.do"> 
                  <img class="card-img-top img-fluid" src="data:image/jpeg;base64,<c:out value='${portlist.portfolio_Img }'/>" alt="Card image cap" width="600px" height="400px">
                  </a>
                </div>
                <div class="card-body">
                  <h4 class="card-title"><a href="portlist.do">${portlist.portfolio_bCat}</a></h4>
                  <ul class="list-inline product-meta">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-folder-open-o"></i>${portlist.portfolio_sCat}</a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-calendar"></i>${portlist.portfolio_term}</a></li>
                  </ul>
                  <p class="card-text">${portlist.portfolio_content}</p>
                  <div class="product-ratings">
                    <ul class="list-inline">
                    <li class="list-inline-item selected"><i class="fa fa-star"></i>${portlist.portfolio_rating}</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
    </c:forEach> 
          </div>
          
             <div class="col-sm-12 col-lg-4">
            <!-- product card -->
          <c:forEach items="${portlist2}" var = "portlist2">
            <div class="product-item bg-light">
              <div class="card">
                <div class="thumb-content">
               
                  <a href="portlist.do"> 
                  <img class="card-img-top img-fluid" src="${portlist2.portfolio_Img}" alt="Card image cap" width="600px" height="400px">
                  </a>
                </div>
                <div class="card-body">
                  <h4 class="card-title"><a href="portlist.do">${portlist2.portfolio_bCat}</a></h4>
                  <ul class="list-inline product-meta">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-folder-open-o"></i>${portlist2.portfolio_sCat}</a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-calendar"></i>${portlist2.portfolio_term}</a></li>
                  </ul>
                  <p class="card-text">${portlist2.portfolio_content}</p>
                  <div class="product-ratings">
                    <ul class="list-inline">
                    <li class="list-inline-item selected"><i class="fa fa-star"></i>${portlist2.portfolio_rating}</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
    </c:forEach> 
          </div>
          
             <div class="col-sm-12 col-lg-4">
            <!-- product card -->
          <c:forEach items="${portlist3}" var = "portlist3">
            <div class="product-item bg-light">
              <div class="card">
                <div class="thumb-content">
                
                  <a href="portlist.do"> 
                  <img class="card-img-top img-fluid" src="${portlist3.portfolio_Img}" alt="Card image cap" width="600px" height="400px">
                  </a>
                </div>
                <div class="card-body">
                  <h4 class="card-title"><a href="portlist.do">${portlist3.portfolio_bCat}</a></h4>
                  <ul class="list-inline product-meta">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-folder-open-o"></i>${portlist3.portfolio_sCat}</a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-calendar"></i>${portlist3.portfolio_term}</a></li>
                  </ul>
                  <p class="card-text">${portlist3.portfolio_content}</p>
                  <div class="product-ratings">
                    <ul class="list-inline">
                    <li class="list-inline-item selected"><i class="fa fa-star"></i>${portlist3.portfolio_rating}</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
    </c:forEach> 
          </div>
              <div class="col-sm-12 col-lg-4">
            <!-- product card -->
          <c:forEach items="${portlist4}" var = "portlist4">
            <div class="product-item bg-light">
              <div class="card">
                <div class="thumb-content">
                  <!-- <div class="price">$200</div> -->
                  <a href="portlist.do"> 
                  <img class="card-img-top img-fluid" src="${portlist4.portfolio_Img}" alt="Card image cap" width="600px" height="400px">
                  </a>
                </div>
                <div class="card-body">
                  <h4 class="card-title"><a href="portlist.do">${portlist4.portfolio_bCat}</a></h4>
                  <ul class="list-inline product-meta">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-folder-open-o"></i>${portlist4.portfolio_sCat}</a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-calendar"></i>${portlist4.portfolio_term}</a></li>
                  </ul>
                  <p class="card-text">${portlist4.portfolio_content}</p>
                  <div class="product-ratings">
                    <ul class="list-inline">
                    <li class="list-inline-item selected"><i class="fa fa-star"></i>${portlist4.portfolio_rating}</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
    </c:forEach> 
          </div>
            
          
          
          
          
        </div>
      </div>
    </div>
  </div>
</section>


<!-------------------------        카테고리 목록                  ------------------------->

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
        
          <!-- /Category List -->
          <!-- Category list -->
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-laptop icon-bg-2"></i>
                <h4>IT·프로그래밍</h4>
              </div>
              <ul class="category-list">
                <li><a href="webCategory.do">web<span>${a}</span></a></li>
            
              </ul>
            </div>
          </div>
          
          <!-- /Category List -->
          <!-- Category list -->
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-camera icon-bg-3" aria-hidden="true"></i>
                <h4>모바일앱</h4>
              </div>
              <ul class="category-list">
                <li><a href="appCategory.do">app<span>${b}</span></a></li>
               
              </ul>
            </div>
          </div>
            <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-paint-brush icon-bg-1" aria-hidden="true"></i>
                <h4>디자인</h4>
              </div>
              <ul class="category-list">
                <li><a href="designCategory.do">design<span>${c}</span></a></li>      
              </ul>
            </div>
          </div>
          <!-- /Category List -->
          <!-- Category list -->
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-shopping-basket icon-bg-4"></i>
                <!-- 아이콘 -->
                <h4>사진</h4>
              </div>
              <ul class="category-list">
                <li><a href="photoCategory.do">photo <span>${d}</span></a></li>
              

              </ul>
            </div>
          </div>
          <!-- /Category List -->
        <!--   
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-building icon-bg-5" aria-hidden="true"></i>
                <h4>취업</h4>
              </div>
              <ul class="category-list">
                <li><a href="#">직무 멘토링 <span>0</span></a></li>
                <li><a href="#">자소서·이력서(국내기업)<span>0</span></a></li>
                <li><a href="#">자소서·이력서(외국기업)<span>0</span></a></li>
                <li><a href="#">자소서(입시·기타)<span>0</span></a></li>
              </ul>
            </div>
          </div>
          /Category List
          Category list
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-pencil icon-bg-6"></i>
                <h4>문서·글쓰기</h4>
              </div>
              <ul class="category-list">
                <li><a href="#">기업명·네이밍 <span>0</span></a></li>
                <li><a href="#">제품 카피라이팅<span>0</span></a></li>
                <li><a href="#">광고 카피라이팅 <span>0</span></a></li>
                <li><a href="#">마케팅 글작성<span>0</span></a></li>
              </ul>
            </div>
          </div>
          /Category List
          Category list
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-archive icon-bg-7"></i>
                <h4>주문제작</h4>
              </div>
              <ul class="category-list">
                <li><a href="#">인쇄 <span>0</span></a></li>
                <li><a href="#">간판 <span>0</span></a></li>
                <li><a href="#">3D프린팅 <span>0</span></a></li>
                <li><a href="#">기념품 제작<span>0</span></a></li>
              </ul>
            </div>
          </div>
          /Category List
          Category list
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">

              <div class="header">
                <i class="fa fa-bars icon-bg-8"></i>
                <h4>기타</h4>
              </div>
              <ul class="category-list">
                <li><a href="#">통역<span>0</span></a></li>
                <li><a href="#">비즈니스컨설팅 <span>0</span></a></li>
                <li><a href="#">레슨·실무교육 <span>0</span></a></li>
                <li><a href="#">운세·상담 <span>0</span></a></li>
              </ul>
            </div>
          </div>
          /Category List
 -->

        </div>
      </div>
    </div>
  </div>
  <!-- Container End -->
</section>


<!-------------------------        Call to Action        ------------------------->

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
<%@ include file="../../include/footer.jsp"%>
<%@ include file="../../include/style_js.jsp"%>
</body>
</html>

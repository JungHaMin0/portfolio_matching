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
  <!-- Container Start -->
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <!-- Advance Search -->
        <div class="advance-search">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-12 col-md-12 align-content-center">
                <form>
                  <div class="form-row">
                    <div class="form-group col-md-4">
                      <input type="text" class="form-control my-2 my-lg-1" id="inputtext4" placeholder="포트폴리오 주제">
                    </div>
                    <div class="form-group col-md-3">
                      <select class="w-100 form-control mt-lg-1 mt-md-2">
                        <option>필터</option>
                        <option value="1">별점순</option>
                        <option value="2">가격 높은순</option>
                        <option value="3">가격 낮은순</option>
                      </select>
                    </div>
                    <div class="form-group col-md-3">
                      <select class="w-100 form-control mt-lg-1 mt-md-2">
                        <option>카테고리</option>
                        <option value="1">Web</option>
                        <option value="2">App</option>
                        <option value="3">Photo</option>
                        <option value="4">Design</option>
                        <option value="5">Movie</option>
                      </select>
                    </div>
                    <div class="form-group col-md-2 align-self-center">
                      <button type="submit" class="btn btn-primary">검색하기</button>
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

<!-------------------------       client slide         ------------------------->


<!-------------------------       포트폴리오 목록                        ------------------------->

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
              <c:forEach items="${main}" var = "main">
              <div class="card">
                <div class="thumb-content">
                  <!-- <div class="price">$200</div> -->
                  <a href="category.do"> <img class="card-img-top img-fluid" src="${main.portfolio_thumbUrl}" alt="Card image cap" width="600px" height="400px">
                  </a>
                </div>
                <div class="card-body">
                  <h4 class="card-title"><a href="category.do"><c:out value="${main.portfolio_title}"/></a></h4>
                  <ul class="list-inline product-meta">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-folder-open-o"></i><c:out value="${main.portfolio_sCat}"/></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-calendar"></i><c:out value="${main.portfolio_term}"/></a></li>
                  </ul>
                  <p class="card-text"><c:out value="${main.portfolio_content}"/></p>
                  <div class="product-ratings">
                    <ul class="list-inline">
                      <li class="list-inline-item selected"><i class="fa fa-star"></i><c:out value="${main.portfolio_rating}"/></li>
                    </ul>
                  </div>
                </div>
                </c:forEach>
              </div>
            </div>
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
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-paint-brush icon-bg-1" aria-hidden="true"></i>
                <h4>디자인</h4>
              </div>
              <ul class="category-list">
                <li><a href="#">로고·브랜딩<span>0</span></a></li>
                <li><a href="#">상세·이벤트 페이지<span>0</span></a></li>
                <li><a href="#">인쇄·홍보물 <span>0</span></a></li>
                <li><a href="#">제품·패키지<span>0</span></a></li>
              </ul>
            </div>
          </div>
          <!-- /Category List -->
          <!-- Category list -->
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-laptop icon-bg-2"></i>
                <h4>IT·프로그래밍</h4>
              </div>
              <ul class="category-list">
                <li><a href="webCategory.do">웹사이트 개발<span>3</span></a></li>
                <li><a href="appCategory.do">앱 프로그래밍<span>1</span></a></li>
                <li><a href="#">모바일 앱<span>0</span></a></li>
                <li><a href="#">프로그램 개발<span>0</span></a></li>
              </ul>
            </div>
          </div>
          <!-- /Category List -->
          <!-- Category list -->
          <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
            <div class="category-block">
              <div class="header">
                <i class="fa fa-camera icon-bg-3" aria-hidden="true"></i>
                <h4>영상·사진</h4>
              </div>
              <ul class="category-list">
                <li><a href="#">영상찰영·편집<span>0</span></a></li>
                <li><a href="#">유튜브 제작 <span>0</span></a></li>
                <li><a href="#">애니메이션 <span>0</span></a></li>
                <li><a href="#">사진촬영<span>0</span></a></li>
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
                <h4>마케팅</h4>
              </div>
              <ul class="category-list">
                <li><a href="#">종합광고대행 <span>0</span></a></li>
                <li><a href="#">블로그·카페<span>0</span></a></li>
                <li><a href="#">SNS 마케팅<span>0</span></a></li>
                <li><a href="#">쇼핑몰·스토어<span>0</span></a></li>

              </ul>
            </div>
          </div>
          <!-- /Category List -->
          <!-- Category list -->
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
          <!-- /Category List -->
          <!-- Category list -->
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
          <!-- /Category List -->
          <!-- Category list -->
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
          <!-- /Category List -->
          <!-- Category list -->
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
          <!-- /Category List -->


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

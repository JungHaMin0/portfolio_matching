<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/style_css.jsp"%>

<style>
.category-list li:nth-of-type(1n+5) {
	display: none;
}
</style>
</head>
<!-------------------------       Hero area           ------------------------->
<body>
  <%@ include file="../../include/header.jsp"%>

  <section class="hero-area bg-1 text-center">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- Header Contetnt -->
          <div class="content-block">
            <h1>Buy &amp; Sell Near You</h1>
            <p>
              Join the millions who buy and sell from each other <br> everyday in local communities around the world
            </p>
            <div class="short-popular-category-list text-center">
              <h2>Popular Category</h2>
              <ul class="list-inline">
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-bed"></i> Hotel</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-grav"></i> Fitness</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-car"></i> Cars</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-cutlery"></i> Restaurants</a></li>
                <li class="list-inline-item"><a href="category.html"><i class="fa fa-coffee"></i> Cafe</a></li>
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
                      <div class="form-group col-md-3">
                        <select id="portfolio_category_main" class="w-100 form-control mt-lg-1 mt-md-2" style="display: none;" onchange="catChange(this)">
                          <c:forEach items="${categoryMainList}" var="categoryMainList">
                            <option value="${categoryMainList.id}">${categoryMainList.name}</option>
                          </c:forEach>
                        </select>
                      </div>
                      <div class="form-group col-md-3">
                        <select id="portfolio_category_sub" class="w-100 form-control mt-lg-1 mt-md-2" style="display: none;">
                          <c:forEach items="${categorySubListById}" var="categorySubListById">
                            <option value="${categorySubListById.id}" class="${categorySubListById.main_id}">${categorySubListById.name}</option>
                          </c:forEach>
                        </select>
                      </div>
                      <div class="form-group col-md-4">
                        <input type="text" class="form-control my-2 my-lg-1" id="inputtext4" placeholder="검색할 키워드를 입력하세요.">
                      </div>
                      <div class="form-group col-md-2 align-self-center">
                        <button type="submit" class="btn btn-primary w-100">검색하기</button>
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
  </section>

  <!-------------------------       client slide         ------------------------->


  <!-------------------------       포트폴리오 목록                        ------------------------->

  <section class="popular-deals section bg-gray">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-title">
            <h2>Trending Adds</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas, magnam.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- offer 01 -->
        <div class="col-lg-12">
          <div class="trending-ads-slide slick-initialized slick-slider">
            <div class="slick-list draggable">
              <div class="slick-track" style="opacity: 1; width: 4070px; transform: translate3d(-1480px, 0px, 0px); transition: transform 500ms ease 0s;">
                <div class="col-sm-12 col-lg-4 slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="./resources/images/products/products-2.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">Full Study Table Combo</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Furnitures</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="images/products/products-3.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">11inch Macbook Air</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Electronics</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="images/products/products-2.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">Full Study Table Combo</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Furnitures</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide" data-slick-index="0" aria-hidden="true" tabindex="0" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="0"> <img class="card-img-top img-fluid" src="images/products/products-1.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="0">11inch Macbook Air</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="0"><i class="fa fa-folder-open-o"></i>Electronics</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="0"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false" tabindex="0" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="0"> <img class="card-img-top img-fluid" src="images/products/products-2.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="0">Full Study Table Combo</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="0"><i class="fa fa-folder-open-o"></i>Furnitures</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="0"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-active" data-slick-index="2" aria-hidden="false" tabindex="0" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="0"> <img class="card-img-top img-fluid" src="images/products/products-3.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="0">11inch Macbook Air</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="0"><i class="fa fa-folder-open-o"></i>Electronics</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="0"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-active" data-slick-index="3" aria-hidden="false" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="images/products/products-2.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">Full Study Table Combo</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Furnitures</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-cloned" data-slick-index="4" aria-hidden="true" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="images/products/products-1.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">11inch Macbook Air</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Electronics</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-cloned" data-slick-index="5" aria-hidden="true" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="images/products/products-2.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">Full Study Table Combo</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Furnitures</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-cloned" data-slick-index="6" aria-hidden="true" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="images/products/products-3.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">11inch Macbook Air</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Electronics</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
                <div class="col-sm-12 col-lg-4 slick-slide slick-cloned" data-slick-index="7" aria-hidden="true" tabindex="-1" style="width: 370px;">
                  <!-- product card -->
                  <div class="product-item bg-light">
                    <div class="card">
                      <div class="thumb-content">
                        <!-- <div class="price">$200</div> -->
                        <a href="single.html" tabindex="-1"> <img class="card-img-top img-fluid" src="images/products/products-2.jpg" alt="Card image cap">
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title"><a href="single.html" tabindex="-1">Full Study Table Combo</a></h4>
                        <ul class="list-inline product-meta">
                          <li class="list-inline-item"><a href="single.html" tabindex="-1"><i class="fa fa-folder-open-o"></i>Furnitures</a></li>
                          <li class="list-inline-item"><a href="#" tabindex="-1"><i class="fa fa-calendar"></i>26th December</a></li>
                        </ul>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, aliquam!</p>
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
            <h2>카테고리 미리보기</h2>
            <p>더 많은 카테고리가 궁금하시면 더 보기를 눌러보세요!</p>
          </div>
          <div class="row">
            <!-- Category list -->
            <c:forEach items="${categoryMainList}" var="mainList">
              <div class="col-lg-3 offset-lg-0 col-md-5 offset-md-1 col-sm-6 col-6">
                <div class="category-block">
                  <div class="header-category text-center">
                    <h4>${mainList.name}</h4>
                  </div>
                  <ul class="category-list">
                    <c:forEach items="${categorySubList}" var="subList" varStatus="cnt">
                      <c:if test="${mainList.id == subList.main_id}">
                        <li><a href="portlist.do?main_id=${mainList.id}&id=${subList.id}">${subList.name}</a></li>
                      </c:if>
                    </c:forEach>
                  </ul>
                  <ul class="category-list text-center">
                    <li><a href="portlist.do?main_id=${mainList.id}&id=0">더 보기</a></li>
                  </ul>
                </div>
              </div>
            </c:forEach>
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
  <script>
			function catChange(o) {
				var mainId = o.value;

				$.ajax({
					url : "findCategorySub.do",
					data : {
						"param" : mainId
					},
					success : function(res) {
						var subList = eval(res.result);
						var cnt = res.cnt;

						var str = "";
						var niceStr = ""
						for (var i = 0; i < cnt; i++) {
							var list = subList[i];
							str += '<option value="' + list.id + '">'
									+ list.name + '</option>';
						}

						$("#portfolio_category_sub").html(str);
						$("#portfolio_category_sub").niceSelect('update');
					}
				});
			}
		</script>
</body>
</html>
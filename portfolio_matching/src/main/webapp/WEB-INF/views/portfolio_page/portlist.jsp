<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">
  <%@ include file="../../include/header.jsp"%>

  <section class="page-search">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- Advance Search -->
          <div class="advance-search">
            <div class="form-row">
              <div class="form-group col-md-3">
                <select id="portfolio_category_main" class="w-100 form-control my-2 my-lg-0" style="display: none;" onchange="catChange(this)">
                  <c:forEach items="${categoryMainList}" var="categoryMainList">
                    <c:if test="${categoryMainList.id eq scri.main_id}">
                      <option value="${categoryMainList.id}" selected>${categoryMainList.name}</option>
                    </c:if>
                    <c:if test="${categoryMainList.id ne scri.main_id}">
                      <option value="${categoryMainList.id}">${categoryMainList.name}</option>
                    </c:if>
                  </c:forEach>
                </select>
              </div>
              <div class="form-group col-md-3">
                <select id="portfolio_category_sub" class="w-100 form-control my-2 my-lg-0" style="display: none;">
                  <option value="0" class="0">전체</option>
                  <c:forEach items="${categorySubListById}" var="categorySubListById">
                    <c:if test="${categorySubListById.id eq scri.id}">
                      <option value="${categorySubListById.id}" class="${categorySubListById.main_id}" selected>${categorySubListById.name}</option>
                    </c:if>
                    <c:if test="${categorySubListById.id ne scri.id}">
                      <option value="${categorySubListById.id}" class="${categorySubListById.main_id}">${categorySubListById.name}</option>
                    </c:if>
                  </c:forEach>
                </select>
              </div>
              <div class="form-group col-md-4">
                <input type="text" id="keywordInput" name="keyword" value="${scri.keyword}" class="form-control my-2 my-lg-0" id="inputtext4" placeholder="검색할 키워드를 입력하세요.">
              </div>
              <div class="form-group col-md-2">
                <button type="button" id="searchBtn" class="btn btn-primary">검색하기</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section-sm">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="search-result bg-gray">
            <h2>${categoryMainGetOne.name}</h2>
            <c:choose>
              <c:when test="${empty categorySubGetOne}">
                <p>${categoryMainGetOne.name}>전체</p>
              </c:when>
              <c:otherwise>
                <p>${categoryMainGetOne.name}>${categorySubGetOne.name}</p>
              </c:otherwise>
            </c:choose>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3">
          <div class="category-sidebar">
            <div class="widget category-list">
              <h4 class="widget-header">${categoryMainGetOne.name}</h4>
              <ul class="category-list">
                <c:choose>
                  <c:when test="${empty categorySubGetOne.id}">
                    <li class="active"><a href="portlist.do?main_id=${categoryMainGetOne.id}&id=0">전체</a></li>
                  </c:when>
                  <c:otherwise>
                    <li><a href="portlist.do?main_id=${categoryMainGetOne.id}&id=0">전체</a></li>
                  </c:otherwise>
                </c:choose>
                <c:forEach items="${categorySubListById}" var="subList">
                  <c:choose>
                    <c:when test="${subList.id eq categorySubGetOne.id}">
                      <li class="active"><a href="portlist.do?main_id=${subList.main_id}&id=${subList.id}">${subList.name}</a></li>
                    </c:when>
                    <c:otherwise>
                      <li><a href="portlist.do?main_id=${subList.main_id}&id=${subList.id}">${subList.name}</a></li>
                    </c:otherwise>
                  </c:choose>
                </c:forEach>
              </ul>
            </div>

          </div>
        </div>
        <div class="col-md-9">
          <div class="category-search-filter">
            <div class="row">
              <div class="col-md-12">
                <strong>정렬</strong> <select style="display: none;">
                  <option>등록일순</option>
                  <option value="1">별점순</option>
                  <option value="2">낮은 가격순</option>
                  <option value="4">높은 가격순</option>
                </select>
                <div class="nice-select" tabindex="0">
                  <span class="current">등록일순</span>
                  <ul class="list">
                    <li data-value="Most Recent" class="option selected">등록일순</li>
                    <li data-value="1" class="option">별점순</li>
                    <li data-value="2" class="option">낮은 가격순</li>
                    <li data-value="4" class="option">높은 가격순</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="product-grid-list">
            <div class="row mt-30">
              <!-- product card -->
              <c:choose>
                <c:when test="${empty portfolioList}">
                  <div class="col-sm-12 text-center">
                    <h3 class="title">등록된 포트폴리오가 없습니다 !</h3>
                  </div>
                </c:when>

                <c:otherwise>
                  <c:forEach items="${portfolioList}" var="list">
                    <div class="col-sm-12 col-lg-4 col-md-6">
                      <div class="product-item bg-light">
                        <div class="card">
                          <div class="thumb-content">
                            <div class="price">${list.portfolio_price}&#8361;</div>
                            <a href="PortContent.do?portfolio_id=${list.portfolio_id}"> <img class="card-img-custom card-img-top img-fluid" src="data:image/jpeg;base64,<c:out value='${list.portfolio_Img}'/>" />
                            </a>
                          </div>
                          <div class="card-body">
                            <ul class="list-inline product-meta">
                              <li class="list-item"><i class="fa fa-user-o"></i> ${list.portfolio_userId}</li>
                              <li class="list-item"><a href="portlist.do?main_id=${mainList.id}&id=0"> <i class="fa fa-folder-open-o"></i> ${list.portfolio_category_main.name}
                              </a> > <a href="portlist.do?main_id=${list.portfolio_category_main.id}&id=${list.portfolio_category_sub.id}">${list.portfolio_category_sub.name}</a></li>
                              <li class="list-item"><a><i class="fa fa-calendar"></i> <fmt:formatDate pattern="yy-mm-dd" value="${list.portfolio_regDate}" /></a></li>
                            </ul>
                            <p class="card-text">
                              <c:choose>
                                <c:when test="${fn:length(list.portfolio_content) gt 20}">
                                  ${fn:substring(list.portfolio_content, 0, 17)}...
                            </c:when>
                                <c:otherwise>
                                  <div>${list.portfolio_content}</div>
                                </c:otherwise>
                              </c:choose>
                            </p>
                            <div class="product-ratings">
                              <ul class="list-inline">
                                <c:forEach begin="1" end="5" varStatus="stat">
                                  <c:choose>
                                    <c:when test="${stat.current le list.portfolio_rating}">
                                      <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                    </c:when>
                                    <c:otherwise>
                                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                    </c:otherwise>
                                  </c:choose>
                                </c:forEach>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </c:forEach>
                </c:otherwise>
              </c:choose>



            </div>
          </div>
          <div class="pagination justify-content-center">
            <nav aria-label="Page navigation example">
              <ul class="pagination">
                <c:if test="${pageMaker.prev}">
                  <c:if test="${empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                    </a></li>
                  </c:if>
                  <c:if test="${not empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.startPage - 1)}" aria-label="Previous"> <span aria-hidden="true">«</span> <span class="sr-only">Previous</span>
                    </a></li>
                  </c:if>
                </c:if>
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                  <c:if test="${empty categorySubGetOne}">
                    <c:if test="${pageMaker.cri.page eq idx}">
                      <li class="page-item active"><a class="page-link" href="portlist.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
                    </c:if>
                    <c:if test="${pageMaker.cri.page ne idx}">
                      <li class="page-item"><a class="page-link" href="portlist.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
                    </c:if>
                  </c:if>
                  <c:if test="${not empty categorySubGetOne}">
                    <c:if test="${pageMaker.cri.page eq idx}">
                      <li class="page-item active"><a class="page-link" href="portlist.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
                    </c:if>
                    <c:if test="${pageMaker.cri.page ne idx}">
                      <li class="page-item"><a class="page-link" href="portlist.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
                    </c:if>
                  </c:if>
                </c:forEach>
                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                  <c:if test="${empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
                    </a></li>
                  </c:if>
                  <c:if test="${not empty categorySubGetOne}">
                    <li class="page-item"><a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.endPage + 1)}" aria-label="Next"> <span aria-hidden="true">»</span> <span class="sr-only">Next</span>
                    </a></li>
                  </c:if>
                </c:if>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- JAVASCRIPTS -->
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

            var str = "<option value='0' class='0'>전체</option>";
            var niceStr = ""
            for (var i = 0; i < cnt; i++) {
              var list = subList[i];
              if(list.id == ${scri.id}) {
            	  str += '<option value="' + list.id + '" selected>' + list.name + '</option>';
              }
              str += '<option value="' + list.id + '">'
                  + list.name + '</option>';
            }

            $("#portfolio_category_sub").html(str);
            $("#portfolio_category_sub").niceSelect('update');
          }
        });
      }
      
      $(function(){
          $('#searchBtn').click(function() {
        	  var selectMain = $("#portfolio_category_main option:selected").val();
        	  var selectSub = $("#portfolio_category_sub option:selected").val();
            self.location = "portlist.do" + '${pageMaker.makeQuery(1)}' + "&main_id=" + selectMain + "&id=" + selectSub + "&keyword=" + encodeURIComponent($('#keywordInput').val());
          });
        });   
    </script>

</body>

</html>
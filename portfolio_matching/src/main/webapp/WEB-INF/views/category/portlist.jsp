<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <%@ include file="../../include/header.jsp"%>
<%@ include file="../../include/style_css.jsp"%>
</head>

<body class="body-wrapper">
 

	<section class="page-search">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Advance Search -->
					<div class="advance-search">
						<form>
							<div class="form-row">
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								<div class="form-group col-md-2">
									<select id="searchType" name="searchType">
										<option value="t">포트폴리오 제목</option>
											<option value="C">내용</option>
											<option value="id">작성자</option>
										</select>
								</div>	
								<div class="form-group col-md-2">
									<input class="form-control my-2 my-lg-0" type="text" id="keyword" name="keyword" 
										value="${pageMaker.cri.keyword}" placeholder="검색어를 입력하세요"/>
								</div>
								<div class="form-group col-md-3">

									<button type="submit" class="btn btn-primary">검색하기</button>
								</div>
								
							</div>
						</form>
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
						<h2>현재 누른 카테고리</h2>
						<p>세부카테고리</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="category-sidebar">
						<div class="widget category-list">
							<h4 class="widget-header">전체 카테고리</h4>
							<ul class="category-list">
							
								<li><a href="portlist.do">전체 <span>${a}</span></a></li>
								<li><a href="webCategory.do">웹사이트 개발 <span>${b}</span></a></li>
								<li><a href="appCategory.do">모바일 앱 <span>${c}</span></a></li>
								<li><a href="designCategory.do">디자인 <span>${d}</span></a></li>
								<li><a href="photoCategory.do">사진 <span>${e}</span></a></li>
								
							</ul>
						</div>

<!--  

						<div class="widget product-shorting">
							<h4 class="widget-header">팀 규모</h4>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									1인
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									2-4인
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									5-9인
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label">
									<input class="form-check-input" type="checkbox" value="">
									10인 이상
								</label>
							</div>
						</div>
-->
					</div>
				</div>
				<div class="col-md-9">
					<div class="category-search-filter">
						<div class="row">
							<div class="col-md-6">
								<strong>필터</strong>
								<select>
									<option>별점순</option>
									<!--  <option value="1">가장 가격 낮은</option>
									<option value="2">가장 많이 참여한</option>-->
								</select>
							</div>
						</div>
					</div>
					
					
					<div class="product-grid-list">
						<div class="row mt-30">
							<c:forEach items="${portlist}" var = "portlist">
						<%-- 	<c:forEach items="${portlist}" var = "result" varStatus="stauts"> --%>
							<div class="col-sm-12 col-lg-4 col-md-6">
								<!-- product card -->
								<div class="product-item bg-light">
								
									<div class="card">
										<div class="thumb-content">
											<!-- <div class="price">$200</div> -->
											<a href="portfolio_detail.do">
												<img class="card-img-top img-fluid" src="data:image/jpeg;base64,<c:out value='${portlist.portfolio_Img }'/>" />
											</a>
										</div>
										<a href="#" onClick='fn_view()'>
										<div class="card-body">
											<h4 class="card-title">
											<%-- <a href ="${path }/portfolio_page/portfolio_detail/${portlist.portfolio_id }">${portlist.portfolio_title}</a> --%>
											<a href="PortContent.do?portfolio_id=${portlist.portfolio_id}"><c:out value="${portlist.portfolio_title}"/></a></h4>
											<ul class="list-inline product-meta">
												<li class="list-inline-item">
													<a href="single.html"><i class="fa fa-folder-open-o"></i><c:out value="${portlist.portfolio_sCat}"/></a>
												</li>
												<li class="list-inline-item">
													<a href="#"><i class="fa fa-calendar"></i><c:out value="${portlist.portfolio_term}"/></a>
												</li>
											</ul>
											<p class="card-text"><c:out value="${portlist.portfolio_content}"/></p>
											<div class="product-ratings">
												<ul class="list-inline">
													<li class="list-inline-item selected"><i class="fa fa-star"></i><c:out value="${portlist.portfolio_rating}" /></li>
												</ul>
											</div>
										</div>
										</a>
									</div>
									</div>
								</div>
								</c:forEach>
							</div>
					
							<div class="pagination justify-content-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
	
							<!-- 이전 -->
								<li class="page-item">
								 <c:choose>
              							 <c:when test="${pageMaker.prev} ">    
									<a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.startPage-1)}" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
									</a>
									 </c:when>
									  <c:otherwise>                   
                        			<a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.startPage-1)}" aria-label="Previous">
                        				<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
                       				 </a>
                					</c:otherwise>
            					</c:choose>
								</li>	
								    <!-- 페이지 번호 -->
								 <c:forEach var="idx" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                   					<li class="page-item"> <a class="page-link"href="portlist.do${pageMaker.makeSearch(idx)}"> ${idx} </a> </li>
                   								      
            					</c:forEach>

     								<!-- 이후 -->
								<li class="page-item">
								 <c:choose>
               						 <c:when test="${pageMaker.next}">
                        				<a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.endPage+1)}" aria-label="Next">
                        					<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
                      					</a>
                      				</c:when>
                      				<c:otherwise>
                      					<a class="page-link" href="portlist.do${pageMaker.makeSearch(pageMaker.endPage+1)}" aria-label="Next">
                        					<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
                      					</a>
                      				</c:otherwise>
                      			</c:choose>
								</li>
							</ul>
						</nav>
					</div>
					
					
				</div>
			</div>
			
		</div>
	</section>



<script>

//content 상세보기
/* function fn_view(portfolio_id){

  var form = document.getElementById("viewForm");
  var url = "<c:url value='/PortContent.do'/>";
  url = url + "?portfolio_id=" + portfolio_id;
  form.action = url;    
  form.submit(); 
} */

</script>


<!-- JAVASCRIPTS -->
<%@ include file="../../include/footer.jsp"%>
<%@ include file="../../include/style_js.jsp"%>

<script>
$(function(){   
    $('.disabled').on('click', function(event){
        event.preventDefault();
    }); 
    /* 검색 버튼 클릭 이벤트 핸들러 */
    $('#searchBtn').on("click", function(event){        
        // 검색옵션 값 가져오고
        var searchType = $("select[name=searchType]").val();        
        // 키워드 값 가져와서
        var keyword = $("input[name=keyword]").val();       
        self.location = "portlist.do${pageMaker.makeQuery(1)}&searchType=" + searchType + "&keyword=" + encodeURI(keyword);
    });//on()       
});
</script>


</body>

</html>
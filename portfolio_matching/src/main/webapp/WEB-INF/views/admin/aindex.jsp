<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<%@ include file="../../include/adminstyle_css.jsp"%>
<title>관리자 페이지</title>
</head>
<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
    <!-- sidebar -->
    <%@ include file="../../include/adminSidebar.jsp"%>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <%@ include file="../../include/adminTopbar.jsp"%>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">대쉬보드</h1>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">수익현황(10월)</div>
                      <c:forEach items="${dealcnt}" var="dealcnt">
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${dealcnt.dcnt} 원</div>
                      </c:forEach>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>

                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">방문자 (14일)</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">8</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">포트폴리오 수</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                        	<c:forEach items="${pcnt}" var="pcnt">
                          		<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${pcnt.pcnt}</div>
                          	</c:forEach>
                        </div>

                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">문의</div>
                      <c:forEach items="${acntlist}" var="acntlist">
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${acntlist.acnt}</div>
                      </c:forEach>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Content Row -->

          <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">수익현황</h6>
<!--                   <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div> -->
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">포트폴리오 구매자·판매자</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <!-- <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div> -->
                  </div>
                </div>
                
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-pie pt-4 pb-2">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <div class="mt-4 text-center small">
                    <span class="mr-2"> <i class="fas fa-circle text-primary"></i> 구매자
                    </span> <span class="mr-2"> <i class="fas fa-circle text-success"></i> 판매자
                    </span>
                  </div>
                </div>
                
              </div>
            </div>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">

              <!-- Project Card Example -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">카테고리</h6>
                </div>
                <div class="card-body">
                
                  <c:forEach items="${portcate}" var="portcate">
                  <h4 class="small font-weight-bold">
                  <c:choose>
               	   <c:when test="${portcate.portfolio_category_main eq 1}">IT 프로그래밍</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 2}">디자인</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 3}">영상, 사진, 음향</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 4}">마케팅</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 5}">번역 및 통역</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 6}">문서</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 7}">비지니스 컨설팅</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 8}">주문 제작</c:when>
                  </c:choose>
                  <span class="float-right">${portcate.score}%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar" role="progressbar" style="width: ${portcate.score}%; background-color:
                    <c:choose>
               	   <c:when test="${portcate.portfolio_category_main eq 1}">#f6e58d</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 2}">#ff7979</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 3}">#686de0</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 4}">#bee3c5</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 5}">#7ed6df</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 6}">#e056fd</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 7}">#95afc0</c:when>
               	   <c:when test="${portcate.portfolio_category_main eq 8}">#eb4d4b</c:when>
                  </c:choose>;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  </c:forEach>
                  
                </div>
              </div>

              <!-- Color System -->
              <h5>카테고리 별 게시글 수</h5>
              <div class="row">
                <c:forEach items="${portcnt}" var="portcnt">
                <div class="col-lg-6 mb-4">
                  <div class="card bg-primary text-white shadow">
                    <div class="card-body" style="background-color:
                   <c:choose>
               	   <c:when test="${portcnt.portfolio_category_main eq 1}">#f6e58d</c:when>
               	   <c:when test="${portcnt.portfolio_category_main eq 2}">#ff7979</c:when>
               	   <c:when test="${portcnt.portfolio_category_main eq 3}">#686de0</c:when>
               	   <c:when test="${portcnt.portfolio_category_main eq 4}">#bee3c5</c:when>
               	   <c:when test="${portcnt.portfolio_category_main eq 5}">#7ed6df</c:when>
               	   <c:when test="${portcnt.portfolio_category_main eq 6}">#e056fd</c:when>
               	   <c:when test="${portcnt.portfolio_category_main eq 7}">#95afc0</c:when>
               	   <c:when test="${portcnt.portfolio_category_main eq 8}">#eb4d4b</c:when>
                  </c:choose>;">
                   	<c:choose>
	               	   <c:when test="${portcnt.portfolio_category_main eq 1}">IT 프로그래밍</c:when>
	               	   <c:when test="${portcnt.portfolio_category_main eq 2}">디자인</c:when>
	               	   <c:when test="${portcnt.portfolio_category_main eq 3}">영상, 사진, 음향</c:when>
	               	   <c:when test="${portcnt.portfolio_category_main eq 4}">마케팅</c:when>
	               	   <c:when test="${portcnt.portfolio_category_main eq 5}">번역 및 통역</c:when>
	               	   <c:when test="${portcnt.portfolio_category_main eq 6}">문서</c:when>
	               	   <c:when test="${portcnt.portfolio_category_main eq 7}">비지니스 컨설팅</c:when>
	               	   <c:when test="${portcnt.portfolio_category_main eq 8}">주문 제작</c:when>
                 	</c:choose>
                      <div class="text-white-50 small">${portcnt.cnt}</div>
                    </div>
                  </div>
                </div>
               </c:forEach>
              </div>

            </div>

            <div class="col-lg-6 mb-4">

                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTable</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" width="100%" cellspacing="0">
                                    <thead>
										<tr>
                                            <th>작성자</th>
                                            <th>제목</th>
                                            <th>내   용</th>
                                            <th>카테고리</th>
                                            <th>가   격</th>
                                            <th>별   점</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${topport}" var="topport">
                                        <tr>
                                            <td>${topport.portfolio_userId}</td>
                                            <td>
	                                            <c:choose>
						                            <c:when test="${fn:length(topport.portfolio_title) gt 10}">
						                                  <a href="PortContent.do?portfolio_id=${topport.portfolio_id}" target="_blank">${fn:substring(topport.portfolio_title, 0, 15)}...</a>
						                            </c:when>
						                            <c:otherwise>
						                              <div><a href="PortContent.do?portfolio_id=${topport.portfolio_id}" target="_blank">${topport.portfolio_title}</a></div>
						                            </c:otherwise>
												</c:choose>
				                          	</td>
                                            <td>
   		                                        <c:choose>
						                            <c:when test="${fn:length(topport.portfolio_content) gt 5}">
						                                  <div target="_blank" class="text-right">${fn:substring(topport.portfolio_content, 0, 10)}...</div>
						                            </c:when>
						                            <c:otherwise>
						                            	<div class="text-right">${topport.portfolio_content}</div>
						                            </c:otherwise>
												</c:choose>
                                            </td>
                                            <td class="text-center">${topport.portfolio_category_main}</td>
                                            <td class="text-right">${topport.portfolio_price} 원</td>
                                            <td class="text-right">${topport.portfolio_rating}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <a href="adminPortfolio.do" style="margin-left: 795px; margin-bottom: 10px; margin-top: 0px;">더보기</a>
                    </div>
                    
                </div>

        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <%@ include file="../../include/adminFooter.jsp"%>

      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.do">Logout</a>
        </div>
      </div>
    </div>
  </div>
   <%@ include file="../../include/adminstyle_js.jsp"%>
	<!-- 	<script>
  $(function () {
		$('[data-toggle="tooltip"]').tooltip()
	}) -->
	<script>
	var ctx = document.getElementById("myAreaChart");
	var myLineChart = new Chart(ctx, {
	  type: 'line',
	  data: {
	    labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
	    datasets: [{
	      label: "수익",
	      lineTension: 0.3,
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: [	
	    	<c:forEach items="${dealChart}" var="dc">
	    		${dc.dealsum},
			</c:forEach>
	  	],
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    layout: {
	      padding: {
	        left: 10,
	        right: 25,
	        top: 25,
	        bottom: 0
	      }
	    },
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: false,
	          drawBorder: false
	        },
	        ticks: {
	          maxTicksLimit: 12
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          maxTicksLimit: 5,
	          padding: 10,
	          // Include a dollar sign in the ticks
	          callback: function(value, index, values) {
	            return '$' + number_format(value);
	          }
	        },
	        gridLines: {
	          color: "rgb(234, 236, 244)",
	          zeroLineColor: "rgb(234, 236, 244)",
	          drawBorder: false,
	          borderDash: [2],
	          zeroLineBorderDash: [2]
	        }
	      }],
	    },
	    legend: {
	      display: false
	    },
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      titleMarginBottom: 10,
	      titleFontColor: '#6e707e',
	      titleFontSize: 14,
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      intersect: false,
	      mode: 'index',
	      caretPadding: 10,
	      callbacks: {
	        label: function(tooltipItem, chart) {
	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
	        }
	      }
	    }
	  }
	});
	</script>
	
</body>
</html>

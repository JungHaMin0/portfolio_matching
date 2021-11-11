<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
  <%@ include file="../../include/adminstyle_css.jsp"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>관리자 페이지</title>
</head>

<body id="page-top">
  <%@ include file="../../include/adminstyle_css.jsp"%>
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
                      <div class="h5 mb-0 font-weight-bold text-gray-800">$4,560,000</div>
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
                      <div class="h5 mb-0 font-weight-bold text-gray-800">456</div>
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
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">최근 포트폴리오 수</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">456</div>
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
                      <div class="h5 mb-0 font-weight-bold text-gray-800">456</div>
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
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
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
                  <h4 class="small font-weight-bold">Web <span class="float-right">60%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 60%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">App <span class="float-right">10%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 10%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">photo<span class="float-right">5%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar" role="progressbar" style="width: 5%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">ppt <span class="float-right">20%</span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">etc <span class="float-right">5%</span></h4>
                  <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 5%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>

              <!-- Color System -->
              <h5>카테고리 별 게시글 수</h5>
              <div class="row">
                <div class="col-lg-6 mb-4">
                  <div class="card bg-primary text-white shadow">
                    <div class="card-body">
                      Web
                      <div class="text-white-50 small">1021</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-success text-white shadow">
                    <div class="card-body">
                      App
                      <div class="text-white-50 small">551</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-info text-white shadow">
                    <div class="card-body">
                      Photo
                      <div class="text-white-50 small">31</div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 mb-4">
                  <div class="card bg-warning text-white shadow">
                    <div class="card-body">
                      ppt
                      <div class="text-white-50 small">124</div>
                    </div>
                  </div>
                </div>

              </div>

            </div>

            <div class="col-lg-6 mb-4">

              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">최신 거래 내역</h6>
                </div>
                <div class="card-body">
                  <div class="card-item-first">
                    <span style="margin-right: 50px; color: #000;">판매자</span> <span style="margin-right: 50px; color: #000;">판매자ID</span> <span style="margin-right: 50px; color: #000;">구매자</span> <span style="margin-right: 50px; color: #000;">구매자ID</span> <span style="margin-right: 50px; color: #000;">카테고리</span> <span style="margin-right: 50px; color: #000;">가격</span> <span style="margin-right: 50px; color: skyblue;">게시글</span> <span style="margin-right: 50px; color: #000;">수익(만원)</span>
                  </div>

                  <div class="card-item">
                    <span style="margin-right: 50px;">정하민</span> <span style="margin-right: 48px;">gkals123</span> <span style="margin-right: 46px;">이정원</span> <span style="margin-right: 50px;">wjddnjs123</span> <span style="margin-right: 47px;">WEB</span> <span style="margin-right: 38px;">1000만원</span> <span style="margin-right: 65px; color: skyblue; cursor: pointer;">link</span> <span style="margin-right: 50px;">50</span>
                  </div>

                  <div class="card-item">
                    <span style="margin-right: 41px;">정하민2</span> <span style="margin-right: 48px;">gkals124</span> <span style="margin-right: 37px;">이정원2</span> <span style="margin-right: 50px;">wjddnjs124</span> <span style="margin-right: 61px;">APP</span> <span style="margin-right: 39px;">500만원</span> <span style="margin-right: 65px; color: skyblue; cursor: pointer;">link</span> <span style="margin-right: 50px;">25</span>
                  </div>

                  <div class="card-item">
                    <span style="margin-right: 40px;">정하민3</span> <span style="margin-right: 50px;">gkals125</span> <span style="margin-right: 37px;">이정원3</span> <span style="margin-right: 50px;">wjddnjs125</span> <span style="margin-right: 62px;">PPT</span> <span style="margin-right: 40px;">200만원</span> <span style="margin-right: 65px; color: skyblue; cursor: pointer;">link</span> <span style="margin-right: 50px;">5</span>
                  </div>

                  <div class="card-item">
                    <span style="margin-right: 50px;">정다윤</span> <span style="margin-right: 45px;">ekdbs123</span> <span style="margin-right: 48px;">김영우</span> <span style="margin-right: 50px;">duddn123</span> <span style="margin-right: 56px;">PHOTO</span> <span style="margin-right: 40px;">20만원</span> <span style="margin-right: 65px; color: skyblue; cursor: pointer;">link</span> <span style="margin-right: 50px;">2</span>
                  </div>

                  <div class="card-item">
                    <span style="margin-right: 40px;">정다윤2</span> <span style="margin-right: 46px;">ekdbs124</span> <span style="margin-right: 37px;">김영우2</span> <span style="margin-right: 60px;">duddn124</span> <span style="margin-right: 45px;">WEB</span> <span style="margin-right: 40px;">3000만원</span> <span style="margin-right: 65px; color: skyblue; cursor: pointer;">link</span> <span style="margin-right: 50px;">100</span>
                  </div>

                  <div class="card-item">
                    <span style="margin-right: 40px;">정다윤3</span> <span style="margin-right: 46px;">ekdbs125</span> <span style="margin-right: 37px;">김영우3</span> <span style="margin-right: 63px;">duddn125</span> <span style="margin-right: 70px;">PPT</span> <span style="margin-right: 40px;">10만원</span> <span style="margin-right: 65px; color: skyblue; cursor: pointer;">link</span> <span style="margin-right: 50px;">1</span>
                  </div>


                </div>
              </div>

              <!-- Approach -->


            </div>
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
</body>

</html>

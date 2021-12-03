<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

  <!-- Sidebar -->
  <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="aindex.do">
      <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-laugh-wink"></i>
      </div>
      <div class="sidebar-brand-text mx-3">포매 Admin</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active"><a class="nav-link" href="aindex.do"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">Interface</div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> 
    <i class="fas fa-fw fa-cog"></i> 
    <span>고객관리</span>
    </a>
    
      <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <h6 class="collapse-header">정보</h6> 
          <a class="collapse-item" href="adminMember.do">고객정보 </a> 
          <a class="collapse-item" href="adminPur.do">거래 내역</a> 
          <a class="collapse-item" href="reviewlist.do">리뷰관리</a> 
          <a class="collapse-item" href="adminStat.do">수익 현황</a> 
        </div></li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities"> 
    <i class="fas fa-fw fa-wrench"></i> 
    <span>포트폴리오 관리</span>
    </a>
      <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <h6 class="collapse-header">포트폴리오</h6> 
          <a class="collapse-item" href="adminPortfolio.do">포트폴리오 정보</a>
        </div>
      </div></li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">포매(주)</div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages"> 
    <i class="fas fa-fw fa-folder"></i> 
    <span>모든 정보</span>
    </a>
      <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <h6 class="collapse-header">All</h6> 
          <a class="collapse-item" href="adminStatPortfolio.do">정보 현황</a>
        </div>
      </div></li>


    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <!-- End of Sidebar -->

</body>
</html>
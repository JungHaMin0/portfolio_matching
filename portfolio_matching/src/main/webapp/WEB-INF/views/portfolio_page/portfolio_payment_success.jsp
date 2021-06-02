<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../../include/style_css.jsp"%>
<style>
	#btn1{
	border-top-left-radius: 5px; 
	border-bottom-left-radius: 5px; 
	margin-right:-4px;
	border: 1px solid #DDA0DD;
 	background-color: rgba(0,0,0,0); 
 	color: #DDA0DD; padding: 5px;
	}
	#btn_group button:hover{ 
	color:white; 
	background-color: #DDA0DD; 
	}
</style>
</head>

    
<body>
<%@ include file="../../include/header.jsp"%>
<section class="section">
    <div class="container">
                <div class="about-content" align="center">
                    <h3 class="font-weight-bold"  style="color:#DDA0DD">포매</h3>
                    <br>
                  <p class="text-lowercase">거래가 정상적으로 완료되었습니다.</p>
                   <p class="text-lowercase">저희 포매를 이용해서 주셔서 감사합니다♥</p>
                 <div id="btn_group">
                   <button type="button" id="btn1" onclick="location.href='index.do'"class="btn btn-outline-primary">메인으로</button>
					</div>
					</div>   
    </div>
</section>
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/style_css.jsp"%>
<%@ include file="../../include/header.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#btn1{
	border-top-left-radius: 5px; 
	border-bottom-left-radius: 5px; 
	margin-right:-4px;
	border: 1px solid #DDA0DD;
 	background-color: rgba(0,0,0,0); 
 	color: #DDA0DD; padding: 5px;
	}
	#btn_group button:hover{ 
	color:white; 
	background-color: #DDA0DD; 
	}
</style>
</head>
<body>
<section class="section">
    <div class="container">
                <div class="about-content" align="center">
                    <h3 class="font-weight-bold"  style="color:#DDA0DD">포매</h3>
                    <br>
                  <p class="text-lowercase">거래가 정상적으로 완료되었습니다.</p>
                   <p class="text-lowercase">저희 포매를 이용해서 주셔서 감사합니다♥</p>
                 <div id="btn_group">
                   <button type="button" id="btn1" onclick="location.href='index.do'"class="btn btn-outline-primary">메인으로</button>
					</div>
					</div>   
    </div>
</section>
  <%@ include file="../../include/footer.jsp"%>
  <%@ include file="../../include/style_js.jsp"%>
</body>
>>>>>>> refs/heads/hamin
</html>
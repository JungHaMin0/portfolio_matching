<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../../include/style_css.jsp"%>
</head>
<body class="body-wrapper">
  <div class="col-md-12">
    <div class="widget dashboard-container">
      <h3 class="widget-header text-center">파일 다운로드</h3>

      <form name="readForm" role="form" method="post">
        <input type="hidden" id="file_id" name="file_id" value=""> 
        <fieldset class="p-4">
          <div class="form-group">
            <div class="row">
              <div class="col-lg-12 pt-2">
                <label>파일 목록</label>
                <c:choose>
                  <c:when test="${file == null}">
                    <div class="form-group text-center">
                      <h3>파일이 없습니다.</h3>
                    </div>
                  </c:when>
                  <c:otherwise>
                    <div class="form-group">
                      <c:forEach items="${file}" var="file">
                        <a href="#" onclick="fn_fileDown('${file.file_id}'); return false;">${file.file_org_name}</a>(${file.file_size}KB)<br>
                      </c:forEach>
                    </div>
                  </c:otherwise>
                </c:choose>
              </div>
            </div>
          </div>
          <hr />
        </fieldset>
      </form>

    </div>
  </div>
  <%@ include file="../../include/style_js.jsp"%>
  <script>
    function fn_fileDown(fileNo){
  		var formObj = $("form[name='readForm']");
  		$("#file_id").attr("value", fileNo);
  		formObj.attr("action", "pmFileDown.do");
  		formObj.submit();
  	}
  </script>
  
</body>

</html>
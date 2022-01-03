<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="service_error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>service:edit</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">

</head>
<body>


<div class="page-header">
<h1>ServcieOP <small>공통 코드 변경</small></h1>
</div>

<a href="service_list.do" class="btn btn-default btn-lg">공통 코드 리스트로</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>


<div style="margin:0 auto; width: 500px;">

<form method=post action="edit_service.do" id="editFrm">
  <div class="form-group">
    <input type="hidden" name="comIndex" id="comIndex" value="${cvo.comIndex}">
    <label class="control-label" for="cId">그룹코드*</label>
    <input type="text" class="form-control" name="ComId" id="ComId" value="${cvo.comId}" placeholder="공통 그룹">
  </div>
  <div class="form-group">
    <label for="cKey" class="control-label">코드 key</label>
    <input type="text" class="form-control" name="ComKey" id="ComKey" value="${cvo.comKey}" placeholder="공통 Key">
  </div>
  <div class="form-group">
    <label for="cValue" class="control-label">코드 값</label>
    <input type="text" class="form-control" name="ComValue" id="ComValue" value="${cvo.comValue}" placeholder="공통 값">
  </div>    
  <div class="form-group">
    <input type="button" class="btn btn-default btn-lg btn-block" value="변경하기" />  
  </div>
</form>
</div>


<div class="page-header">
</div>
<h1>ServcieOP <small>고객 변경</small></h1>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>




</body>
</html>
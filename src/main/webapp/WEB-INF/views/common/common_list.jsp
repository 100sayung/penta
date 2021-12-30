<%@page import="com.penta.common.CommonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="common_error.jsp" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>common:list</title>
</head>


<body>
<div class="page-header">
  <h1>ServcieOP <small>공통 Code 값</small></h1>
</div>
<a href="common_form.do" class="btn btn-default btn-lg">공통 코드 등록</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>

<form>
<table class="table table-striped">
  <thead>
    <tr>
      <th></th>
      <th>공통key</th>
      <th>공통Value</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${list}" var="co">
    <tr>
      <td><input type="hidden" value="${co.comIndex}" readonly></td>
      <td>${co.comKey}</td>
      <td>${co.comValue}</td>
     
      <td>
          <input type="button" class="btn btn-default" onclick="location.href='common_edit.do?cidx=${co.comIndex}'" value="변경">
          <input type="button" class="btn btn-default" onclick="location.href='delete_common.do?cidx=${co.comIndex}'" value="삭제">
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</form>

<div class="page-header">
</div>

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

</body>
</html>
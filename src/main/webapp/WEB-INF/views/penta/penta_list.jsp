<%@page import="com.penta.penta.PentaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="penta_error.jsp" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SO:팀원list</title>
</head>

<body>
<div class="page-header">
  <h1>ServcieOP <small>팀원 리스트</small></h1>
</div>
<a href="penta_form.do" class="btn btn-default btn-lg">팀원 등록</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>

<form>
<table class="table table-striped">
  <thead>
    <tr>
      <th></th>      
      <th>아이디</th>
      <th>이름</th>
      <th>직급</th>
      <th>핸드폰</th>
      <th>이메일</th>
      <th>구분</th>
      <th>메모</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${list}" var="p">
    <tr>
      <td><input type="hidden" value="${p.PIndex}" readonly></td>
      <td>${p.PId}</td>
      <td>${p.PName}</td>
      <td>${p.PRank}</td>
      <td>${p.PHp}</td>
      <td>${p.PEmail}</td>
      <td>${p.PType}</td>      
      <td>${p.PMemo}</td>     
      <td><input type="button" class="btn btn-default" onclick="location.href='penta_edit.do?pIndex=${p.PIndex}'" value="변경">
        <input type="button" class="btn btn-default" onclick="location.href='delete_penta.do?pIndex=${p.PIndex}'" value="삭제" ></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</form>




<div class="page-header">
</div>
<h1>ServcieOP <small>고객 리스트</small></h1>

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

</body>
</html>
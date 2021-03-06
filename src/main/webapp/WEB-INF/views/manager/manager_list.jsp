<%@page import="com.penta.manager.ManagerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="manager_error.jsp" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SO:list</title>
</head>


<body>
<div class="page-header">
  <h1>ServcieOP <small>담당자 리스트</small></h1>
</div>
<a href="manager_form.do" class="btn btn-default btn-lg">고객 등록</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>

<form>
<table class="table table-striped">
  <thead>
    <tr>
      <th></th>
      <th>회사</th>
      <th>아이디</th>
      <th>이름</th>
      <th>주소</th>
      <th>핸드폰</th>
      <th>연락처</th>
      <th>이메일</th>
      <th>업무</th>
      <th>실제 근무지</th>
      <th>실제 이메일</th>
      <th>메모</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${list}" var="m">
    <tr>
      <td><input type="hidden" value="${m.mIndex}" readonly></td>
      <td>${m.mCom}</td>
      <td>${m.mId}</td>
      <td>${m.mName}</td>
      <td>${m.mAddr}</td>
      <td>${m.mHp}</td>
      <td>${m.mTel}</td>
      <td>${m.mEmail}</td>
      <td>${m.mTask}</td>
      <td>${m.mWorkcom}</td>
      <td>${m.mWorkemail}</td>
      <td>${m.mMemo}</td>
     
      <td><input type="button" class="btn btn-default" onclick="location.href='manager_edit.do?cidx=${m.mIndex}'" value="변경"><input type="button" class="btn btn-default" onclick="location.href='delete_manager.do?cidx=${m.mIndex}'" value="삭제" ></td>
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